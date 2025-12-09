/**
 * Schema de Vendas
 *
 * Define as estruturas das tabelas de vendas e itens de venda.
 * Este é o core do sistema de PDV.
 */

import {
  pgTable,
  text,
  timestamp,
  integer,
  boolean,
  pgEnum,
  index,
  real,
  jsonb,
} from 'drizzle-orm/pg-core';
import { relations } from 'drizzle-orm';
import { users } from './users';
import { customers } from './customers';
import { products } from './products';

/**
 * Enum para status da venda
 */
export const saleStatusEnum = pgEnum('sale_status', [
  'pending',    // Venda em andamento
  'completed',  // Venda finalizada
  'cancelled',  // Venda cancelada
  'refunded',   // Venda devolvida
]);

/**
 * Enum para formas de pagamento
 */
export const paymentMethodEnum = pgEnum('payment_method', [
  'cash',           // Dinheiro
  'credit_card',    // Cartão de crédito
  'debit_card',     // Cartão de débito
  'pix',            // PIX
  'bank_transfer',  // Transferência bancária
  'store_credit',   // Crédito da loja
  'other',          // Outros
]);

/**
 * Tabela de vendas
 *
 * Campos importantes:
 * - receipt_number: Número único do cupom fiscal/recibo
 * - payment_details: JSON com detalhes específicos do pagamento
 * - Todos os valores monetários em centavos
 */
export const sales = pgTable(
  'sales',
  {
    id: text('id').primaryKey(),

    // Relacionamentos
    customer_id: text('customer_id').references(() => customers.id),
    user_id: text('user_id')
      .notNull()
      .references(() => users.id),

    // Status
    status: saleStatusEnum('status').notNull().default('pending'),

    // Valores (em centavos)
    subtotal: integer('subtotal').notNull().default(0),
    discount_amount: integer('discount_amount').notNull().default(0),
    discount_percent: real('discount_percent').notNull().default(0),
    tax_amount: integer('tax_amount').notNull().default(0),
    total: integer('total').notNull().default(0),

    // Pagamento
    payment_method: paymentMethodEnum('payment_method'),
    payment_details: jsonb('payment_details').$type<PaymentDetailsJson>(),

    // Informações adicionais
    notes: text('notes'),
    receipt_number: text('receipt_number').notNull().unique(),

    // Datas
    completed_at: timestamp('completed_at', { mode: 'string' }),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    customerIdx: index('sales_customer_idx').on(table.customer_id),
    userIdx: index('sales_user_idx').on(table.user_id),
    statusIdx: index('sales_status_idx').on(table.status),
    receiptIdx: index('sales_receipt_idx').on(table.receipt_number),
    createdIdx: index('sales_created_idx').on(table.created_at),
    completedIdx: index('sales_completed_idx').on(table.completed_at),
  })
);

/**
 * Tabela de itens de venda
 *
 * Armazena snapshot dos dados do produto no momento da venda
 * para garantir histórico correto mesmo se o produto for alterado.
 */
export const saleItems = pgTable(
  'sale_items',
  {
    id: text('id').primaryKey(),

    // Relacionamentos
    sale_id: text('sale_id')
      .notNull()
      .references(() => sales.id, { onDelete: 'cascade' }),
    product_id: text('product_id')
      .notNull()
      .references(() => products.id),

    // Snapshot do produto (para histórico)
    product_name: text('product_name').notNull(),
    product_sku: text('product_sku').notNull(),

    // Quantidades e valores (em centavos, exceto quantity)
    quantity: real('quantity').notNull(),
    unit_price: integer('unit_price').notNull(),
    discount_amount: integer('discount_amount').notNull().default(0),
    discount_percent: real('discount_percent').notNull().default(0),
    tax_amount: integer('tax_amount').notNull().default(0),
    total: integer('total').notNull(),

    // Observações do item
    notes: text('notes'),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    saleIdx: index('sale_items_sale_idx').on(table.sale_id),
    productIdx: index('sale_items_product_idx').on(table.product_id),
  })
);

/**
 * Relações das vendas
 */
export const salesRelations = relations(sales, ({ one, many }) => ({
  customer: one(customers, {
    fields: [sales.customer_id],
    references: [customers.id],
  }),
  user: one(users, {
    fields: [sales.user_id],
    references: [users.id],
  }),
  items: many(saleItems),
}));

/**
 * Relações dos itens de venda
 */
export const saleItemsRelations = relations(saleItems, ({ one }) => ({
  sale: one(sales, {
    fields: [saleItems.sale_id],
    references: [sales.id],
  }),
  product: one(products, {
    fields: [saleItems.product_id],
    references: [products.id],
  }),
}));

/**
 * Tipo para payment_details JSON
 */
export interface PaymentDetailsJson {
  // Para cartão
  card_brand?: string;
  card_last_digits?: string;
  installments?: number;
  authorization_code?: string;

  // Para PIX
  pix_key?: string;
  pix_transaction_id?: string;

  // Para dinheiro
  amount_received?: number;
  change_amount?: number;

  // Para múltiplos pagamentos
  payments?: Array<{
    method: string;
    amount: number;
    details?: Partial<Omit<PaymentDetailsJson, 'payments'>>;
  }>;
}

/**
 * Tipos inferidos dos schemas
 */
export type Sale = typeof sales.$inferSelect;
export type NewSale = typeof sales.$inferInsert;
export type SaleItem = typeof saleItems.$inferSelect;
export type NewSaleItem = typeof saleItems.$inferInsert;
