/**
 * Schema SQLite
 *
 * Este arquivo define os schemas para o banco SQLite local.
 * O SQLite não suporta:
 * - Enums do Postgres (usamos TEXT com check constraints)
 * - JSONB (usamos TEXT com JSON serializado)
 * - Alguns tipos de dados específicos
 *
 * A estrutura é idêntica ao Postgres para facilitar sincronização.
 */

import {
  sqliteTable,
  text,
  integer,
  real,
  index,
} from 'drizzle-orm/sqlite-core';
import { relations } from 'drizzle-orm';

// =============================================================================
// USUÁRIOS
// =============================================================================

export const usersLocal = sqliteTable(
  'users',
  {
    id: text('id').primaryKey(),
    email: text('email').notNull().unique(),
    name: text('name').notNull(),
    password_hash: text('password_hash'),
    role: text('role', { enum: ['admin', 'manager', 'cashier'] }).notNull().default('cashier'),
    status: text('status', { enum: ['active', 'inactive', 'pending'] }).notNull().default('active'),
    avatar_url: text('avatar_url'),
    phone: text('phone'),
    last_login_at: text('last_login_at'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    emailIdx: index('users_email_idx').on(table.email),
  })
);

// =============================================================================
// CLIENTES
// =============================================================================

export const customersLocal = sqliteTable(
  'customers',
  {
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    email: text('email'),
    phone: text('phone'),
    document: text('document'),
    document_type: text('document_type', { enum: ['cpf', 'cnpj'] }),
    address: text('address'),
    city: text('city'),
    state: text('state'),
    zip_code: text('zip_code'),
    notes: text('notes'),
    credit_limit: integer('credit_limit').notNull().default(0),
    current_balance: integer('current_balance').notNull().default(0),
    total_purchases: integer('total_purchases').notNull().default(0),
    last_purchase_at: text('last_purchase_at'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    nameIdx: index('customers_name_idx').on(table.name),
    phoneIdx: index('customers_phone_idx').on(table.phone),
    documentIdx: index('customers_document_idx').on(table.document),
  })
);

// =============================================================================
// CATEGORIAS DE PRODUTOS
// =============================================================================

export const productCategoriesLocal = sqliteTable(
  'product_categories',
  {
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    description: text('description'),
    color: text('color'),
    icon: text('icon'),
    parent_id: text('parent_id'),
    sort_order: integer('sort_order').notNull().default(0),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    nameIdx: index('categories_name_idx').on(table.name),
  })
);

// =============================================================================
// PRODUTOS
// =============================================================================

export const productsLocal = sqliteTable(
  'products',
  {
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    description: text('description'),
    sku: text('sku').notNull().unique(),
    barcode: text('barcode'),
    category_id: text('category_id').references(() => productCategoriesLocal.id),
    price: integer('price').notNull(),
    cost_price: integer('cost_price').notNull().default(0),
    stock_quantity: real('stock_quantity').notNull().default(0),
    min_stock_quantity: real('min_stock_quantity').notNull().default(0),
    max_stock_quantity: real('max_stock_quantity'),
    unit: text('unit').notNull().default('UN'),
    is_active: integer('is_active', { mode: 'boolean' }).notNull().default(true),
    is_weighable: integer('is_weighable', { mode: 'boolean' }).notNull().default(false),
    allow_decimal_quantity: integer('allow_decimal_quantity', { mode: 'boolean' }).notNull().default(false),
    tax_rate: real('tax_rate').notNull().default(0),
    image_url: text('image_url'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    nameIdx: index('products_name_idx').on(table.name),
    skuIdx: index('products_sku_idx').on(table.sku),
    barcodeIdx: index('products_barcode_idx').on(table.barcode),
    categoryIdx: index('products_category_idx').on(table.category_id),
  })
);

// =============================================================================
// MOVIMENTAÇÕES DE ESTOQUE
// =============================================================================

export const stockMovementsLocal = sqliteTable(
  'stock_movements',
  {
    id: text('id').primaryKey(),
    product_id: text('product_id').notNull().references(() => productsLocal.id),
    quantity: real('quantity').notNull(),
    type: text('type', { enum: ['purchase', 'sale', 'adjustment', 'return', 'loss'] }).notNull(),
    reason: text('reason'),
    reference_id: text('reference_id'),
    unit_cost: integer('unit_cost'),
    user_id: text('user_id').notNull().references(() => usersLocal.id),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    productIdx: index('stock_movements_product_idx').on(table.product_id),
    typeIdx: index('stock_movements_type_idx').on(table.type),
  })
);

// =============================================================================
// VENDAS
// =============================================================================

