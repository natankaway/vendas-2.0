/**
 * Serviço de Produtos
 *
 * Gerencia operações CRUD de produtos com suporte offline-first.
 * Inclui funcionalidades específicas como:
 * - Busca por código de barras
 * - Controle de estoque
 * - Alertas de estoque baixo
 */

import { getSqliteDb, getSqliteClient } from '@/lib/db';
import { productsLocal, productCategoriesLocal, stockMovementsLocal } from '@/lib/db/schema/sqlite-schema';
import { createBaseService, type ListOptions, type ListResult } from './base-service';
import { eq, and, isNull, like, or, lte, desc, sql } from 'drizzle-orm';
import { v4 as uuidv4 } from 'uuid';
import { addToQueue } from '@/lib/sync/queue';

// =============================================================================
// TIPOS
// =============================================================================

export interface Product {
  id: string;
  name: string;
  description: string | null;
  sku: string;
  barcode: string | null;
  category_id: string | null;
  price: number;
  cost_price: number;
  stock_quantity: number;
  min_stock_quantity: number;
  max_stock_quantity: number | null;
  unit: string;
  is_active: boolean | number;
  is_weighable: boolean | number;
  allow_decimal_quantity: boolean | number;
  tax_rate: number;
  image_url: string | null;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface CreateProductInput {
  name: string;
  description?: string;
  sku: string;
  barcode?: string;
  category_id?: string;
  price: number;
  cost_price?: number;
  stock_quantity?: number;
  min_stock_quantity?: number;
  max_stock_quantity?: number;
  unit?: string;
  is_weighable?: boolean;
  allow_decimal_quantity?: boolean;
  tax_rate?: number;
  image_url?: string;
}

export interface UpdateProductInput {
  name?: string;
  description?: string;
  barcode?: string;
  category_id?: string;
  price?: number;
  cost_price?: number;
  min_stock_quantity?: number;
  max_stock_quantity?: number;
  unit?: string;
  is_active?: boolean;
  is_weighable?: boolean;
  allow_decimal_quantity?: boolean;
  tax_rate?: number;
  image_url?: string;
}

export interface ProductCategory {
  id: string;
  name: string;
  description: string | null;
  color: string | null;
  icon: string | null;
  parent_id: string | null;
  sort_order: number;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface StockMovementInput {
  product_id: string;
  quantity: number;
  type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
  reason?: string;
  reference_id?: string;
  unit_cost?: number;
  user_id: string;
}

// =============================================================================
// SERVIÇO BASE
// =============================================================================

const baseService = createBaseService<
  typeof productsLocal,
  Product,
  CreateProductInput,
  UpdateProductInput
>('products', productsLocal);

// =============================================================================
// SERVIÇO ESTENDIDO
// =============================================================================

export const productsService = {
  ...baseService,

  /**
   * Cria produto com valores padrão
   */
  async create(data: CreateProductInput): Promise<Product> {
    const db = getSqliteDb();
    const now = new Date().toISOString();
    const id = uuidv4();

    const product = {
      id,
      name: data.name,
      description: data.description || null,
      sku: data.sku,
      barcode: data.barcode || null,
      category_id: data.category_id || null,
      price: data.price,
      cost_price: data.cost_price || 0,
      stock_quantity: data.stock_quantity || 0,
      min_stock_quantity: data.min_stock_quantity || 0,
      max_stock_quantity: data.max_stock_quantity || null,
      unit: data.unit || 'UN',
      is_active: 1,
      is_weighable: data.is_weighable ? 1 : 0,
      allow_decimal_quantity: data.allow_decimal_quantity ? 1 : 0,
      tax_rate: data.tax_rate || 0,
      image_url: data.image_url || null,
      created_at: now,
      updated_at: now,
      deleted_at: null,
      version: 1,
      synced_at: null,
      local_only: 1,
    };

    await db.insert(productsLocal).values(product);
    await addToQueue('products', id, 'create', product);

    return this.findById(id) as Promise<Product>;
  },

  /**
   * Busca produto por código de barras
   */
  async findByBarcode(barcode: string): Promise<Product | null> {
    const db = getSqliteDb();
    const results = await db
      .select()
      .from(productsLocal)
      .where(
        and(
          eq(productsLocal.barcode, barcode),
          isNull(productsLocal.deleted_at)
        )
      )
      .limit(1);

    return (results[0] as Product) || null;
  },

  /**
   * Busca produto por SKU
   */
  async findBySku(sku: string): Promise<Product | null> {
    const db = getSqliteDb();
    const results = await db
      .select()
      .from(productsLocal)
      .where(
        and(
          eq(productsLocal.sku, sku),
          isNull(productsLocal.deleted_at)
        )
      )
      .limit(1);

    return (results[0] as Product) || null;
  },

  /**
   * Busca produtos por código de barras ou SKU
   */
  async findByCode(code: string): Promise<Product | null> {
    const db = getSqliteDb();
    const results = await db
      .select()
      .from(productsLocal)
      .where(
        and(
          or(
            eq(productsLocal.barcode, code),
            eq(productsLocal.sku, code)
          ),
          isNull(productsLocal.deleted_at),
          eq(productsLocal.is_active, 1)
        )
      )
      .limit(1);

    return (results[0] as Product) || null;
  },

  /**
   * Lista produtos ativos para PDV
   */
  async listForPDV(categoryId?: string): Promise<Product[]> {
    const db = getSqliteDb();

    let query = db
      .select()
      .from(productsLocal)
      .where(
        and(
          eq(productsLocal.is_active, 1),
          isNull(productsLocal.deleted_at)
        )
      );

    if (categoryId) {
      query = query.where(
        and(
          eq(productsLocal.is_active, 1),
          isNull(productsLocal.deleted_at),
          eq(productsLocal.category_id, categoryId)
        )
      ) as any;
    }

    return query.orderBy(productsLocal.name) as Promise<Product[]>;
  },

  /**
   * Busca produtos com estoque baixo
   */
  async findLowStock(): Promise<Product[]> {
    const db = getSqliteDb();
    return db
      .select()
      .from(productsLocal)
      .where(
        and(
          isNull(productsLocal.deleted_at),
          eq(productsLocal.is_active, 1),
          sql`${productsLocal.stock_quantity} <= ${productsLocal.min_stock_quantity}`
        )
      ) as Promise<Product[]>;
  },

  /**
   * Busca produtos sem estoque
   */
  async findOutOfStock(): Promise<Product[]> {
    const db = getSqliteDb();
    return db
      .select()
      .from(productsLocal)
      .where(
        and(
          isNull(productsLocal.deleted_at),
          eq(productsLocal.is_active, 1),
          lte(productsLocal.stock_quantity, 0)
        )
      ) as Promise<Product[]>;
  },

  /**
   * Atualiza estoque de um produto
   */
  async updateStock(
    productId: string,
    quantity: number,
    type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss',
    userId: string,
    options: {
      reason?: string;
      referenceId?: string;
      unitCost?: number;
    } = {}
  ): Promise<Product | null> {
    const db = getSqliteDb();
    const product = await this.findById(productId);
    if (!product) return null;

    const now = new Date().toISOString();

    // Calcula nova quantidade
    const newQuantity = product.stock_quantity + quantity;

    // Atualiza produto
    await db
      .update(productsLocal)
      .set({
        stock_quantity: newQuantity,
        updated_at: now,
        version: product.version + 1,
      })
      .where(eq(productsLocal.id, productId));

    // Registra movimentação
    const movementId = uuidv4();
    const movement = {
      id: movementId,
      product_id: productId,
      quantity,
      type,
      reason: options.reason || null,
      reference_id: options.referenceId || null,
      unit_cost: options.unitCost || null,
      user_id: userId,
      created_at: now,
      updated_at: now,
      deleted_at: null,
      version: 1,
      synced_at: null,
      local_only: 1,
    };

    await db.insert(stockMovementsLocal).values(movement);
    await addToQueue('stock_movements', movementId, 'create', movement);

    // Adiciona atualização do produto à fila
    const updatedProduct = await this.findById(productId);
    if (updatedProduct) {
      await addToQueue('products', productId, 'update', updatedProduct as Record<string, unknown>);
    }

    return updatedProduct;
  },

  /**
   * Gera próximo SKU disponível
   */
  async generateSku(prefix = 'PRD'): Promise<string> {
    const client = getSqliteClient();
    const result = client
      .prepare(
        `SELECT MAX(CAST(SUBSTR(sku, LENGTH(?) + 1) AS INTEGER)) as max_num
         FROM products
         WHERE sku LIKE ? || '%'`
      )
      .get(prefix, prefix) as { max_num: number | null };

    const nextNum = (result.max_num || 0) + 1;
    return `${prefix}${nextNum.toString().padStart(6, '0')}`;
  },

  /**
   * Verifica se SKU já existe
   */
  async skuExists(sku: string, excludeId?: string): Promise<boolean> {
    const db = getSqliteDb();
    let query = db
      .select({ id: productsLocal.id })
      .from(productsLocal)
      .where(eq(productsLocal.sku, sku));

    if (excludeId) {
      query = query.where(
        and(
          eq(productsLocal.sku, sku),
          sql`${productsLocal.id} != ${excludeId}`
        )
      ) as any;
    }

    const results = await query.limit(1);
    return results.length > 0;
  },
};

// =============================================================================
// SERVIÇO DE CATEGORIAS
// =============================================================================

const baseCategoryService = createBaseService<
  typeof productCategoriesLocal,
  ProductCategory,
  { name: string; description?: string; color?: string; icon?: string; parent_id?: string; sort_order?: number },
  { name?: string; description?: string; color?: string; icon?: string; parent_id?: string; sort_order?: number }
>('product_categories', productCategoriesLocal);

export const categoriesService = {
  ...baseCategoryService,

  /**
   * Lista categorias em estrutura de árvore
   */
  async listTree(): Promise<(ProductCategory & { subcategories: ProductCategory[] })[]> {
    const db = getSqliteDb();

    // Busca todas as categorias
    const all = await db
      .select()
      .from(productCategoriesLocal)
      .where(isNull(productCategoriesLocal.deleted_at))
      .orderBy(productCategoriesLocal.sort_order);

    // Organiza em árvore
    const categories = all as ProductCategory[];
    const rootCategories = categories.filter((c) => !c.parent_id);

    return rootCategories.map((root) => ({
      ...root,
      subcategories: categories.filter((c) => c.parent_id === root.id),
    }));
  },

  /**
   * Lista categorias para select
   */
  async listForSelect(): Promise<{ value: string; label: string }[]> {
    const db = getSqliteDb();

    const categories = await db
      .select({ id: productCategoriesLocal.id, name: productCategoriesLocal.name })
      .from(productCategoriesLocal)
      .where(isNull(productCategoriesLocal.deleted_at))
      .orderBy(productCategoriesLocal.name);

    return categories.map((c) => ({ value: c.id, label: c.name }));
  },
};
