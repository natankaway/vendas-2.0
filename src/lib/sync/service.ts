/**
 * Serviço de Sincronização
 *
 * Este é o coração do sistema offline-first.
 * Responsável por:
 * 1. Processar fila de operações pendentes (local → remote)
 * 2. Buscar atualizações do servidor (remote → local)
 * 3. Detectar e resolver conflitos
 * 4. Manter logs de sincronização
 *
 * Estratégia de resolução de conflitos:
 * - Last-write-wins baseado em updated_at
 * - Conflitos críticos são marcados para resolução manual
 */

import { v4 as uuidv4 } from 'uuid';
import { getSqliteDb, getSqliteClient, getPostgresDb, isPostgresConnected } from '@/lib/db';
import {
  syncLogsLocal,
  syncConflictsLocal,
  localSettingsLocal,
  usersLocal,
  customersLocal,
  productsLocal,
  productCategoriesLocal,
  salesLocal,
  saleItemsLocal,
  stockMovementsLocal,
  type NewSyncLogLocal,
  type NewSyncConflictLocal,
} from '@/lib/db/schema/sqlite-schema';
import {
  users,
  customers,
  products,
  productCategories,
  sales,
  saleItems,
  stockMovements,
} from '@/lib/db/schema';
import { eq, gt, and, isNull } from 'drizzle-orm';
import {
  getPendingItems,
  markAsSyncing,
  markAsCompleted,
  markAsFailed,
  markAsConflict,
  resetStuckItems,
  type QueueItem,
  type SyncOperation,
} from './queue';

// =============================================================================
// TIPOS
// =============================================================================

export interface SyncResult {
  success: boolean;
  processed: number;
  succeeded: number;
  failed: number;
  conflicts: number;
  errors: string[];
  duration: number;
}

export interface SyncOptions {
  /** Se deve forçar sincronização mesmo que última seja recente */
  force?: boolean;
  /** Apenas enviar (não buscar do servidor) */
  pushOnly?: boolean;
  /** Apenas receber (não enviar para servidor) */
  pullOnly?: boolean;
  /** Entidades específicas para sincronizar */
  entities?: string[];
}

// =============================================================================
// MAPEAMENTO DE TABELAS
// =============================================================================

/**
 * Mapeamento entre tabelas locais (SQLite) e remotas (Postgres)
 */
const TABLE_MAPPING = {
  users: { local: usersLocal, remote: users },
  customers: { local: customersLocal, remote: customers },
  products: { local: productsLocal, remote: products },
  product_categories: { local: productCategoriesLocal, remote: productCategories },
  sales: { local: salesLocal, remote: sales },
  sale_items: { local: saleItemsLocal, remote: saleItems },
  stock_movements: { local: stockMovementsLocal, remote: stockMovements },
} as const;

type EntityType = keyof typeof TABLE_MAPPING;

/**
 * Ordem de sincronização para respeitar dependências
 */
const SYNC_ORDER: EntityType[] = [
  'users',
  'product_categories',
  'products',
  'customers',
  'sales',
  'sale_items',
  'stock_movements',
];

// =============================================================================
// FUNÇÕES PRINCIPAIS
// =============================================================================

/**
 * Executa sincronização completa
 *
 * Fluxo:
 * 1. Verifica conexão com Supabase
 * 2. Reseta itens travados
 * 3. Push: Envia operações locais para servidor
 * 4. Pull: Busca atualizações do servidor
 * 5. Registra log de sincronização
 */
