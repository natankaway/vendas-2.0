/**
 * Schema de Clientes
 *
 * Define a estrutura da tabela de clientes para Postgres (Supabase).
 * Inclui informações de contato, endereço e histórico financeiro.
 */

import {
  pgTable,
  text,
  timestamp,
  integer,
  boolean,
  pgEnum,
  index,
} from 'drizzle-orm/pg-core';
import { relations } from 'drizzle-orm';
import { sales } from './sales';

/**
 * Enum para tipo de documento
 */
export const documentTypeEnum = pgEnum('document_type', ['cpf', 'cnpj']);

/**
 * Tabela de clientes
 *
 * Campos importantes:
 * - document: CPF ou CNPJ (sem formatação, apenas números)
 * - credit_limit: Limite de crédito em centavos
 * - current_balance: Saldo devedor atual em centavos
 * - total_purchases: Total histórico de compras em centavos
 */
export const customers = pgTable(
  'customers',
  {
    // Identificação
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    email: text('email'),
    phone: text('phone'),

    // Documento
    document: text('document'),
    document_type: documentTypeEnum('document_type'),

    // Endereço
    address: text('address'),
    city: text('city'),
    state: text('state'),
    zip_code: text('zip_code'),

    // Observações
    notes: text('notes'),

    // Financeiro (valores em centavos para evitar problemas de ponto flutuante)
    credit_limit: integer('credit_limit').notNull().default(0),
    current_balance: integer('current_balance').notNull().default(0),
    total_purchases: integer('total_purchases').notNull().default(0),

    // Atividade
    last_purchase_at: timestamp('last_purchase_at', { mode: 'string' }),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    // Índices para queries comuns
    nameIdx: index('customers_name_idx').on(table.name),
    phoneIdx: index('customers_phone_idx').on(table.phone),
    documentIdx: index('customers_document_idx').on(table.document),
    emailIdx: index('customers_email_idx').on(table.email),
  })
);

/**
 * Relações do cliente
 */
export const customersRelations = relations(customers, ({ many }) => ({
  sales: many(sales),
}));

/**
 * Tipos inferidos do schema
 */
export type Customer = typeof customers.$inferSelect;
export type NewCustomer = typeof customers.$inferInsert;