export const salesLocal = sqliteTable(
  'sales',
  {
    id: text('id').primaryKey(),
    customer_id: text('customer_id').references(() => customersLocal.id),
    user_id: text('user_id').notNull().references(() => usersLocal.id),
    status: text('status', { enum: ['pending', 'completed', 'cancelled', 'refunded'] }).notNull().default('pending'),
    subtotal: integer('subtotal').notNull().default(0),
    discount_amount: integer('discount_amount').notNull().default(0),
    discount_percent: real('discount_percent').notNull().default(0),
    tax_amount: integer('tax_amount').notNull().default(0),
    total: integer('total').notNull().default(0),
    payment_method: text('payment_method', {
      enum: ['cash', 'credit_card', 'debit_card', 'pix', 'bank_transfer', 'store_credit', 'other']
    }),
    payment_details: text('payment_details'), // JSON serializado
    notes: text('notes'),
    receipt_number: text('receipt_number').notNull().unique(),
    completed_at: text('completed_at'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    customerIdx: index('sales_customer_idx').on(table.customer_id),
    userIdx: index('sales_user_idx').on(table.user_id),
    statusIdx: index('sales_status_idx').on(table.status),
    receiptIdx: index('sales_receipt_idx').on(table.receipt_number),
    createdIdx: index('sales_created_idx').on(table.created_at),
  })
);

// =============================================================================
// ITENS DE VENDA
// =============================================================================