export const sync = async (options: SyncOptions = {}): Promise<SyncResult> => {
  const startTime = Date.now();
  const result: SyncResult = {
    success: false,
    processed: 0,
    succeeded: 0,
    failed: 0,
    conflicts: 0,
    errors: [],
    duration: 0,
  };

  // Verifica se deve sincronizar
  if (!options.force) {
    const lastSync = await getLastSyncTime();
    const minInterval = 30000; // 30 segundos
    if (lastSync && Date.now() - new Date(lastSync).getTime() < minInterval) {
      result.success = true;
      result.duration = Date.now() - startTime;
      return result;
    }
  }

  // Verifica conexão
  const isConnected = await isPostgresConnected();
  if (!isConnected) {
    result.errors.push('Sem conexão com o servidor');
    result.duration = Date.now() - startTime;
    return result;
  }

  // Cria log de sincronização
  const logId = await createSyncLog();

  try {
    // Reseta itens que podem ter ficado travados
    await resetStuckItems();

    // Push: Envia operações locais para servidor
    if (!options.pullOnly) {
      const pushResult = await pushChanges(options.entities);
      result.processed += pushResult.processed;
      result.succeeded += pushResult.succeeded;
      result.failed += pushResult.failed;
      result.conflicts += pushResult.conflicts;
      result.errors.push(...pushResult.errors);
    }

    // Pull: Busca atualizações do servidor
    if (!options.pushOnly) {
      const pullResult = await pullChanges(options.entities);
      result.processed += pullResult.processed;
      result.succeeded += pullResult.succeeded;
      result.failed += pullResult.failed;
      result.errors.push(...pullResult.errors);
    }

    // Atualiza timestamp de última sincronização
    await setLastSyncTime();

    // Atualiza log
    await completeSyncLog(logId, result);

    result.success = result.failed === 0 && result.conflicts === 0;
    result.duration = Date.now() - startTime;

    return result;
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Erro desconhecido';
    result.errors.push(errorMessage);
    await failSyncLog(logId, errorMessage);
    result.duration = Date.now() - startTime;
    return result;
  }
};

/**
 * Envia mudanças locais para o servidor
 */
const pushChanges = async (
  entities?: string[]
): Promise<Omit<SyncResult, 'success' | 'duration'>> => {
  const result = {
    processed: 0,
    succeeded: 0,
    failed: 0,
    conflicts: 0,
    errors: [] as string[],
  };

  // Obtém itens pendentes da fila
  const pendingItems = await getPendingItems(100);

  // Filtra por entidades se especificado
  const itemsToProcess = entities
    ? pendingItems.filter((item) => entities.includes(item.entityType))
    : pendingItems;

  // Processa cada item
  for (const item of itemsToProcess) {
    result.processed++;

    try {
      await markAsSyncing(item.id);

      // Tenta sincronizar
      const syncResult = await syncItem(item);

      if (syncResult.success) {
        await markAsCompleted(item.id);
        result.succeeded++;
      } else if (syncResult.conflict) {
        await createConflict(item, syncResult.remoteData!);
        await markAsConflict(item.id, 'Conflito detectado');
        result.conflicts++;
      } else {
        await markAsFailed(item.id, syncResult.error || 'Erro desconhecido');
        result.failed++;
        result.errors.push(
          `${item.entityType}/${item.entityId}: ${syncResult.error}`
        );
      }
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Erro desconhecido';
      await markAsFailed(item.id, errorMessage);
      result.failed++;
      result.errors.push(`${item.entityType}/${item.entityId}: ${errorMessage}`);
    }
  }

  return result;
};

/**
 * Busca mudanças do servidor
 */
const pullChanges = async (
  entities?: string[]
): Promise<Omit<SyncResult, 'success' | 'duration' | 'conflicts'>> => {
  const result = {
    processed: 0,
    succeeded: 0,
    failed: 0,
    errors: [] as string[],
  };

  const entitiesToSync = entities
    ? SYNC_ORDER.filter((e) => entities.includes(e))
    : SYNC_ORDER;

  const lastSyncTime = await getLastSyncTime();

  for (const entityType of entitiesToSync) {
    try {
      const count = await pullEntity(entityType, lastSyncTime);
      result.processed += count;
      result.succeeded += count;
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Erro desconhecido';
      result.failed++;
      result.errors.push(`Pull ${entityType}: ${errorMessage}`);
    }
  }

  return result;
};

