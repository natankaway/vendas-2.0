/**
 * Banco de Dados Offline com Dexie (IndexedDB)
 *
 * Este módulo gerencia o armazenamento local para funcionamento offline.
 * Os dados são sincronizados com o Supabase quando a conexão é restabelecida.
 */

import Dexie, { Table } from 'dexie';

// Tipos das entidades
export interface LocalProduct {
  id: string;
  name: string;
  description: string | null;
  sku: string | null;
  barcode: string | null;
  category_id: string | null;
  price: number;
  cost_price: number;
  stock_quantity: number;
  min_stock_quantity: number;
  max_stock_quantity: number | null;
  unit: string;
  is_active: boolean;
  is_weighable: boolean;
  allow_decimal_quantity: boolean;
  tax_rate: number;
  image_url: string | null;
  expiration_date: string | null;
  created_at: string;
  updated_at: string;
  // Campos de sincronização
  _synced: boolean;
  _last_sync: string | null;
}

export interface LocalCategory {
  id: string;
  name: string;
  description: string | null;
  color: string | null;
  icon: string | null;
  parent_id: string | null;
  is_active: boolean;
  sort_order: number;
  created_at: string;
  updated_at: string;
  _synced: boolean;
  _last_sync: string | null;
}

export interface LocalCustomer {
  id: string;
  name: string;
  email: string | null;
  phone: string | null;
  document: string | null;
  address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  notes: string | null;
  is_active: boolean;
  created_at: string;
  updated_at: string;
  _synced: boolean;
  _last_sync: string | null;
}

export interface LocalSale {
  id: string;
  customer_id: string | null;
  user_id: string | null;
  subtotal: number;
  discount: number;
  total: number;
  payment_method: string;
  payment_status: string;
  status: string;
  notes: string | null;
  cash_register_id: string | null;
  created_at: string;
  updated_at: string;
  _synced: boolean;
  _last_sync: string | null;
  _local_id?: string; // ID temporário para vendas criadas offline
}

export interface LocalSaleItem {
  id: string;
  sale_id: string;
  product_id: string;
  product_name: string;
  quantity: number;
  unit_price: number;
  discount: number;
  total: number;
  created_at: string;
  _synced: boolean;
}

export interface SyncQueueItem {
  id?: number;
  entity_type: 'products' | 'categories' | 'customers' | 'sales' | 'sale_items';
  entity_id: string;
  operation: 'create' | 'update' | 'delete' | 'stock_movement';
  data: Record<string, unknown>;
  created_at: string;
  attempts: number;
  last_error: string | null;
  status: 'pending' | 'processing' | 'failed';
}

export interface LocalConfig {
  key: string;
  value: unknown;
  updated_at: string;
}

/**
 * Classe do banco de dados offline
 */
class OfflineDatabase extends Dexie {
  products!: Table<LocalProduct, string>;
  categories!: Table<LocalCategory, string>;
  customers!: Table<LocalCustomer, string>;
  sales!: Table<LocalSale, string>;
  saleItems!: Table<LocalSaleItem, string>;
  syncQueue!: Table<SyncQueueItem, number>;
  config!: Table<LocalConfig, string>;

  constructor() {
    super('KawayPOS');

    this.version(1).stores({
      // Índices para busca rápida
      products: 'id, name, sku, barcode, category_id, is_active, _synced',
      categories: 'id, name, is_active, _synced',
      customers: 'id, name, document, phone, _synced',
      sales: 'id, customer_id, status, created_at, _synced, _local_id',
      saleItems: 'id, sale_id, product_id, _synced',
      syncQueue: '++id, entity_type, entity_id, status, created_at',
      config: 'key',
    });
  }

  /**
   * Adiciona item à fila de sincronização
   */
  async addToSyncQueue(
    entityType: SyncQueueItem['entity_type'],
    entityId: string,
    operation: SyncQueueItem['operation'],
    data: Record<string, unknown>
  ): Promise<void> {
    await this.syncQueue.add({
      entity_type: entityType,
      entity_id: entityId,
      operation,
      data,
      created_at: new Date().toISOString(),
      attempts: 0,
      last_error: null,
      status: 'pending',
    });
  }

  /**
   * Obtém itens pendentes de sincronização
   */
  async getPendingSyncItems(): Promise<SyncQueueItem[]> {
    return this.syncQueue
      .where('status')
      .equals('pending')
      .sortBy('created_at');
  }

  /**
   * Obtém contagem de itens pendentes
   */
  async getPendingSyncCount(): Promise<number> {
    return this.syncQueue
      .where('status')
      .equals('pending')
      .count();
  }

  /**
   * Limpa itens sincronizados com sucesso
   */
  async clearSyncedItems(): Promise<void> {
    // Remove itens que foram processados com sucesso (não estão mais na fila)
    // A fila só contém itens pendentes ou com falha
  }

  /**
   * Salva configuração local
   */
  async setConfig(key: string, value: unknown): Promise<void> {
    await this.config.put({
      key,
      value,
      updated_at: new Date().toISOString(),
    });
  }

  /**
   * Obtém configuração local
   */
  async getConfig<T>(key: string): Promise<T | undefined> {
    const config = await this.config.get(key);
    return config?.value as T | undefined;
  }

