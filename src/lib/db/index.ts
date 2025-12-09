/**
 * Conexões de Banco de Dados
 *
 * Este arquivo gerencia as conexões com:
 * - Supabase (Postgres) - banco de dados remoto (source of truth)
 * - SQLite (better-sqlite3) - banco de dados local para operação offline
 *
 * Estratégia de conexão:
 * 1. SQLite é sempre disponível para operações locais
 * 2. Postgres é usado quando há conexão com internet
 * 3. Sincronização bidirecional mantém os dados consistentes
 */

import { drizzle as drizzlePostgres } from 'drizzle-orm/postgres-js';
import { drizzle as drizzleSqlite } from 'drizzle-orm/better-sqlite3';
import postgres from 'postgres';
import Database from 'better-sqlite3';
import * as pgSchema from './schema';
import * as sqliteSchema from './schema/sqlite-schema';
import path from 'path';
import fs from 'fs';

// =============================================================================
// TIPOS
// =============================================================================

export type PostgresDB = ReturnType<typeof drizzlePostgres<typeof pgSchema>>;
export type SqliteDB = ReturnType<typeof drizzleSqlite<typeof sqliteSchema>>;

// =============================================================================
// CONFIGURAÇÃO
// =============================================================================

/**
 * Caminho para o arquivo SQLite local
 * Usa variável de ambiente ou caminho padrão
 */
const getLocalDbPath = (): string => {
  const envPath = process.env.LOCAL_DB_PATH;
  if (envPath) {
    // Se é caminho relativo, resolve a partir da raiz do projeto
    if (!path.isAbsolute(envPath)) {
      return path.resolve(process.cwd(), envPath);
    }
    return envPath;
  }
  // Caminho padrão: ./data/local.db
  return path.resolve(process.cwd(), 'data', 'local.db');
};

/**
 * Garante que o diretório do banco existe
 */
const ensureDbDirectory = (dbPath: string): void => {
  const dir = path.dirname(dbPath);
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true });
  }
};

// =============================================================================
// CONEXÃO POSTGRES (SUPABASE)
// =============================================================================

/**
 * Cliente Postgres singleton
 *
 * Usa connection pooling para melhor performance.
 * Lazy initialization - só conecta quando necessário.
 */
let postgresClient: ReturnType<typeof postgres> | null = null;
let postgresDb: PostgresDB | null = null;

/**
 * Obtém a conexão com Postgres
 *
 * @returns Instância do Drizzle conectada ao Supabase
 * @throws Error se DATABASE_URL não estiver configurada
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

    // Configuração otimizada para Supabase
    postgresClient = postgres(connectionString, {
      max: 10, // Pool máximo de conexões
      idle_timeout: 20, // Timeout de conexões ociosas (segundos)
      connect_timeout: 10, // Timeout de conexão (segundos)
      prepare: false, // Necessário para algumas operações no Supabase
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
 *
 * Deve ser chamada ao encerrar a aplicação para liberar recursos.
 */
export const closePostgresDb = async (): Promise<void> => {
  if (postgresClient) {
    await postgresClient.end();
    postgresClient = null;
    postgresDb = null;
  }
};

// =============================================================================
// CONEXÃO SQLITE (LOCAL)
// =============================================================================

/**
 * Cliente SQLite singleton
 *
 * Usa WAL mode para melhor performance e concorrência.
 * Sempre disponível - não depende de internet.
 */
let sqliteClient: Database.Database | null = null;
let sqliteDb: SqliteDB | null = null;

/**
 * Obtém a conexão com SQLite local
 *
 * @returns Instância do Drizzle conectada ao SQLite
 */
export const getSqliteDb = (): SqliteDB => {
  if (!sqliteDb) {
    const dbPath = getLocalDbPath();
    ensureDbDirectory(dbPath);

    // Abre ou cria o banco SQLite
    sqliteClient = new Database(dbPath);

    // Configurações de performance
    sqliteClient.pragma('journal_mode = WAL'); // Write-Ahead Logging
    sqliteClient.pragma('synchronous = NORMAL'); // Bom equilíbrio entre segurança e performance
    sqliteClient.pragma('cache_size = -64000'); // Cache de 64MB
    sqliteClient.pragma('foreign_keys = ON'); // Habilita foreign keys
    sqliteClient.pragma('temp_store = MEMORY'); // Temp tables em memória

    sqliteDb = drizzleSqlite(sqliteClient, {
      schema: sqliteSchema,
      logger: process.env.NODE_ENV === 'development',
    });
  }

  return sqliteDb;
};

/**
 * Obtém o cliente SQLite raw (para operações especiais)
 */
export const getSqliteClient = (): Database.Database => {
  if (!sqliteClient) {
    getSqliteDb(); // Inicializa o cliente
  }
  return sqliteClient!;
};

/**
 * Fecha a conexão com SQLite
 */
export const closeSqliteDb = (): void => {
  if (sqliteClient) {
    sqliteClient.close();
    sqliteClient = null;
    sqliteDb = null;
  }
};

// =============================================================================
// HELPERS
// =============================================================================

/**
 * Verifica se há conexão com o Supabase
 *
 * Faz uma query simples para verificar se a conexão está ativa.
 */
export const isPostgresConnected = async (): Promise<boolean> => {
  try {
    const db = getPostgresDb();
    // Query simples para testar conexão
    await db.execute('SELECT 1');
    return true;
  } catch {
    return false;
  }
};

/**
 * Obtém o banco de dados apropriado baseado na disponibilidade
 *
 * @param preferRemote Se true, tenta usar Postgres primeiro
 * @returns O banco disponível e a fonte (local ou remote)
 */
export const getAvailableDb = async (
  preferRemote = true
): Promise<{ db: PostgresDB | SqliteDB; source: 'local' | 'remote' }> => {
  if (preferRemote) {
    const isConnected = await isPostgresConnected();
    if (isConnected) {
      return { db: getPostgresDb(), source: 'remote' };
    }
  }

  return { db: getSqliteDb(), source: 'local' };
};

/**
 * Executa operação em ambos os bancos (para sincronização)
 *
 * @param operation Função que executa a operação
 * @returns Resultado da operação no banco remoto (se disponível) ou local
 */
export const executeOnBothDbs = async <T>(
  operation: (db: PostgresDB | SqliteDB, isRemote: boolean) => Promise<T>
): Promise<{ local: T; remote?: T }> => {
  // Sempre executa no local primeiro
  const localResult = await operation(getSqliteDb(), false);

  // Tenta executar no remoto se disponível
  let remoteResult: T | undefined;
  try {
    const isConnected = await isPostgresConnected();
    if (isConnected) {
      remoteResult = await operation(getPostgresDb(), true);
    }
  } catch (error) {
    console.warn('Falha ao executar operação no banco remoto:', error);
  }

  return { local: localResult, remote: remoteResult };
};

// =============================================================================
// EXPORTS
// =============================================================================

export * from './schema';
export * from './schema/sqlite-schema';
