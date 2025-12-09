/**
 * Schema de Usuários
 *
 * Define a estrutura da tabela de usuários para Postgres (Supabase).
 * Este schema é usado pelo Drizzle para gerar migrations e queries type-safe.
 *
 * IMPORTANTE: O SQLite usa um schema equivalente definido em sqlite-schema.ts
 */

import { pgTable, text, timestamp, integer, boolean, pgEnum } from 'drizzle-orm/pg-core';
import { relations } from 'drizzle-orm';
import { sales } from './sales';
import { stockMovements } from './products';

/**
 * Enum para roles de usuário
 *
 * Decisão: Usar enum do Postgres para garantir integridade referencial
 * e melhor performance em queries com filtro por role.
 */
export const userRoleEnum = pgEnum('user_role', ['admin', 'manager', 'cashier']);

/**
 * Enum para status do usuário
 */
export const userStatusEnum = pgEnum('user_status', ['active', 'inactive', 'pending']);

/**
 * Tabela de usuários
 *
 * Campos de sincronização:
 * - version: Incrementado a cada update para detecção de conflitos
 * - synced_at: Última vez que foi sincronizado com sucesso
 * - local_only: True se o registro ainda não existe no Supabase
 * - deleted_at: Soft delete para permitir sincronização de exclusões
 */
export const users = pgTable('users', {
  // Identificação
  id: text('id').primaryKey(), // UUID v4 gerado no cliente
  email: text('email').notNull().unique(),
  name: text('name').notNull(),

  // Autenticação
  password_hash: text('password_hash'), // Hash bcrypt para auth offline

  // Perfil
  role: userRoleEnum('role').notNull().default('cashier'),
  status: userStatusEnum('status').notNull().default('active'),
  avatar_url: text('avatar_url'),
  phone: text('phone'),

  // Atividade
  last_login_at: timestamp('last_login_at', { mode: 'string' }),

  // Timestamps e sincronização
  created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
  updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
  deleted_at: timestamp('deleted_at', { mode: 'string' }),
  version: integer('version').notNull().default(1),
  synced_at: timestamp('synced_at', { mode: 'string' }),
  local_only: boolean('local_only').notNull().default(false),
});

/**
 * Relações do usuário
 *
 * Um usuário pode ter várias vendas e movimentações de estoque.
 */
export const usersRelations = relations(users, ({ many }) => ({
  sales: many(sales),
  stockMovements: many(stockMovements),
}));

/**
 * Tipos inferidos do schema
 */
export type User = typeof users.$inferSelect;
export type NewUser = typeof users.$inferInsert;
