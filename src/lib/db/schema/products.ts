/**
 * Schema de Produtos e Categorias
 *
 * Define as estruturas das tabelas de produtos, categorias e movimentações de estoque.
 * Todos os valores monetários são armazenados em centavos.
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
} from 'drizzle-orm/pg-core';
import { relations } from 'drizzle-orm';
import { users } from './users';
import { saleItems } from './sales';

/**
 * Enum para tipo de movimentação de estoque
 */
export const stockMovementTypeEnum = pgEnum('stock_movement_type', [
  'purchase',    // Compra/entrada
  'sale',        // Venda
  'adjustment',  // Ajuste manual
  'return',      // Devolução
  'loss',        // Perda/quebra
]);

/**
 * Tabela de categorias de produtos
 *
 * Suporta hierarquia através do campo parent_id.
 * O campo sort_order permite ordenação customizada no PDV.
 */
export const productCategories = pgTable(
  'product_categories',
  {
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    description: text('description'),
    color: text('color'), // Cor hex para UI
    icon: text('icon'),   // Nome do ícone (lucide-react)
    parent_id: text('parent_id'), // Self-reference para subcategorias
    sort_order: integer('sort_order').notNull().default(0),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    nameIdx: index('categories_name_idx').on(table.name),
    parentIdx: index('categories_parent_idx').on(table.parent_id),
  })
);

/**
 * Tabela de produtos
 *
 * Campos importantes:
 * - sku: Código interno único (gerado automaticamente ou manual)
 * - barcode: Código de barras EAN (opcional, para leitor de código)
 * - price/cost_price: Em centavos
 * - is_weighable: Para produtos vendidos por peso (balança)
 * - allow_decimal_quantity: Se permite quantidades fracionárias
 */
export const products = pgTable(
  'products',
  {
    id: text('id').primaryKey(),
    name: text('name').notNull(),
    description: text('description'),

    // Códigos
    sku: text('sku').notNull().unique(),
    barcode: text('barcode'),

    // Categoria
    category_id: text('category_id').references(() => productCategories.id),

    // Preços (em centavos)
    price: integer('price').notNull(),
    cost_price: integer('cost_price').notNull().default(0),

    // Estoque
    stock_quantity: real('stock_quantity').notNull().default(0),
    min_stock_quantity: real('min_stock_quantity').notNull().default(0),
    max_stock_quantity: real('max_stock_quantity'),

    // Unidade e características
    unit: text('unit').notNull().default('UN'),
    is_active: boolean('is_active').notNull().default(true),
    is_weighable: boolean('is_weighable').notNull().default(false),
    allow_decimal_quantity: boolean('allow_decimal_quantity').notNull().default(false),

    // Impostos
    tax_rate: real('tax_rate').notNull().default(0), // Em percentual

    // Imagem
    image_url: text('image_url'),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    nameIdx: index('products_name_idx').on(table.name),
    skuIdx: index('products_sku_idx').on(table.sku),
    barcodeIdx: index('products_barcode_idx').on(table.barcode),
    categoryIdx: index('products_category_idx').on(table.category_id),
    activeIdx: index('products_active_idx').on(table.is_active),
  })
);

/**
 * Tabela de movimentações de estoque
 *
 * Registra todas as entradas e saídas do estoque para auditoria.
 * O campo quantity é positivo para entradas e negativo para saídas.
 */
export const stockMovements = pgTable(
  'stock_movements',
  {
    id: text('id').primaryKey(),
    product_id: text('product_id')
      .notNull()
      .references(() => products.id),

    quantity: real('quantity').notNull(), // Positivo = entrada, Negativo = saída
    type: stockMovementTypeEnum('type').notNull(),
    reason: text('reason'),
    reference_id: text('reference_id'), // ID da venda, compra, etc
    unit_cost: integer('unit_cost'), // Custo unitário no momento da movimentação

    user_id: text('user_id')
      .notNull()
      .references(() => users.id),

    // Timestamps e sincronização
    created_at: timestamp('created_at', { mode: 'string' }).notNull().defaultNow(),
    updated_at: timestamp('updated_at', { mode: 'string' }).notNull().defaultNow(),
    deleted_at: timestamp('deleted_at', { mode: 'string' }),
    version: integer('version').notNull().default(1),
    synced_at: timestamp('synced_at', { mode: 'string' }),
    local_only: boolean('local_only').notNull().default(false),
  },
  (table) => ({
    productIdx: index('stock_movements_product_idx').on(table.product_id),
    typeIdx: index('stock_movements_type_idx').on(table.type),
    userIdx: index('stock_movements_user_idx').on(table.user_id),
    createdIdx: index('stock_movements_created_idx').on(table.created_at),
  })
);

/**
 * Relações das categorias
 */
export const productCategoriesRelations = relations(productCategories, ({ one, many }) => ({
  parent: one(productCategories, {
    fields: [productCategories.parent_id],
    references: [productCategories.id],
    relationName: 'subcategories',
  }),
  subcategories: many(productCategories, { relationName: 'subcategories' }),
  products: many(products),
}));

/**
 * Relações dos produtos
 */
export const productsRelations = relations(products, ({ one, many }) => ({
  category: one(productCategories, {
    fields: [products.category_id],
    references: [productCategories.id],
  }),
  stockMovements: many(stockMovements),
  saleItems: many(saleItems),
}));

/**
 * Relações das movimentações de estoque
 */
export const stockMovementsRelations = relations(stockMovements, ({ one }) => ({
  product: one(products, {
    fields: [stockMovements.product_id],
    references: [products.id],
  }),
  user: one(users, {
    fields: [stockMovements.user_id],
    references: [users.id],
  }),
}));

/**
 * Tipos inferidos dos schemas
 */
export type ProductCategory = typeof productCategories.$inferSelect;
export type NewProductCategory = typeof productCategories.$inferInsert;
export type Product = typeof products.$inferSelect;
export type NewProduct = typeof products.$inferInsert;
export type StockMovement = typeof stockMovements.$inferSelect;
export type NewStockMovement = typeof stockMovements.$inferInsert;