// =============================================================================
// FUNÇÕES DE SINCRONIZAÇÃO POR ITEM
// =============================================================================

interface SyncItemResult {
  success: boolean;
  conflict?: boolean;
  remoteData?: Record<string, unknown>;
  error?: string;
}

/**
 * Sincroniza um item individual com o servidor
 */
const syncItem = async (item: QueueItem): Promise<SyncItemResult> => {
  const mapping = TABLE_MAPPING[item.entityType as EntityType];
  if (!mapping) {
    return { success: false, error: `Tipo de entidade desconhecido: ${item.entityType}` };
  }

  const db = getPostgresDb();

  try {
    switch (item.operation) {
      case 'create': {
        // Verifica se já existe no servidor (pode ter sido criado por outro cliente)
        const existing = await db
          .select()
          .from(mapping.remote)
          .where(eq((mapping.remote as any).id, item.entityId))
          .limit(1);

        if (existing.length > 0) {
          // Registro já existe - verifica conflito
          const remoteData = existing[0] as Record<string, unknown>;
          const localUpdatedAt = new Date(item.data.updated_at as string);
          const remoteUpdatedAt = new Date(remoteData.updated_at as string);

          if (remoteUpdatedAt > localUpdatedAt) {
            return { success: false, conflict: true, remoteData };
          }

          // Local é mais recente - atualiza servidor
          await db
            .update(mapping.remote)
            .set(prepareForRemote(item.data))
            .where(eq((mapping.remote as any).id, item.entityId));
        } else {
          // Cria no servidor
          await db.insert(mapping.remote).values(prepareForRemote(item.data));
        }

        // Marca como sincronizado no local
        await markLocalAsSynced(item.entityType, item.entityId);

        return { success: true };
      }

      case 'update': {
        // Busca versão atual do servidor
        const existing = await db
          .select()
          .from(mapping.remote)
          .where(eq((mapping.remote as any).id, item.entityId))
          .limit(1);

        if (existing.length === 0) {
          // Não existe no servidor - cria
          await db.insert(mapping.remote).values(prepareForRemote(item.data));
        } else {
          const remoteData = existing[0] as Record<string, unknown>;
          const localUpdatedAt = new Date(item.data.updated_at as string);
          const remoteUpdatedAt = new Date(remoteData.updated_at as string);
          const localVersion = item.data.version as number;
          const remoteVersion = remoteData.version as number;

          // Verifica conflito
          if (remoteVersion > localVersion || remoteUpdatedAt > localUpdatedAt) {
            return { success: false, conflict: true, remoteData };
          }

          // Atualiza no servidor
          await db
            .update(mapping.remote)
            .set({
              ...prepareForRemote(item.data),
              version: (item.data.version as number) + 1,
            })
            .where(eq((mapping.remote as any).id, item.entityId));
        }

        // Marca como sincronizado no local
        await markLocalAsSynced(item.entityType, item.entityId);

        return { success: true };
      }

      case 'delete': {
        // Soft delete no servidor
        await db
          .update(mapping.remote)
          .set({
            deleted_at: new Date().toISOString(),
            updated_at: new Date().toISOString(),
          } as any)
          .where(eq((mapping.remote as any).id, item.entityId));

        // Marca como sincronizado no local
        await markLocalAsSynced(item.entityType, item.entityId);

        return { success: true };
      }

      default:
        return { success: false, error: `Operação desconhecida: ${item.operation}` };
    }
  } catch (error) {
    return {
      success: false,
      error: error instanceof Error ? error.message : 'Erro ao sincronizar',
    };
  }
};

/**
 * Busca e aplica mudanças do servidor para uma entidade
 */
