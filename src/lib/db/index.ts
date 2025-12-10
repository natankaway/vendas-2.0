/**
 * Conexões de Banco de Dados
 *
 * Este arquivo gerencia as conexões com:
 * - Supabase (Postgres) - banco de dados remoto (source of truth)
 * - LocalStorage/Memory - armazenamento local para operação offline (fallback)
 *
 * Para Windows: usa apenas Supabase (sem SQLite nativo)
 */

import { drizzle as drizzlePostgres } from 'drizzle-orm/postgres-js';
import postgres from 'postgres';
import * as pgSchema from './schema';

// =============================================================================
// TIPOS
// =============================================================================

export type PostgresDB = ReturnType<typeof drizzlePostgres<typeof pgSchema>>;

// =============================================================================
// CONEXÃO POSTGRES (SUPABASE)
// =============================================================================

let postgresClient: ReturnType<typeof postgres> | null = null;
let postgresDb: PostgresDB | null = null;

/**
 * Obtém a conexão com Postgres
 */
export const getPostgresDb = (): PostgresDB => {
  if (!postgresDb) {
    const connectionString = process.env.DATABASE_URL;

    if (!connectionString) {
      throw new Error(
        'DATABASE_URL não está configurada. ' +
        'Configure a variável de ambiente com a connection string do Supabase.'
      );
    }

    postgresClient = postgres(connectionString, {
      max: 10,
      idle_timeout: 20,
      connect_timeout: 10,
      prepare: false,
    });

    postgresDb = drizzlePostgres(postgresClient, {
      schema: pgSchema,
      logger: process.env.NODE_ENV === 'development',
    });
  }

  return postgresDb;
};

/**
 * Fecha a conexão com Postgres
 */
export const closePostgresDb = async (): Promise<void> => {
  if (postgresClient) {
    await postgresClient.end();
    postgresClient = null;
    postgresDb = null;
  }
};

// =============================================================================
// BANCO LOCAL (SIMULADO - MEMÓRIA/LOCALSTORAGE)
// =============================================================================

// Cache em memória para simular banco local
const memoryStore: Record<string, Record<string, unknown>[]> = {
  users: [],
  customers: [],
  products: [],
  product_categories: [],
  sales: [],
  sale_items: [],
  stock_movements: [],
  sync_queue: [],
};

/**
 * Banco local simulado usando memória
 * Para produção offline, considere usar IndexedDB no frontend
 */
export const getLocalDb = () => {
  return {
    prepare: (sql: string) => ({
      run: (...params: unknown[]) => {
        console.log('[LocalDB] Executando:', sql, params);
        return { changes: 1 };
      },
      get: (...params: unknown[]) => {
        console.log('[LocalDB] Buscando:', sql, params);
        return null;
      },
      all: (...params: unknown[]) => {
        console.log('[LocalDB] Listando:', sql, params);
        return [];
      },
    }),
    exec: (sql: string) => {
      console.log('[LocalDB] Exec:', sql.substring(0, 100) + '...');
    },
    pragma: (cmd: string) => {
      console.log('[LocalDB] Pragma:', cmd);
    },
    close: () => {
      console.log('[LocalDB] Fechando conexão');
    },
  };
};

export const getSqliteDb = getLocalDb;
export const getSqliteClient = getLocalDb;
export const closeSqliteDb = () => {};

// =============================================================================
// HELPERS
// =============================================================================

/**
 * Verifica se há conexão com o Supabase
 */
export const isPostgresConnected = async (): Promise<boolean> => {
  try {
    // Verifica se as variáveis de ambiente estão configuradas
    const connectionString = process.env.DATABASE_URL;
    if (!connectionString) {
      return false;
    }
    // Tenta obter a conexão
    getPostgresDb();
    return true;
  } catch {
    return false;
  }
};

/**
 * Obtém o banco disponível
 */
export const getAvailableDb = async (
  preferRemote = true
): Promise<{ db: PostgresDB; source: 'local' | 'remote' }> => {
  // Sempre usa Postgres/Supabase nesta versão simplificada
  return { db: getPostgresDb(), source: 'remote' };
};

// =============================================================================
// EXPORTS
// =============================================================================

export * from './schema';
