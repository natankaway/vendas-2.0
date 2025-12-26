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
  // Campos de sincronização e versionamento
  version: number; // Controle de versão para conflitos
  deleted_at: string | null; // Soft delete
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
  // Campos de sincronização e versionamento
  version: number; // Controle de versão para conflitos
  deleted_at: string | null; // Soft delete
  _synced: boolean;
  _last_sync: string | null;
}

export interface LocalCustomer {
  id: string;
  name: string;
  email: string | null;
  phone: string | null;
  document: string | null;
  document_type?: 'cpf' | 'cnpj' | null;
  address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  notes: string | null;
  is_active: boolean;
  credit_limit: number;
  total_purchases: number;
  last_purchase_at: string | null;
  created_at: string;
  updated_at: string;
  // Campos de sincronização e versionamento
  version: number; // Controle de versão para conflitos
  deleted_at: string | null; // Soft delete
  _synced: boolean;
  _last_sync: string | null;
}

export interface LocalSale {
  id: string;
  receipt_number: string; // Número do recibo (obrigatório)
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
  // Campos de sincronização
  version: number; // Controle de versão para conflitos
  deleted_at: string | null; // Soft delete
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
  unit: string; // Unidade de medida (un, kg, etc)
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
 * Tipos de estratégia de resolução de conflito
 */
export type ConflictResolutionStrategy = 'local_wins' | 'server_wins' | 'manual_merge';

/**
 * Registro de conflito detectado durante sincronização
 */
export interface SyncConflict {
  id?: number;
  entity_type: 'products' | 'categories' | 'customers' | 'sales';
  entity_id: string;
  local_data: Record<string, unknown>;
  server_data: Record<string, unknown>;
  local_version: number;
  server_version: number;
  local_updated_at: string;
  server_updated_at: string;
  detected_at: string;
  resolved_at: string | null;
  resolution_strategy: ConflictResolutionStrategy | null;
  status: 'pending' | 'resolved' | 'ignored';
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
  conflicts!: Table<SyncConflict, number>;
  config!: Table<LocalConfig, string>;