const pullEntity = async (
  entityType: EntityType,
  lastSyncTime: string | null
): Promise<number> => {
  const mapping = TABLE_MAPPING[entityType];
  const remoteDb = getPostgresDb();
  const localDb = getSqliteDb();

  // Busca registros atualizados no servidor após última sincronização
  let query = remoteDb.select().from(mapping.remote);

  if (lastSyncTime) {
    query = query.where(gt((mapping.remote as any).updated_at, lastSyncTime)) as any;
  }

  const remoteRecords = await query;

  let count = 0;

  for (const remoteRecord of remoteRecords) {
    const record = remoteRecord as Record<string, unknown>;

    // Busca registro local
    const localRecords = await localDb
      .select()
      .from(mapping.local)
      .where(eq((mapping.local as any).id, record.id as string))
      .limit(1);

    if (localRecords.length === 0) {
      // Não existe localmente - insere
      await localDb.insert(mapping.local).values(prepareForLocal(record));
      count++;
    } else {
      const localRecord = localRecords[0] as Record<string, unknown>;

      // Verifica se precisa atualizar
      const localUpdatedAt = new Date(localRecord.updated_at as string);
      const remoteUpdatedAt = new Date(record.updated_at as string);

      if (remoteUpdatedAt > localUpdatedAt) {
        // Servidor é mais recente - atualiza local
        await localDb
          .update(mapping.local)
          .set(prepareForLocal(record))
          .where(eq((mapping.local as any).id, record.id as string));
        count++;
      }
    }
  }

  return count;
};

// =============================================================================
// HELPERS
// =============================================================================

/**
 * Prepara dados para envio ao servidor
 */
const prepareForRemote = (
  data: Record<string, unknown>
): Record<string, unknown> => {
  const prepared = { ...data };

  // Remove campos que não devem ir para o servidor
  delete prepared.local_only;

  // Marca como sincronizado
  prepared.synced_at = new Date().toISOString();

  // Converte campos específicos se necessário
  if (prepared.payment_details && typeof prepared.payment_details === 'string') {
    prepared.payment_details = JSON.parse(prepared.payment_details as string);
  }

  return prepared;
};

/**
 * Prepara dados para inserção local
 */
const prepareForLocal = (
  data: Record<string, unknown>
): Record<string, unknown> => {
  const prepared = { ...data };

  // Marca como sincronizado
  prepared.synced_at = new Date().toISOString();
  prepared.local_only = false;

  // Converte JSON para string no SQLite
  if (prepared.payment_details && typeof prepared.payment_details === 'object') {
    prepared.payment_details = JSON.stringify(prepared.payment_details);
  }

  return prepared;
};

/**
 * Marca registro local como sincronizado
 */
const markLocalAsSynced = async (
  entityType: string,
  entityId: string
): Promise<void> => {
  const mapping = TABLE_MAPPING[entityType as EntityType];
  if (!mapping) return;

  const localDb = getSqliteDb();
  await localDb
    .update(mapping.local)
    .set({
      synced_at: new Date().toISOString(),
      local_only: false,
    } as any)
    .where(eq((mapping.local as any).id, entityId));
};

// =============================================================================
// GERENCIAMENTO DE CONFLITOS
// =============================================================================

/**
 * Cria registro de conflito para resolução posterior
 */
const createConflict = async (
  item: QueueItem,
  remoteData: Record<string, unknown>
): Promise<void> => {
  const localDb = getSqliteDb();

  const conflict: NewSyncConflictLocal = {
    id: uuidv4(),
    entity_type: item.entityType,
    entity_id: item.entityId,
    local_data: JSON.stringify(item.data),
    remote_data: JSON.stringify(remoteData),
    local_updated_at: item.data.updated_at as string,
    remote_updated_at: remoteData.updated_at as string,
    created_at: new Date().toISOString(),
  };

  await localDb.insert(syncConflictsLocal).values(conflict);
};

/**
 * Resolve um conflito usando estratégia especificada
 */
