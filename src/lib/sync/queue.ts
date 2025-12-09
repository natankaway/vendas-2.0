/**
 * Sistema de Fila de Sincronização
 *
 * Gerencia operações pendentes que precisam ser sincronizadas com o Supabase.
 *
 * Fluxo:
 * 1. Operação local acontece → addToQueue()
 * 2. Registro é criado na fila com status 'pending'
 * 3. Quando online → processQueue() processa itens pendentes
 * 4. Sucesso → marca como 'completed'
 * 5. Falha → incrementa tentativas, agenda próxima tentativa
 * 6. Conflito → move para sync_conflicts
 */

import { v4 as uuidv4 } from 'uuid';
import { getSqliteDb, getSqliteClient } from '@/lib/db';
import {
  syncQueueLocal,
  type NewSyncQueueLocal,
  type SyncQueueLocal,
} from '@/lib/db/schema/sqlite-schema';
import { eq, and, lt, or, isNull, asc, desc } from 'drizzle-orm';

// =============================================================================
// TIPOS
// =============================================================================

export type SyncOperation = 'create' | 'update' | 'delete';
export type SyncStatus = 'pending' | 'syncing' | 'completed' | 'failed' | 'conflict';

export interface QueueItem {
  id: string;
  entityType: string;
  entityId: string;
  operation: SyncOperation;
  data: Record<string, unknown>;
  status: SyncStatus;
  priority: number;
  attempts: number;
  maxAttempts: number;
  lastAttemptAt: string | null;
  nextAttemptAt: string | null;
  errorMessage: string | null;
  createdAt: string;
}

export interface AddToQueueOptions {
  priority?: number; // Maior = mais prioritário
  maxAttempts?: number;
}

// =============================================================================
// PRIORIDADES DE SINCRONIZAÇÃO
// =============================================================================

/**
 * Prioridades por tipo de entidade
 *
 * Vendas têm maior prioridade porque afetam estoque e financeiro.
 * Usuários têm prioridade mais baixa porque são menos frequentes.
 */
export const ENTITY_PRIORITIES: Record<string, number> = {
  sales: 100,
  sale_items: 99,
  stock_movements: 80,
  products: 70,
  customers: 60,
  product_categories: 50,
  users: 40,
};

/**
 * Prioridades por tipo de operação
 *
 * Deletes são mais urgentes para evitar ressincronização de dados excluídos.
 */
export const OPERATION_PRIORITIES: Record<SyncOperation, number> = {
  delete: 20,
  update: 10,
  create: 0,
};

// =============================================================================
// FUNÇÕES DA FILA
// =============================================================================

/**
 * Adiciona uma operação à fila de sincronização
 *
 * @param entityType Nome da tabela (ex: 'products', 'sales')
 * @param entityId ID do registro
 * @param operation Tipo de operação
 * @param data Dados completos do registro
 * @param options Opções adicionais
 */
export const addToQueue = async (
  entityType: string,
  entityId: string,
  operation: SyncOperation,
  data: Record<string, unknown>,
  options: AddToQueueOptions = {}
): Promise<string> => {
  const db = getSqliteDb();

  // Calcula prioridade baseada no tipo de entidade e operação
  const basePriority = ENTITY_PRIORITIES[entityType] ?? 50;
  const opPriority = OPERATION_PRIORITIES[operation];
  const priority = options.priority ?? basePriority + opPriority;

  const queueItem: NewSyncQueueLocal = {
    id: uuidv4(),
    entity_type: entityType,
    entity_id: entityId,
    operation,
    data: JSON.stringify(data),
    status: 'pending',
    priority,
    attempts: 0,
    max_attempts: options.maxAttempts ?? 3,
    last_attempt_at: null,
    next_attempt_at: new Date().toISOString(),
    error_message: null,
    created_at: new Date().toISOString(),
  };

  // Verifica se já existe um item pendente para a mesma entidade
  const existing = await db
    .select()
    .from(syncQueueLocal)
    .where(
      and(
        eq(syncQueueLocal.entity_type, entityType),
        eq(syncQueueLocal.entity_id, entityId),
        or(
          eq(syncQueueLocal.status, 'pending'),
          eq(syncQueueLocal.status, 'failed')
        )
      )
    )
    .limit(1);

  if (existing.length > 0) {
    // Atualiza o item existente com os novos dados
    const existingItem = existing[0];

    // Se o existente é create e o novo é delete, remove da fila
    if (existingItem.operation === 'create' && operation === 'delete') {
      await db.delete(syncQueueLocal).where(eq(syncQueueLocal.id, existingItem.id));
      return existingItem.id;
    }

    // Se o existente é create e o novo é update, mantém create com novos dados
    if (existingItem.operation === 'create' && operation === 'update') {
      await db
        .update(syncQueueLocal)
        .set({
          data: JSON.stringify(data),
          status: 'pending',
          next_attempt_at: new Date().toISOString(),
        })
        .where(eq(syncQueueLocal.id, existingItem.id));
      return existingItem.id;
    }

    // Outros casos: atualiza com a nova operação
    await db
      .update(syncQueueLocal)
      .set({
        operation,
        data: JSON.stringify(data),
        status: 'pending',
        attempts: 0,
        next_attempt_at: new Date().toISOString(),
        error_message: null,
      })
      .where(eq(syncQueueLocal.id, existingItem.id));
    return existingItem.id;
  }

  // Insere novo item na fila
  await db.insert(syncQueueLocal).values(queueItem);
  return queueItem.id;
};

/**
 * Obtém itens pendentes da fila ordenados por prioridade
 *
 * @param limit Número máximo de itens
 */