  /**
   * Sincroniza produtos do Supabase para local
   */
  async syncProductsFromServer(products: LocalProduct[]): Promise<void> {
    await this.transaction('rw', this.products, async () => {
      for (const product of products) {
        await this.products.put({
          ...product,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_products_sync', new Date().toISOString());
  }

  /**
   * Sincroniza categorias do Supabase para local
   */
  async syncCategoriesFromServer(categories: LocalCategory[]): Promise<void> {
    await this.transaction('rw', this.categories, async () => {
      for (const category of categories) {
        await this.categories.put({
          ...category,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_categories_sync', new Date().toISOString());
  }

  /**
   * Sincroniza clientes do Supabase para local
   */
  async syncCustomersFromServer(customers: LocalCustomer[]): Promise<void> {
    await this.transaction('rw', this.customers, async () => {
      for (const customer of customers) {
        await this.customers.put({
          ...customer,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_customers_sync', new Date().toISOString());
  }

  /**
   * Sincroniza vendas do Supabase para local (cache)
   */
  async syncSalesFromServer(sales: LocalSale[], items?: LocalSaleItem[]): Promise<void> {
    await this.transaction('rw', [this.sales, this.saleItems], async () => {
      for (const sale of sales) {
        await this.sales.put({
          ...sale,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
      if (items) {
        for (const item of items) {
          await this.saleItems.put({
            ...item,
            _synced: true,
          });
        }
      }
    });
    await this.setConfig('last_sales_sync', new Date().toISOString());
  }

  /**
   * Obtém vendas locais com filtros
   */
  async getSales(options?: {
    limit?: number;
    search?: string;
    status?: string;
  }): Promise<LocalSale[]> {
    let sales = await this.sales.orderBy('created_at').reverse().toArray();

    if (options?.status) {
      sales = sales.filter(s => s.status === options.status);
    }

    if (options?.search) {
      const lowerSearch = options.search.toLowerCase();
      sales = sales.filter(s =>
        s.id.toLowerCase().includes(lowerSearch) ||
        s.customer_id?.toLowerCase().includes(lowerSearch)
      );
    }

    if (options?.limit) {
      sales = sales.slice(0, options.limit);
    }

    return sales;
  }

  /**
   * Obtém itens de uma venda
   */
  async getSaleItems(saleId: string): Promise<LocalSaleItem[]> {
    return this.saleItems.where('sale_id').equals(saleId).toArray();
  }

  /**
   * Busca produtos locais com filtro
   */
  async searchProducts(query: string, activeOnly = true): Promise<LocalProduct[]> {
    const lowerQuery = query.toLowerCase();
    let collection = this.products.toCollection();

    if (activeOnly) {
      collection = this.products.where('is_active').equals(1);
    }

    const products = await collection.toArray();

    if (!query) return products;

    return products.filter(p =>
      p.name.toLowerCase().includes(lowerQuery) ||
      p.sku?.toLowerCase().includes(lowerQuery) ||
      p.barcode?.toLowerCase().includes(lowerQuery)
    );
  }

  /**
   * Busca produto por código de barras
   */
  async getProductByBarcode(barcode: string): Promise<LocalProduct | undefined> {
    return this.products.where('barcode').equals(barcode).first();
  }

  /**
   * Cria venda offline
   */
  async createOfflineSale(
    sale: Omit<LocalSale, '_synced' | '_last_sync'>,
    items: Omit<LocalSaleItem, '_synced'>[]
  ): Promise<string> {
    const saleId = sale.id;

    await this.transaction('rw', [this.sales, this.saleItems, this.products, this.syncQueue], async () => {
      // Salva a venda
      await this.sales.add({
        ...sale,
        _synced: false,
        _last_sync: null,
      });

      // Salva os itens
      for (const item of items) {
        await this.saleItems.add({
          ...item,
          _synced: false,
        });

        // Atualiza estoque local
        const product = await this.products.get(item.product_id);
        if (product) {
          await this.products.update(item.product_id, {
            stock_quantity: product.stock_quantity - item.quantity,
            _synced: false,
          });
        }
      }

      // Adiciona à fila de sincronização
      await this.addToSyncQueue('sales', saleId, 'create', {
        sale,
        items,
      });
    });

    return saleId;
  }

  /**
   * Obtém vendas locais não sincronizadas
   */
  async getUnsyncedSales(): Promise<LocalSale[]> {
    return this.sales.where('_synced').equals(0).toArray();
  }

  /**
   * Marca venda como sincronizada
   */
  async markSaleAsSynced(saleId: string, serverId?: string): Promise<void> {
    await this.sales.update(saleId, {
      _synced: true,
      _last_sync: new Date().toISOString(),
      id: serverId || saleId, // Atualiza com ID do servidor se fornecido
    });

    // Marca itens como sincronizados
    await this.saleItems
      .where('sale_id')
      .equals(saleId)
      .modify({ _synced: true });
  }

  /**
   * Verifica se o banco está populado
   */
  async isPopulated(): Promise<boolean> {
    const productCount = await this.products.count();
    return productCount > 0;
  }

  /**
   * Limpa todo o banco (útil para logout)
   */
  async clearAll(): Promise<void> {
    await Promise.all([
      this.products.clear(),
      this.categories.clear(),
      this.customers.clear(),
      this.sales.clear(),
      this.saleItems.clear(),
      this.syncQueue.clear(),
      this.config.clear(),
    ]);
  }
}

// Instância singleton do banco
export const offlineDb = new OfflineDatabase();

// Helper para verificar se IndexedDB está disponível
export function isIndexedDBAvailable(): boolean {
  try {
    return typeof indexedDB !== 'undefined';
  } catch {
    return false;
  }
}
