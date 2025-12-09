/**
 * Serviço Base para Operações de Dados
 *
 * Implementa o padrão offline-first:
 * 1. Todas as operações primeiro afetam o SQLite local
 * 2. Operações são adicionadas à fila de sincronização
 * 3. Sincronização acontece em background quando online
 *
 * Este serviço base é estendido por serviços específicos (produtos, clientes, etc.)
 */

import { v4 as uuidv4 } from 'uuid';
import { getSqliteDb } from '@/lib/db';
import { addToQueue } from '@/lib/sync/queue';
import { eq, and, isNull, like, desc, asc, sql } from 'drizzle-orm';
import type { SQLiteTableWithColumns } from 'drizzle-orm/sqlite-core';

// =============================================================================
// TIPOS
// =============================================================================

export interface BaseEntity {
  id: string;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface ListOptions {
  page?: number;
  limit?: number;
  search?: string;
  searchFields?: string[];
  sortBy?: string;
  sortOrder?: 'asc' | 'desc';
  includeDeleted?: boolean;
}

export interface ListResult<T> {
  data: T[];
  total: number;
  page: number;
  limit: number;
  totalPages: number;
}

// =============================================================================
// SERVIÇO BASE
// =============================================================================

/**
 * Cria um serviço de dados com operações CRUD offline-first
 *
 * @param tableName Nome da tabela (para sincronização)
 * @param table Referência da tabela Drizzle
 */
export function createBaseService<
  TTable extends SQLiteTableWithColumns<any>,
  TEntity extends BaseEntity,
  TCreate extends Record<string, unknown>,
  TUpdate extends Record<string, unknown>
>(tableName: string, table: TTable) {
  const db = getSqliteDb();

  return {
    /**
     * Cria um novo registro
     */
    async create(data: TCreate): Promise<TEntity> {
      const now = new Date().toISOString();
      const id = uuidv4();

      const entity = {
        id,
        ...data,
        created_at: now,
        updated_at: now,
        deleted_at: null,
        version: 1,
        synced_at: null,
        local_only: 1, // SQLite usa 1/0 para boolean
      };

      await db.insert(table).values(entity);

      // Adiciona à fila de sincronização
      await addToQueue(tableName, id, 'create', entity);

      return this.findById(id) as Promise<TEntity>;
    },

    /**
     * Busca registro por ID
     */
    async findById(id: string): Promise<TEntity | null> {
      const results = await db
        .select()
        .from(table)
        .where(eq((table as any).id, id))
        .limit(1);

      return (results[0] as TEntity) || null;
    },

    /**
     * Lista registros com paginação e filtros
     */
    async list(options: ListOptions = {}): Promise<ListResult<TEntity>> {
      const {
        page = 1,
        limit = 20,
        search,
        searchFields = ['name'],
        sortBy = 'created_at',
        sortOrder = 'desc',
        includeDeleted = false,
      } = options;

      const offset = (page - 1) * limit;

      // Query base
      let query = db.select().from(table);

      // Filtro de soft delete
      if (!includeDeleted) {
        query = query.where(isNull((table as any).deleted_at)) as any;
      }

      // Filtro de busca
      if (search && searchFields.length > 0) {
        // Constrói OR para múltiplos campos
        const searchConditions = searchFields.map((field) =>
          like((table as any)[field], `%${search}%`)
        );

        // Por simplicidade, usa apenas o primeiro campo
        // Em produção, usaria OR dinâmico
        query = query.where(
          and(
            isNull((table as any).deleted_at),
            like((table as any)[searchFields[0]], `%${search}%`)
          )
        ) as any;
      }

      // Ordenação
      const orderFn = sortOrder === 'asc' ? asc : desc;
      query = query.orderBy(orderFn((table as any)[sortBy])) as any;

      // Paginação
      query = query.limit(limit).offset(offset) as any;

      const data = await query;

      // Conta total de registros
      const countResult = await db
        .select({ count: sql<number>`COUNT(*)` })
        .from(table)
        .where(isNull((table as any).deleted_at));

      const total = countResult[0]?.count || 0;

      return {
        data: data as TEntity[],
        total,
        page,
        limit,
        totalPages: Math.ceil(total / limit),
      };
    },

    /**
     * Atualiza um registro
     */
    async update(id: string, data: TUpdate): Promise<TEntity | null> {
      const existing = await this.findById(id);
      if (!existing) return null;

      const now = new Date().toISOString();

      const updates = {
        ...data,
        updated_at: now,
        version: existing.version + 1,
        local_only: existing.synced_at ? 0 : 1,
      };

      await db
        .update(table)
        .set(updates)
        .where(eq((table as any).id, id));

      // Adiciona à fila de sincronização
      const updated = await this.findById(id);
      if (updated) {
        await addToQueue(tableName, id, 'update', updated as Record<string, unknown>);
      }

      return updated;
    },

    /**
     * Soft delete de um registro
     */
    async delete(id: string): Promise<boolean> {
      const existing = await this.findById(id);
      if (!existing) return false;

      const now = new Date().toISOString();

      await db
        .update(table)
        .set({
          deleted_at: now,
          updated_at: now,
          version: existing.version + 1,
        })
        .where(eq((table as any).id, id));

      // Adiciona à fila de sincronização
      await addToQueue(tableName, id, 'delete', {
        id,
        deleted_at: now,
      });

      return true;
    },

    /**
     * Hard delete (uso interno, para sincronização)
     */
    async hardDelete(id: string): Promise<boolean> {
      await db.delete(table).where(eq((table as any).id, id));
      return true;
    },

    /**
     * Restaura um registro deletado
     */
    async restore(id: string): Promise<TEntity | null> {
      const now = new Date().toISOString();

      await db
        .update(table)
        .set({
          deleted_at: null,
          updated_at: now,
        })
        .where(eq((table as any).id, id));

      const restored = await this.findById(id);

      if (restored) {
        await addToQueue(tableName, id, 'update', restored as Record<string, unknown>);
      }

      return restored;
    },

    /**
     * Busca todos os registros (sem paginação)
     */
    async findAll(includeDeleted = false): Promise<TEntity[]> {
      let query = db.select().from(table);

      if (!includeDeleted) {
        query = query.where(isNull((table as any).deleted_at)) as any;
      }

      return query as Promise<TEntity[]>;
    },

    /**
     * Conta registros
     */
    async count(includeDeleted = false): Promise<number> {
      let query = db.select({ count: sql<number>`COUNT(*)` }).from(table);

      if (!includeDeleted) {
        query = query.where(isNull((table as any).deleted_at)) as any;
      }

      const result = await query;
      return result[0]?.count || 0;
    },

    /**
     * Busca registros não sincronizados
     */
    async findUnsyncedRecords(): Promise<TEntity[]> {
      return db
        .select()
        .from(table)
        .where(eq((table as any).local_only, 1)) as Promise<TEntity[]>;
    },

    /**
     * Marca registro como sincronizado
     */
    async markAsSynced(id: string): Promise<void> {
      await db
        .update(table)
        .set({
          synced_at: new Date().toISOString(),
          local_only: 0,
        })
        .where(eq((table as any).id, id));
    },

    /**
     * Upsert para sincronização (insert or update)
     */
    async upsert(data: Record<string, unknown>): Promise<TEntity> {
      const existing = await this.findById(data.id as string);

      if (existing) {
        await db
          .update(table)
          .set({
            ...data,
            local_only: 0,
            synced_at: new Date().toISOString(),
          })
          .where(eq((table as any).id, data.id as string));
      } else {
        await db.insert(table).values({
          ...data,
          local_only: 0,
          synced_at: new Date().toISOString(),
        });
      }

      return this.findById(data.id as string) as Promise<TEntity>;
    },
  };
}