export const saleItemsLocal = sqliteTable(
  'sale_items',
  {
    id: text('id').primaryKey(),
    sale_id: text('sale_id').notNull().references(() => salesLocal.id, { onDelete: 'cascade' }),
    product_id: text('product_id').notNull().references(() => productsLocal.id),
    product_name: text('product_name').notNull(),
    product_sku: text('product_sku').notNull(),
    quantity: real('quantity').notNull(),
    unit_price: integer('unit_price').notNull(),
    discount_amount: integer('discount_amount').notNull().default(0),
    discount_percent: real('discount_percent').notNull().default(0),
    tax_amount: integer('tax_amount').notNull().default(0),
    total: integer('total').notNull(),
    notes: text('notes'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
    updated_at: text('updated_at').notNull().default("(datetime('now'))"),
    deleted_at: text('deleted_at'),
    version: integer('version').notNull().default(1),
    synced_at: text('synced_at'),
    local_only: integer('local_only', { mode: 'boolean' }).notNull().default(false),
  },
  (table) => ({
    saleIdx: index('sale_items_sale_idx').on(table.sale_id),
    productIdx: index('sale_items_product_idx').on(table.product_id),
  })
);

// =============================================================================
// TABELAS DE SINCRONIZAÇÃO (APENAS LOCAL)
// =============================================================================

export const syncQueueLocal = sqliteTable(
  'sync_queue',
  {
    id: text('id').primaryKey(),
    entity_type: text('entity_type').notNull(),
    entity_id: text('entity_id').notNull(),
    operation: text('operation', { enum: ['create', 'update', 'delete'] }).notNull(),
    data: text('data').notNull(), // JSON serializado
    status: text('status', { enum: ['pending', 'syncing', 'completed', 'failed', 'conflict'] }).notNull().default('pending'),
    priority: integer('priority').notNull().default(0),
    attempts: integer('attempts').notNull().default(0),
    max_attempts: integer('max_attempts').notNull().default(3),
    last_attempt_at: text('last_attempt_at'),
    next_attempt_at: text('next_attempt_at'),
    error_message: text('error_message'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
  },
  (table) => ({
    statusIdx: index('sync_queue_status_idx').on(table.status),
    entityTypeIdx: index('sync_queue_entity_type_idx').on(table.entity_type),
    priorityIdx: index('sync_queue_priority_idx').on(table.priority),
  })
);

export const syncLogsLocal = sqliteTable(
  'sync_logs',
  {
    id: text('id').primaryKey(),
    started_at: text('started_at').notNull().default("(datetime('now'))"),
    completed_at: text('completed_at'),
    status: text('status', { enum: ['running', 'completed', 'failed'] }).notNull().default('running'),
    items_processed: integer('items_processed').notNull().default(0),
    items_succeeded: integer('items_succeeded').notNull().default(0),
    items_failed: integer('items_failed').notNull().default(0),
    items_conflicted: integer('items_conflicted').notNull().default(0),
    error_message: text('error_message'),
    details: text('details'), // JSON serializado
  },
  (table) => ({
    startedIdx: index('sync_logs_started_idx').on(table.started_at),
  })
);

export const syncConflictsLocal = sqliteTable(
  'sync_conflicts',
  {
    id: text('id').primaryKey(),
    entity_type: text('entity_type').notNull(),
    entity_id: text('entity_id').notNull(),
    local_data: text('local_data').notNull(), // JSON serializado
    remote_data: text('remote_data').notNull(), // JSON serializado
    local_updated_at: text('local_updated_at').notNull(),
    remote_updated_at: text('remote_updated_at').notNull(),
    resolution: text('resolution', { enum: ['local_wins', 'remote_wins', 'merged', 'manual'] }),
    resolved_data: text('resolved_data'), // JSON serializado
    resolved_at: text('resolved_at'),
    resolved_by: text('resolved_by'),
    created_at: text('created_at').notNull().default("(datetime('now'))"),
  },
  (table) => ({
    entityIdx: index('sync_conflicts_entity_idx').on(table.entity_type, table.entity_id),
  })
);

export const localSettingsLocal = sqliteTable('local_settings', {
  key: text('key').primaryKey(),
  value: text('value').notNull(), // JSON serializado
  updated_at: text('updated_at').notNull().default("(datetime('now'))"),
});

// =============================================================================
// RELAÇÕES SQLITE
// =============================================================================

export const usersLocalRelations = relations(usersLocal, ({ many }) => ({
  sales: many(salesLocal),
  stockMovements: many(stockMovementsLocal),
}));

export const customersLocalRelations = relations(customersLocal, ({ many }) => ({
  sales: many(salesLocal),
}));

export const productCategoriesLocalRelations = relations(productCategoriesLocal, ({ one, many }) => ({
  parent: one(productCategoriesLocal, {
    fields: [productCategoriesLocal.parent_id],
    references: [productCategoriesLocal.id],
    relationName: 'subcategories',
  }),
  subcategories: many(productCategoriesLocal, { relationName: 'subcategories' }),
  products: many(productsLocal),
}));

export const productsLocalRelations = relations(productsLocal, ({ one, many }) => ({
  category: one(productCategoriesLocal, {
    fields: [productsLocal.category_id],
    references: [productCategoriesLocal.id],
  }),
  stockMovements: many(stockMovementsLocal),
  saleItems: many(saleItemsLocal),
}));

export const stockMovementsLocalRelations = relations(stockMovementsLocal, ({ one }) => ({
  product: one(productsLocal, {
    fields: [stockMovementsLocal.product_id],
    references: [productsLocal.id],
  }),
  user: one(usersLocal, {
    fields: [stockMovementsLocal.user_id],
    references: [usersLocal.id],
  }),
}));

export const salesLocalRelations = relations(salesLocal, ({ one, many }) => ({
  customer: one(customersLocal, {
    fields: [salesLocal.customer_id],
    references: [customersLocal.id],
  }),
  user: one(usersLocal, {
    fields: [salesLocal.user_id],
    references: [usersLocal.id],
  }),
  items: many(saleItemsLocal),
}));

export const saleItemsLocalRelations = relations(saleItemsLocal, ({ one }) => ({
  sale: one(salesLocal, {
    fields: [saleItemsLocal.sale_id],
    references: [salesLocal.id],
  }),
  product: one(productsLocal, {
    fields: [saleItemsLocal.product_id],
    references: [productsLocal.id],
  }),
}));

// =============================================================================
// TIPOS SQLITE
// =============================================================================

export type UserLocal = typeof usersLocal.$inferSelect;
export type NewUserLocal = typeof usersLocal.$inferInsert;
export type CustomerLocal = typeof customersLocal.$inferSelect;
export type NewCustomerLocal = typeof customersLocal.$inferInsert;
export type ProductCategoryLocal = typeof productCategoriesLocal.$inferSelect;
export type NewProductCategoryLocal = typeof productCategoriesLocal.$inferInsert;
export type ProductLocal = typeof productsLocal.$inferSelect;
export type NewProductLocal = typeof productsLocal.$inferInsert;
export type StockMovementLocal = typeof stockMovementsLocal.$inferSelect;
export type NewStockMovementLocal = typeof stockMovementsLocal.$inferInsert;
export type SaleLocal = typeof salesLocal.$inferSelect;
export type NewSaleLocal = typeof salesLocal.$inferInsert;
export type SaleItemLocal = typeof saleItemsLocal.$inferSelect;
export type NewSaleItemLocal = typeof saleItemsLocal.$inferInsert;
export type SyncQueueLocal = typeof syncQueueLocal.$inferSelect;
export type NewSyncQueueLocal = typeof syncQueueLocal.$inferInsert;
export type SyncLogLocal = typeof syncLogsLocal.$inferSelect;
export type NewSyncLogLocal = typeof syncLogsLocal.$inferInsert;
export type SyncConflictLocal = typeof syncConflictsLocal.$inferSelect;
export type NewSyncConflictLocal = typeof syncConflictsLocal.$inferInsert;
export type LocalSettingLocal = typeof localSettingsLocal.$inferSelect;
export type NewLocalSettingLocal = typeof localSettingsLocal.$inferInsert;
