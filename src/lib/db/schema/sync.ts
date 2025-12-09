/**
 * Schema de Sincronização
 *
 * Define as estruturas das tabelas de controle de sincronização:
 * - sync_queue: Fila de operações pendentes
 * - sync_logs: Logs de sincronização
 * - sync_conflicts: Conflitos detectados
 *
 * Estas tabelas existem APENAS no SQLite local, não no Supabase.
 */

import {
  pgTable,
  text,
  timestamp,
  integer,
  boolean,
  pgEnum,
  index,
  jsonb,
} from 'drizzle-orm/pg-core';

/**
 * Enum para tipo de operação de sincronização
 */
export const syncOperationTypeEnum = pgEnum('sync_operation_type', [
  'create',
  'update',
  'delete',
]);

/**
 * Enum para status de sincronização
 */
export const syncStatusEnum = pgEnum('sync_status', [
  'pending',    // Aguardando processamento
  'syncing',    // Em processamento
  'completed',  // Processado com sucesso
  'failed',     // Falhou
  'conflict',   // Conflito detectado
]);

/**
 * Enum para status do log de sincronização
 */
export const syncLogStatusEnum = pgEnum('sync_log_status', [
  'running',
  'completed',
  'failed',
]);

/**
 * Enum para resolução de conflito
 */
export const conflictResolutionEnum = pgEnum('conflict_resolution', [
  'local_wins',   // Dados locais prevalecem
  'remote_wins',  // Dados remotos prevalecem
  'merged',       // Merge dos dados
  'manual',       // Resolução manual necessária
]);

/**
 * Tabela de fila de sincronização
 *
 * Armazena todas as operações que precisam ser sincronizadas com o Supabase.
 * A fila é processada em ordem de prioridade e timestamp.
 *
 * Fluxo:
 * 1. Operação local cria registro com status 'pending'
 * 2. Worker de sync muda para 'syncing' e processa
 * 3. Sucesso → 'completed', Falha → 'failed' (com incremento de attempts)
 * 4. Conflito → 'conflict' (vai para sync_conflicts)
 */
export const syncQueue = pgTable(
  'sync_queue',
  {
    id: text('id').primaryKey(),
    entity_type: text('entity_type').notNull(), // Nome da tabela
    entity_id: text('entity_id').notNull(),     // ID do registro
    operation: syncOperationTypeEnum('operation').notNull(),
    data: jsonb('data').notNull().$type<Record<string, unknown>>(),
    status: syncStatusEnum('status').notNull().default('pending'),
    priority: integer('priority').notNull().default(0), // Maior = mais prioritário
    attempts: integer('attempts').notNull().default(0),
    max_attempts: integer('max_attempts').notNull().default(3),
    last_attempt_at: timestamp('last_attempt_at', { mode: 'string' }),
    next_attempt_at: timestamp('next_attempt_at', { mode: 'string' }),
    error_message: text('error_message'),
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
  },
  (table) => ({
    statusIdx: index('sync_queue_status_idx').on(table.status),
    entityTypeIdx: index('sync_queue_entity_type_idx').on(table.entity_type),
    priorityIdx: index('sync_queue_priority_idx').on(table.priority),
    nextAttemptIdx: index('sync_queue_next_attempt_idx').on(table.next_attempt_at),
  })
);

/**
 * Tabela de logs de sincronização
 *
 * Registra cada execução do processo de sincronização.
 * Útil para debugging e auditoria.
 */
export const syncLogs = pgTable(
  'sync_logs',
  {
    id: text('id').primaryKey(),
    started_at: timestamp('started_at', { mode: 'string' }).notNull().defaultNow(),
    completed_at: timestamp('completed_at', { mode: 'string' }),
    status: syncLogStatusEnum('status').notNull().default('running'),
    items_processed: integer('items_processed').notNull().default(0),
    items_succeeded: integer('items_succeeded').notNull().default(0),
    items_failed: integer('items_failed').notNull().default(0),
    items_conflicted: integer('items_conflicted').notNull().default(0),
    error_message: text('error_message'),
    details: jsonb('details').$type<SyncLogDetail[]>(),
  },
  (table) => ({
    startedIdx: index('sync_logs_started_idx').on(table.started_at),
    statusIdx: index('sync_logs_status_idx').on(table.status),
  })
);

/**
 * Tabela de conflitos de sincronização
 *
 * Armazena conflitos detectados durante a sincronização.
 * Permite resolução manual ou automática baseada em regras.
 *
 * Estratégia padrão de resolução:
 * 1. Se o registro remoto foi atualizado mais recentemente → remote_wins
 * 2. Se operações são diferentes (um delete, outro update) → manual
 * 3. Se campos diferentes foram alterados → merged
 * 4. Caso contrário → timestamp mais recente vence
 */
export const syncConflicts = pgTable(
  'sync_conflicts',
  {
    id: text('id').primaryKey(),
    entity_type: text('entity_type').notNull(),
    entity_id: text('entity_id').notNull(),

    // Dados conflitantes
    local_data: jsonb('local_data').notNull().$type<Record<string, unknown>>(),
    remote_data: jsonb('remote_data').notNull().$type<Record<string, unknown>>(),
    local_updated_at: timestamp('local_updated_at', { mode: 'string' }).notNull(),
    remote_updated_at: timestamp('remote_updated_at', { mode: 'string' }).notNull(),

    // Resolução
    resolution: conflictResolutionEnum('resolution'),
    resolved_data: jsonb('resolved_data').$type<Record<string, unknown>>(),
    resolved_at: timestamp('resolved_at', { mode: 'string' }),
    resolved_by: text('resolved_by'), // ID do usuário que resolveu (se manual)

    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
  },
  (table) => ({
    entityIdx: index('sync_conflicts_entity_idx').on(table.entity_type, table.entity_id),
    unresolvedIdx: index('sync_conflicts_unresolved_idx').on(table.resolved_at),
  })
);

/**
 * Tabela de configurações locais
 *
 * Armazena configurações específicas da instalação local,
 * como último sync, configurações offline, etc.
 */
export const localSettings = pgTable('local_settings', {
  key: text('key').primaryKey(),
  value: jsonb('value').notNull(),
  updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
});

/**
 * Tipo para detalhes do log de sincronização
 */
export interface SyncLogDetail {
  entity_type: string;
  entity_id: string;
  operation: 'create' | 'update' | 'delete';
  status: 'success' | 'failed' | 'conflict';
  error_message?: string;
  resolved_at?: string;
  resolution?: 'local_wins' | 'remote_wins' | 'merged' | null;
}

/**
 * Tipos inferidos dos schemas
 */
export type SyncQueueItem = typeof syncQueue.$inferSelect;
export type NewSyncQueueItem = typeof syncQueue.$inferInsert;
export type SyncLog = typeof syncLogs.$inferSelect;
export type NewSyncLog = typeof syncLogs.$inferInsert;
export type SyncConflict = typeof syncConflicts.$inferSelect;
export type NewSyncConflict = typeof syncConflicts.$inferInsert;
export type LocalSetting = typeof localSettings.$inferSelect;
export type NewLocalSetting = typeof localSettings.$inferInsert;