export const resolveConflict = async (
  conflictId: string,
  resolution: 'local_wins' | 'remote_wins' | 'merged',
  mergedData?: Record<string, unknown>
): Promise<void> => {
  const localDb = getSqliteDb();

  // Busca o conflito
  const conflicts = await localDb
    .select()
    .from(syncConflictsLocal)
    .where(eq(syncConflictsLocal.id, conflictId))
    .limit(1);

  if (conflicts.length === 0) return;

  const conflict = conflicts[0];
  const localData = JSON.parse(conflict.local_data);
  const remoteData = JSON.parse(conflict.remote_data);

  let resolvedData: Record<string, unknown>;

  switch (resolution) {
    case 'local_wins':
      resolvedData = localData;
      break;
    case 'remote_wins':
      resolvedData = remoteData;
      break;
    case 'merged':
      resolvedData = mergedData || { ...remoteData, ...localData };
      break;
  }

  // Atualiza o registro local
  const mapping = TABLE_MAPPING[conflict.entity_type as EntityType];
  if (mapping) {
    await localDb
      .update(mapping.local)
      .set(prepareForLocal(resolvedData))
      .where(eq((mapping.local as any).id, conflict.entity_id));
  }

  // Marca conflito como resolvido
  await localDb
    .update(syncConflictsLocal)
    .set({
      resolution,
      resolved_data: JSON.stringify(resolvedData),
      resolved_at: new Date().toISOString(),
    })
    .where(eq(syncConflictsLocal.id, conflictId));
};

/**
 * Obtém conflitos não resolvidos
 */
export const getUnresolvedConflicts = async () => {
  const localDb = getSqliteDb();
  return await localDb
    .select()
    .from(syncConflictsLocal)
    .where(isNull(syncConflictsLocal.resolved_at));
};

// =============================================================================
// LOGS DE SINCRONIZAÇÃO
// =============================================================================

/**
 * Cria log de início de sincronização
 */
const createSyncLog = async (): Promise<string> => {
  const localDb = getSqliteDb();
  const log: NewSyncLogLocal = {
    id: uuidv4(),
    started_at: new Date().toISOString(),
    status: 'running',
    items_processed: 0,
    items_succeeded: 0,
    items_failed: 0,
    items_conflicted: 0,
  };

  await localDb.insert(syncLogsLocal).values(log);
  return log.id;
};

/**
 * Completa log de sincronização com sucesso
 */
const completeSyncLog = async (
  logId: string,
  result: SyncResult
): Promise<void> => {
  const localDb = getSqliteDb();
  await localDb
    .update(syncLogsLocal)
    .set({
      status: 'completed',
      completed_at: new Date().toISOString(),
      items_processed: result.processed,
      items_succeeded: result.succeeded,
      items_failed: result.failed,
      items_conflicted: result.conflicts,
    })
    .where(eq(syncLogsLocal.id, logId));
};

/**
 * Marca log como falha
 */
const failSyncLog = async (logId: string, error: string): Promise<void> => {
  const localDb = getSqliteDb();
  await localDb
    .update(syncLogsLocal)
    .set({
      status: 'failed',
      completed_at: new Date().toISOString(),
      error_message: error,
    })
    .where(eq(syncLogsLocal.id, logId));
};

// =============================================================================
// CONFIGURAÇÕES DE SINCRONIZAÇÃO
// =============================================================================

/**
 * Obtém timestamp da última sincronização
 */
export const getLastSyncTime = async (): Promise<string | null> => {
  const localDb = getSqliteDb();
  const settings = await localDb
    .select()
    .from(localSettingsLocal)
    .where(eq(localSettingsLocal.key, 'last_sync_time'))
    .limit(1);

  if (settings.length === 0) return null;
  return JSON.parse(settings[0].value);
};

/**
 * Define timestamp da última sincronização
 */
const setLastSyncTime = async (): Promise<void> => {
  const localDb = getSqliteDb();
  const now = new Date().toISOString();

  await localDb
    .insert(localSettingsLocal)
    .values({
      key: 'last_sync_time',
      value: JSON.stringify(now),
      updated_at: now,
    })
    .onConflictDoUpdate({
      target: localSettingsLocal.key,
      set: {
        value: JSON.stringify(now),
        updated_at: now,
      },
    });
};