  constructor() {
    super('KawayPOS');

    // Versão 1: Schema inicial
    this.version(1).stores({
      products: 'id, name, sku, barcode, category_id, is_active, _synced',
      categories: 'id, name, is_active, _synced',
      customers: 'id, name, document, phone, _synced',
      sales: 'id, customer_id, status, created_at, _synced, _local_id',
      saleItems: 'id, sale_id, product_id, _synced',
      syncQueue: '++id, entity_type, entity_id, status, created_at',
      config: 'key',
    });

    // Versão 2: Adiciona campos version, deleted_at, receipt_number
    this.version(2).stores({
      products: 'id, name, sku, barcode, category_id, is_active, _synced, version, deleted_at',
      categories: 'id, name, is_active, _synced, version, deleted_at',
      customers: 'id, name, document, phone, _synced, version, deleted_at',
      sales: 'id, receipt_number, customer_id, status, created_at, _synced, _local_id, version, deleted_at',
      saleItems: 'id, sale_id, product_id, _synced',
      syncQueue: '++id, entity_type, entity_id, status, created_at',
      config: 'key',
    }).upgrade(tx => {
      // Migração: adiciona campos padrão aos registros existentes
      return Promise.all([
        tx.table('products').toCollection().modify(product => {
          if (product.version === undefined) product.version = 1;
          if (product.deleted_at === undefined) product.deleted_at = null;
        }),
        tx.table('categories').toCollection().modify(category => {
          if (category.version === undefined) category.version = 1;
          if (category.deleted_at === undefined) category.deleted_at = null;
        }),
        tx.table('customers').toCollection().modify(customer => {
          if (customer.version === undefined) customer.version = 1;
          if (customer.deleted_at === undefined) customer.deleted_at = null;
        }),
        tx.table('sales').toCollection().modify(sale => {
          if (sale.version === undefined) sale.version = 1;
          if (sale.deleted_at === undefined) sale.deleted_at = null;
          if (!sale.receipt_number) sale.receipt_number = sale.id.slice(0, 8).toUpperCase();
        }),
      ]);
    });

    // Versão 3: Adiciona tabela de conflitos para resolução manual
    this.version(3).stores({
      products: 'id, name, sku, barcode, category_id, is_active, _synced, version, deleted_at',
      categories: 'id, name, is_active, _synced, version, deleted_at',
      customers: 'id, name, document, phone, _synced, version, deleted_at',
      sales: 'id, receipt_number, customer_id, status, created_at, _synced, _local_id, version, deleted_at',
      saleItems: 'id, sale_id, product_id, _synced',
      syncQueue: '++id, entity_type, entity_id, status, created_at',
      conflicts: '++id, entity_type, entity_id, status, detected_at',
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
   * Implementa merge inteligente: preserva dados locais se versão for maior
   */
  async syncProductsFromServer(products: LocalProduct[]): Promise<void> {
    await this.transaction('rw', this.products, async () => {
      for (const product of products) {
        // Verifica se existe produto local com versão maior (edições offline)
        const existingProduct = await this.products.get(product.id);
        const serverVersion = product.version || 1;
        const localVersion = existingProduct?.version || 0;

        // Se versão local é maior e não sincronizado, preserva dados locais
        if (existingProduct && localVersion > serverVersion && !existingProduct._synced) {
          console.log(`[Sync] Produto ${product.id}: versão local (${localVersion}) > servidor (${serverVersion}), preservando local`);
          continue;
        }

        // Garante que campos numéricos tenham valores válidos
        const stockQuantity = typeof product.stock_quantity === 'number' ? product.stock_quantity :
                             (product.stock_quantity != null ? Number(product.stock_quantity) : 0);
        const minStockQuantity = typeof product.min_stock_quantity === 'number' ? product.min_stock_quantity :
                                 (product.min_stock_quantity != null ? Number(product.min_stock_quantity) : 0);

        await this.products.put({
          ...product,
          stock_quantity: isNaN(stockQuantity) ? 0 : stockQuantity,
          min_stock_quantity: isNaN(minStockQuantity) ? 0 : minStockQuantity,
          is_active: product.is_active !== false,
          version: serverVersion,
          deleted_at: product.deleted_at || null,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_products_sync', new Date().toISOString());
  }

  /**
   * Sincroniza categorias do Supabase para local
   * Implementa merge inteligente: preserva dados locais se versão for maior
   */
  async syncCategoriesFromServer(categories: LocalCategory[]): Promise<void> {
    await this.transaction('rw', this.categories, async () => {
      for (const category of categories) {
        // Verifica se existe categoria local com versão maior
        const existingCategory = await this.categories.get(category.id);
        const serverVersion = category.version || 1;
        const localVersion = existingCategory?.version || 0;

        // Se versão local é maior e não sincronizado, preserva dados locais
        if (existingCategory && localVersion > serverVersion && !existingCategory._synced) {
          console.log(`[Sync] Categoria ${category.id}: versão local > servidor, preservando local`);
          continue;
        }

        await this.categories.put({
          ...category,
          version: serverVersion,
          deleted_at: category.deleted_at || null,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_categories_sync', new Date().toISOString());
  }

  /**
   * Sincroniza clientes do Supabase para local
   * Implementa merge inteligente: preserva dados locais se versão for maior
   */
  async syncCustomersFromServer(customers: LocalCustomer[]): Promise<void> {
    await this.transaction('rw', this.customers, async () => {
      for (const customer of customers) {
        // Verifica se existe cliente local com versão maior
        const existingCustomer = await this.customers.get(customer.id);
        const serverVersion = customer.version || 1;
        const localVersion = existingCustomer?.version || 0;

        // Se versão local é maior e não sincronizado, preserva dados locais
        if (existingCustomer && localVersion > serverVersion && !existingCustomer._synced) {
          console.log(`[Sync] Cliente ${customer.id}: versão local > servidor, preservando local`);
          continue;
        }

        // Preserva o maior valor de total_purchases (vendas offline podem ter aumentado)
        const serverPurchases = typeof customer.total_purchases === 'number' ? customer.total_purchases : 0;
        const localPurchases = existingCustomer?.total_purchases ?? 0;
        const totalPurchases = Math.max(serverPurchases, localPurchases);

        await this.customers.put({
          ...customer,
          total_purchases: totalPurchases,
          credit_limit: typeof customer.credit_limit === 'number' ? customer.credit_limit : 0,
          version: serverVersion,
          deleted_at: customer.deleted_at || null,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
    });
    await this.setConfig('last_customers_sync', new Date().toISOString());
  }

  /**
   * Sincroniza vendas do Supabase para local (cache)
   * Não sobrescreve vendas locais não sincronizadas
   */
  async syncSalesFromServer(sales: LocalSale[], items?: LocalSaleItem[]): Promise<void> {
    await this.transaction('rw', [this.sales, this.saleItems], async () => {
      for (const sale of sales) {
        // Verifica se existe venda local não sincronizada
        const existingSale = await this.sales.get(sale.id);

        // Se existe venda local não sincronizada, não sobrescreve
        if (existingSale && !existingSale._synced) {
          console.log(`[Sync] Venda ${sale.id}: existe localmente não sincronizada, preservando`);
          continue;
        }

        await this.sales.put({
          ...sale,
          receipt_number: sale.receipt_number || sale.id.slice(0, 8).toUpperCase(),
          version: sale.version || 1,
          deleted_at: sale.deleted_at || null,
          _synced: true,
          _last_sync: new Date().toISOString(),
        });
      }
      if (items) {
        for (const item of items) {
          await this.saleItems.put({
            ...item,
            unit: item.unit || 'un',
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
   * Exclui produtos deletados (soft delete)
   */
  async searchProducts(query: string, activeOnly = true): Promise<LocalProduct[]> {
    const lowerQuery = query.toLowerCase();

    // Busca todos os produtos e filtra em memória
    // IndexedDB não armazena boolean como 1/0, então filtramos manualmente
    let products = await this.products.toArray();

    // Exclui produtos deletados (soft delete)
    products = products.filter(p => !p.deleted_at);

    if (activeOnly) {
      products = products.filter(p => p.is_active === true);
    }

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
   * Inclui controle de versão para sincronização
   */
  async createOfflineSale(
    sale: Omit<LocalSale, '_synced' | '_last_sync' | 'version' | 'deleted_at'>,
    items: Omit<LocalSaleItem, '_synced'>[]
  ): Promise<string> {
    const saleId = sale.id;

    await this.transaction('rw', [this.sales, this.saleItems, this.products, this.syncQueue], async () => {
      // Salva a venda com controle de versão
      await this.sales.add({
        ...sale,
        version: 1, // Versão inicial
        deleted_at: null,
        _synced: false,
        _last_sync: null,
      });

      // Salva os itens
      for (const item of items) {
        await this.saleItems.add({
          ...item,
          unit: item.unit || 'un', // Garante que unit está definido
          _synced: false,
        });

        // Atualiza estoque local
        const product = await this.products.get(item.product_id);
        if (product) {
          await this.products.update(item.product_id, {
            stock_quantity: Math.max(0, product.stock_quantity - item.quantity),
            version: (product.version || 1) + 1, // Incrementa versão
            _synced: false,
          });
        }
      }

      // Adiciona à fila de sincronização
      await this.addToSyncQueue('sales', saleId, 'create', {
        sale: { ...sale, version: 1 },
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

  // ==================== MÉTODOS DE CONFLITOS ====================

  /**
   * Adiciona um conflito detectado durante sincronização
   */
  async addConflict(conflict: Omit<SyncConflict, 'id' | 'detected_at' | 'resolved_at' | 'resolution_strategy' | 'status'>): Promise<number> {
    const id = await this.conflicts.add({
      ...conflict,
      detected_at: new Date().toISOString(),
      resolved_at: null,
      resolution_strategy: null,
      status: 'pending',
    });
    console.log(`[Conflict] Conflito detectado: ${conflict.entity_type}/${conflict.entity_id} (local v${conflict.local_version} vs server v${conflict.server_version})`);
    return id;
  }

  /**
   * Obtém conflitos pendentes de resolução
   */
  async getPendingConflicts(): Promise<SyncConflict[]> {
    return this.conflicts.where('status').equals('pending').toArray();
  }

  /**
   * Obtém contagem de conflitos pendentes
   */
  async getPendingConflictsCount(): Promise<number> {
    return this.conflicts.where('status').equals('pending').count();
  }

  /**
   * Obtém todos os conflitos (incluindo resolvidos)
   */
  async getAllConflicts(): Promise<SyncConflict[]> {
    return this.conflicts.orderBy('detected_at').reverse().toArray();
  }

  /**
   * Obtém um conflito específico por ID
   */
  async getConflict(conflictId: number): Promise<SyncConflict | undefined> {
    return this.conflicts.get(conflictId);
  }

  /**
   * Resolve um conflito usando a estratégia especificada
   */
  async resolveConflict(
    conflictId: number,
    strategy: ConflictResolutionStrategy,
    mergedData?: Record<string, unknown>
  ): Promise<void> {
    const conflict = await this.conflicts.get(conflictId);
    if (!conflict) {
      throw new Error(`Conflito ${conflictId} não encontrado`);
    }

    await this.transaction('rw', [this.conflicts, this.products, this.categories, this.customers, this.sales, this.syncQueue], async () => {
      let dataToApply: Record<string, unknown>;
      let newVersion: number;

      switch (strategy) {
        case 'local_wins':
          dataToApply = conflict.local_data;
          newVersion = Math.max(conflict.local_version, conflict.server_version) + 1;
          break;
        case 'server_wins':
          dataToApply = conflict.server_data;
          newVersion = conflict.server_version;
          break;
        case 'manual_merge':
          if (!mergedData) {
            throw new Error('Dados mesclados são obrigatórios para resolução manual');
          }
          dataToApply = mergedData;
          newVersion = Math.max(conflict.local_version, conflict.server_version) + 1;
          break;
      }

      // Aplica os dados na tabela correspondente
      const entityData = {
        ...dataToApply,
        version: newVersion,
        updated_at: new Date().toISOString(),
        _synced: strategy === 'server_wins', // Se servidor venceu, já está sincronizado
        _last_sync: strategy === 'server_wins' ? new Date().toISOString() : null,
      };

      switch (conflict.entity_type) {
        case 'products':
          await this.products.put(entityData as LocalProduct);
          break;
        case 'categories':
          await this.categories.put(entityData as LocalCategory);
          break;
        case 'customers':
          await this.customers.put(entityData as LocalCustomer);
          break;
        case 'sales':
          await this.sales.put(entityData as LocalSale);
          break;
      }

      // Se local venceu ou merge manual, adiciona à fila de sync para enviar ao servidor
      if (strategy !== 'server_wins') {
        await this.addToSyncQueue(
          conflict.entity_type as SyncQueueItem['entity_type'],
          conflict.entity_id,
          'update',
          entityData
        );
      }

      // Marca o conflito como resolvido
      await this.conflicts.update(conflictId, {
        resolved_at: new Date().toISOString(),
        resolution_strategy: strategy,
        status: 'resolved',
      });

      console.log(`[Conflict] Conflito ${conflictId} resolvido com estratégia: ${strategy}`);
    });
  }

  /**
   * Ignora um conflito (mantém dados atuais)
   */
  async ignoreConflict(conflictId: number): Promise<void> {
    await this.conflicts.update(conflictId, {
      resolved_at: new Date().toISOString(),
      resolution_strategy: null,
      status: 'ignored',
    });
    console.log(`[Conflict] Conflito ${conflictId} ignorado`);
  }

  /**
   * Remove conflitos resolvidos com mais de X dias
   */
  async cleanupResolvedConflicts(daysOld = 30): Promise<number> {
    const cutoffDate = new Date();
    cutoffDate.setDate(cutoffDate.getDate() - daysOld);
    const cutoffIso = cutoffDate.toISOString();

    const oldConflicts = await this.conflicts
      .filter(c => {
        if (c.status === 'pending') return false;
        if (!c.resolved_at) return false;
        return c.resolved_at < cutoffIso;
      })
      .toArray();

    const ids = oldConflicts.map(c => c.id).filter((id): id is number => id !== undefined);
    await this.conflicts.bulkDelete(ids);

    console.log(`[Conflict] ${ids.length} conflitos antigos removidos`);
    return ids.length;
  }

  /**
   * Detecta conflito entre versão local e servidor
   * Retorna true se há conflito (ambos modificados independentemente)
   */
  async detectConflict(
    entityType: SyncConflict['entity_type'],
    entityId: string,
    serverData: Record<string, unknown>,
    serverVersion: number,
    serverUpdatedAt: string
  ): Promise<boolean> {
    let localData: Record<string, unknown> | undefined;
    let localVersion: number;
    let localUpdatedAt: string;
    let localSynced: boolean;

    switch (entityType) {
      case 'products':
        const product = await this.products.get(entityId);
        if (!product) return false;
        localData = product as unknown as Record<string, unknown>;
        localVersion = product.version || 1;
        localUpdatedAt = product.updated_at;
        localSynced = product._synced;
        break;
      case 'categories':
        const category = await this.categories.get(entityId);
        if (!category) return false;
        localData = category as unknown as Record<string, unknown>;
        localVersion = category.version || 1;
        localUpdatedAt = category.updated_at;
        localSynced = category._synced;
        break;
      case 'customers':
        const customer = await this.customers.get(entityId);
        if (!customer) return false;
        localData = customer as unknown as Record<string, unknown>;
        localVersion = customer.version || 1;
        localUpdatedAt = customer.updated_at;
        localSynced = customer._synced;
        break;
      case 'sales':
        const sale = await this.sales.get(entityId);
        if (!sale) return false;
        localData = sale as unknown as Record<string, unknown>;
        localVersion = sale.version || 1;
        localUpdatedAt = sale.updated_at;
        localSynced = sale._synced;
        break;
      default:
        return false;
    }

    // Conflito: versão local > servidor E não sincronizado E servidor tem versão diferente
    // Isso indica que tanto local quanto servidor foram modificados desde a última sincronização
    const hasConflict = !localSynced &&
                        localVersion >= serverVersion &&
                        localUpdatedAt !== serverUpdatedAt;

    if (hasConflict) {
      await this.addConflict({
        entity_type: entityType,
        entity_id: entityId,
        local_data: localData,
        server_data: serverData,
        local_version: localVersion,
        server_version: serverVersion,
        local_updated_at: localUpdatedAt,
        server_updated_at: serverUpdatedAt,
      });
    }

    return hasConflict;
  }

  /**
   * Resolve todos os conflitos pendentes automaticamente
   * Usa a estratégia padrão: última modificação vence (baseado em updated_at)
   */
  async autoResolveConflicts(defaultStrategy: ConflictResolutionStrategy = 'local_wins'): Promise<number> {
    const pendingConflicts = await this.getPendingConflicts();
    let resolved = 0;

    for (const conflict of pendingConflicts) {
      try {
        // Estratégia automática: o mais recente vence
        let strategy = defaultStrategy;
        if (conflict.local_updated_at > conflict.server_updated_at) {
          strategy = 'local_wins';
        } else if (conflict.server_updated_at > conflict.local_updated_at) {
          strategy = 'server_wins';
        }

        await this.resolveConflict(conflict.id!, strategy);
        resolved++;
      } catch (error) {
        console.error(`[Conflict] Erro ao resolver conflito ${conflict.id}:`, error);
      }
    }

    console.log(`[Conflict] ${resolved} conflitos resolvidos automaticamente`);
    return resolved;
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
      this.conflicts.clear(),
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