export const getPendingItems = async (limit = 50): Promise<QueueItem[]> => {
  const db = getSqliteDb();
  const now = new Date().toISOString();

  const items = await db
    .select()
    .from(syncQueueLocal)
    .where(
      and(
        or(
          eq(syncQueueLocal.status, 'pending'),
          and(
            eq(syncQueueLocal.status, 'failed'),
            lt(syncQueueLocal.attempts, syncQueueLocal.max_attempts),
            or(
              isNull(syncQueueLocal.next_attempt_at),
              lt(syncQueueLocal.next_attempt_at, now)
            )
          )
        )
      )
    )
    .orderBy(desc(syncQueueLocal.priority), asc(syncQueueLocal.created_at))
    .limit(limit);

  return items.map(mapQueueItem);
};

/**
 * Obtém contagem de itens pendentes
 */
export const getPendingCount = async (): Promise<number> => {
  const client = getSqliteClient();
  const result = client
    .prepare(
      `SELECT COUNT(*) as count FROM sync_queue
       WHERE status IN ('pending', 'failed')
       AND attempts < max_attempts`
    )
    .get() as { count: number };

  return result.count;
};

/**
 * Marca um item como em processamento
 */
export const markAsSyncing = async (id: string): Promise<void> => {
  const db = getSqliteDb();
  await db
    .update(syncQueueLocal)
    .set({
      status: 'syncing',
      last_attempt_at: new Date().toISOString(),
    })
    .where(eq(syncQueueLocal.id, id));
};

/**
 * Marca um item como sincronizado com sucesso
 */
export const markAsCompleted = async (id: string): Promise<void> => {
  const db = getSqliteDb();
  await db.delete(syncQueueLocal).where(eq(syncQueueLocal.id, id));
};

/**
 * Marca um item como falha e agenda próxima tentativa
 */
export const markAsFailed = async (
  id: string,
  errorMessage: string
): Promise<void> => {
  const db = getSqliteDb();

  // Obtém o item atual
  const items = await db
    .select()
    .from(syncQueueLocal)
    .where(eq(syncQueueLocal.id, id))
    .limit(1);

  if (items.length === 0) return;

  const item = items[0];
  const newAttempts = item.attempts + 1;

  // Calcula próxima tentativa com backoff exponencial
  // 30s, 1min, 2min, 4min, etc
  const backoffSeconds = Math.pow(2, newAttempts) * 30;
  const nextAttempt = new Date(Date.now() + backoffSeconds * 1000).toISOString();

  await db
    .update(syncQueueLocal)
    .set({
      status: 'failed',
      attempts: newAttempts,
      error_message: errorMessage,
      next_attempt_at: nextAttempt,
    })
    .where(eq(syncQueueLocal.id, id));
};

/**
 * Marca um item como conflito
 */
export const markAsConflict = async (
  id: string,
  errorMessage: string
): Promise<void> => {
  const db = getSqliteDb();
  await db
    .update(syncQueueLocal)
    .set({
      status: 'conflict',
      error_message: errorMessage,
    })
    .where(eq(syncQueueLocal.id, id));
};

/**
 * Remove itens completados ou antigos
 */
export const cleanupQueue = async (olderThanDays = 7): Promise<number> => {
  const client = getSqliteClient();
  const cutoff = new Date(
    Date.now() - olderThanDays * 24 * 60 * 60 * 1000
  ).toISOString();

  const result = client
    .prepare(
      `DELETE FROM sync_queue
       WHERE status = 'completed'
       OR (status = 'failed' AND attempts >= max_attempts AND created_at < ?)`
    )
    .run(cutoff);

  return result.changes;
};

/**
 * Obtém estatísticas da fila
 */
export const getQueueStats = async (): Promise<{
  pending: number;
  syncing: number;
  failed: number;
  conflict: number;
  total: number;
}> => {
  const client = getSqliteClient();
  const result = client
    .prepare(
      `SELECT
        SUM(CASE WHEN status = 'pending' THEN 1 ELSE 0 END) as pending,
        SUM(CASE WHEN status = 'syncing' THEN 1 ELSE 0 END) as syncing,
        SUM(CASE WHEN status = 'failed' THEN 1 ELSE 0 END) as failed,
        SUM(CASE WHEN status = 'conflict' THEN 1 ELSE 0 END) as conflict,
        COUNT(*) as total
       FROM sync_queue`
    )
    .get() as {
    pending: number;
    syncing: number;
    failed: number;
    conflict: number;
    total: number;
  };

  return result;
};

/**
 * Reseta itens que ficaram travados em 'syncing'
 * (útil após crash ou reinício)
 */
export const resetStuckItems = async (
  olderThanMinutes = 5
): Promise<number> => {
  const client = getSqliteClient();
  const cutoff = new Date(
    Date.now() - olderThanMinutes * 60 * 1000
  ).toISOString();

  const result = client
    .prepare(
      `UPDATE sync_queue
       SET status = 'pending', next_attempt_at = datetime('now')
       WHERE status = 'syncing' AND last_attempt_at < ?`
    )
    .run(cutoff);

  return result.changes;
};

// =============================================================================
// HELPERS
// =============================================================================

/**
 * Mapeia item do banco para o tipo de retorno
 */
const mapQueueItem = (item: SyncQueueLocal): QueueItem => ({
  id: item.id,
  entityType: item.entity_type,
  entityId: item.entity_id,
  operation: item.operation as SyncOperation,
  data: JSON.parse(item.data),
  status: item.status as SyncStatus,
  priority: item.priority,
  attempts: item.attempts,
  maxAttempts: item.max_attempts,
  lastAttemptAt: item.last_attempt_at,
  nextAttemptAt: item.next_attempt_at,
  errorMessage: item.error_message,
  createdAt: item.created_at,
});
