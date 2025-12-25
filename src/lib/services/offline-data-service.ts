/**
 * Serviço de Dados Offline
 *
 * Gerencia busca de dados com fallback automático para IndexedDB.
 * Sempre tenta API primeiro, e se falhar, usa dados locais.
 */

'use client';

// Import dinâmico para evitar SSR
const getOfflineDb = async () => {
  if (typeof window === 'undefined') return null;
  const { offlineDb } = await import('../db/offline-db');
  return offlineDb;
};

export interface ProductsResponse {
  data: Array<{
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
    is_active: boolean;
    is_weighable: boolean;
    allow_decimal_quantity: boolean;
    tax_rate: number;
    image_url: string | null;
    expiration_date: string | null;
    created_at: string;
    updated_at: string;
  }>;
  total: number;
  page: number;
  limit: number;
  stats: {
    total: number;
    lowStock: number;
    outOfStock: number;
    totalValue: number;
  };
  _offline?: boolean;
}

export interface CategoriesResponse {
  data: Array<{
    id: string;
    name: string;
    description: string | null;
    color: string | null;
    icon: string | null;
    parent_id: string | null;
    is_active: boolean;
    sort_order: number;
  }>;
  total: number;
  _offline?: boolean;
}

export interface CustomersResponse {
  data: Array<{
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
    credit_limit: number;
    total_purchases: number;
    is_active: boolean;
    created_at: string;
    updated_at: string;
  }>;
  total: number;
  page: number;
  limit: number;
  totalPages: number;
  _offline?: boolean;
}

/**
 * Fetch com timeout para evitar esperas longas
 */
async function fetchWithTimeout(url: string, options: RequestInit = {}, timeout = 5000): Promise<Response> {
  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), timeout);

  try {
    const response = await fetch(url, {
      ...options,
      signal: controller.signal,
    });
    clearTimeout(timeoutId);
    return response;
  } catch (error) {
    clearTimeout(timeoutId);
    throw error;
  }
}

/**
 * Busca produtos - tenta API primeiro, fallback para IndexedDB
 */
export async function fetchProducts(params?: {
  search?: string;
  category?: string;
  page?: number;
  limit?: number;
}): Promise<ProductsResponse> {
  const page = params?.page || 1;
  const limit = params?.limit || 20;

  // Sempre tenta API primeiro
  try {
    const searchParams = new URLSearchParams();
    if (params?.search) searchParams.append('search', params.search);
    if (params?.category) searchParams.append('category', params.category);
    searchParams.append('page', String(page));
    searchParams.append('limit', String(limit));

    const response = await fetchWithTimeout(`/api/produtos?${searchParams}`, {}, 5000);

    if (response.ok) {
      const data = await response.json();
      // Salva dados no IndexedDB para uso offline
      saveProductsToIndexedDB(data.data);
      return data;
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, usando IndexedDB:', error);
  }

  // Fallback para IndexedDB
  return getProductsFromIndexedDB(params);
}

/**
 * Busca categorias - tenta API primeiro, fallback para IndexedDB
 */
export async function fetchCategories(): Promise<CategoriesResponse> {
  // Sempre tenta API primeiro
  try {
    const response = await fetchWithTimeout('/api/categorias', {}, 5000);

    if (response.ok) {
      const data = await response.json();
      // Salva dados no IndexedDB para uso offline
      saveCategoriesToIndexedDB(data.data);
      return data;
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, usando IndexedDB:', error);
  }

  // Fallback para IndexedDB
  return getCategoriesFromIndexedDB();
}

/**
 * Busca clientes - tenta API primeiro, fallback para IndexedDB
 */
export async function fetchCustomers(params?: {
  search?: string;
  searchType?: string;
  page?: number;
  limit?: number;
}): Promise<CustomersResponse> {
  const page = params?.page || 1;
  const limit = params?.limit || 10;

  // Sempre tenta API primeiro
  try {
    const searchParams = new URLSearchParams();
    if (params?.search) searchParams.append('search', params.search);
    if (params?.searchType) searchParams.append('searchType', params.searchType);
    searchParams.append('page', String(page));
    searchParams.append('limit', String(limit));

    const response = await fetchWithTimeout(`/api/clientes?${searchParams}`, {}, 5000);

    if (response.ok) {
      const data = await response.json();
      // Salva dados no IndexedDB para uso offline
      saveCustomersToIndexedDB(data.data);
      return data;
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, usando IndexedDB:', error);
  }

  // Fallback para IndexedDB
  return getCustomersFromIndexedDB(params);
}

// ============ Funções auxiliares para IndexedDB ============

async function getProductsFromIndexedDB(params?: {
  search?: string;
  category?: string;
  page?: number;
  limit?: number;
}): Promise<ProductsResponse> {
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, page: 1, limit: 20, stats: { total: 0, lowStock: 0, outOfStock: 0, totalValue: 0 }, _offline: true };
  }

  console.log('[OfflineData] Buscando produtos do IndexedDB');

  try {
    let products = await db.products.toArray();

    // Filtra apenas ativos
    products = products.filter(p => p.is_active);

    // Filtro de busca
    if (params?.search) {
      const search = params.search.toLowerCase();
      products = products.filter(p =>
        p.name.toLowerCase().includes(search) ||
        p.sku?.toLowerCase().includes(search) ||
        p.barcode?.toLowerCase().includes(search)
      );
    }

    // Filtro de categoria
    if (params?.category) {
      products = products.filter(p => p.category_id === params.category);
    }

    // Calcula estatísticas de TODOS os produtos
    const allProducts = await db.products.toArray();
    const stats = {
      total: allProducts.filter(p => p.is_active).length,
      lowStock: allProducts.filter(p => p.is_active && p.stock_quantity > 0 && p.stock_quantity <= p.min_stock_quantity).length,
      outOfStock: allProducts.filter(p => p.is_active && p.stock_quantity <= 0).length,
      totalValue: allProducts.filter(p => p.is_active).reduce((sum, p) => sum + (p.price * p.stock_quantity), 0),
    };

    // Paginação
    const page = params?.page || 1;
    const limit = params?.limit || 20;
    const start = (page - 1) * limit;
    const paginatedProducts = products.slice(start, start + limit);

    return {
      data: paginatedProducts.map(p => ({
        ...p,
        sku: p.sku || '',
      })),
      total: products.length,
      page,
      limit,
      stats,
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao buscar produtos do IndexedDB:', error);
    return { data: [], total: 0, page: 1, limit: 20, stats: { total: 0, lowStock: 0, outOfStock: 0, totalValue: 0 }, _offline: true };
  }
}

async function getCategoriesFromIndexedDB(): Promise<CategoriesResponse> {
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, _offline: true };
  }

  console.log('[OfflineData] Buscando categorias do IndexedDB');

  try {
    const categories = await db.categories.toArray();

    return {
      data: categories.map(c => ({
        ...c,
        is_active: c.is_active ?? true,
      })),
      total: categories.length,
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao buscar categorias do IndexedDB:', error);
    return { data: [], total: 0, _offline: true };
  }
}

async function getCustomersFromIndexedDB(params?: {
  search?: string;
  searchType?: string;
  page?: number;
  limit?: number;
}): Promise<CustomersResponse> {
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, page: 1, limit: 10, totalPages: 0, _offline: true };
  }

  console.log('[OfflineData] Buscando clientes do IndexedDB');

  try {
    let customers = await db.customers.toArray();

    // Filtro de busca
    if (params?.search) {
      const search = params.search.toLowerCase();
      const searchType = params?.searchType || 'name';

      customers = customers.filter(c => {
        if (searchType === 'phone') {
          return c.phone?.includes(search);
        } else if (searchType === 'document') {
          return c.document?.includes(search);
        } else if (searchType === 'email') {
          return c.email?.toLowerCase().includes(search);
        }
        return c.name.toLowerCase().includes(search);
      });
    }

    // Paginação
    const page = params?.page || 1;
    const limit = params?.limit || 10;
    const start = (page - 1) * limit;
    const paginatedCustomers = customers.slice(start, start + limit);

    return {
      data: paginatedCustomers.map(c => ({
        ...c,
        credit_limit: 0,
        total_purchases: 0,
        is_active: true,
      })),
      total: customers.length,
      page,
      limit,
      totalPages: Math.ceil(customers.length / limit),
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao buscar clientes do IndexedDB:', error);
    return { data: [], total: 0, page: 1, limit: 10, totalPages: 0, _offline: true };
  }
}

// ============ Funções para salvar dados no IndexedDB ============

async function saveProductsToIndexedDB(products: Array<Record<string, unknown>>): Promise<void> {
  if (!products || products.length === 0) return;

  const db = await getOfflineDb();
  if (!db) return;

  try {
    await db.transaction('rw', db.products, async () => {
      for (const product of products) {
        await db.products.put({
          ...product,
          _synced: true,
          _last_sync: new Date().toISOString(),
        } as any);
      }
    });
    console.log(`[OfflineData] ${products.length} produtos salvos no IndexedDB`);
  } catch (error) {
    console.error('[OfflineData] Erro ao salvar produtos no IndexedDB:', error);
  }
}

async function saveCategoriesToIndexedDB(categories: Array<Record<string, unknown>>): Promise<void> {
  if (!categories || categories.length === 0) return;

  const db = await getOfflineDb();
  if (!db) return;

  try {
    await db.transaction('rw', db.categories, async () => {
      for (const category of categories) {
        await db.categories.put({
          ...category,
          _synced: true,
          _last_sync: new Date().toISOString(),
        } as any);
      }
    });
    console.log(`[OfflineData] ${categories.length} categorias salvas no IndexedDB`);
  } catch (error) {
    console.error('[OfflineData] Erro ao salvar categorias no IndexedDB:', error);
  }
}

async function saveCustomersToIndexedDB(customers: Array<Record<string, unknown>>): Promise<void> {
  if (!customers || customers.length === 0) return;

  const db = await getOfflineDb();
  if (!db) return;

  try {
    await db.transaction('rw', db.customers, async () => {
      for (const customer of customers) {
        await db.customers.put({
          ...customer,
          _synced: true,
          _last_sync: new Date().toISOString(),
        } as any);
      }
    });
    console.log(`[OfflineData] ${customers.length} clientes salvos no IndexedDB`);
  } catch (error) {
    console.error('[OfflineData] Erro ao salvar clientes no IndexedDB:', error);
  }
}

/**
 * Verifica se há dados offline disponíveis
 */
export async function hasOfflineData(): Promise<boolean> {
  const db = await getOfflineDb();
  if (!db) return false;
  return await db.isPopulated();
}

// ============ Configurações da Empresa ============

export interface CompanySettingsResponse {
  data: {
    name: string;
    logo: string | null;
    address: string;
    phone: string;
    document: string;
  };
  _offline?: boolean;
}

/**
 * Busca configurações da empresa - tenta API primeiro, fallback para IndexedDB
 */
export async function fetchCompanySettings(): Promise<CompanySettingsResponse> {
  // Sempre tenta API primeiro
  try {
    const response = await fetchWithTimeout('/api/configuracoes/empresa', {}, 5000);

    if (response.ok) {
      const result = await response.json();
      // Salva dados no IndexedDB para uso offline
      saveCompanySettingsToIndexedDB(result.data);
      return { data: result.data };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, usando IndexedDB:', error);
  }

  // Fallback para IndexedDB
  return getCompanySettingsFromIndexedDB();
}

async function getCompanySettingsFromIndexedDB(): Promise<CompanySettingsResponse> {
  const db = await getOfflineDb();
  if (!db) {
    return {
      data: { name: '', logo: null, address: '', phone: '', document: '' },
      _offline: true,
    };
  }

  console.log('[OfflineData] Buscando configurações do IndexedDB');

  try {
    const settings = await db.config.get('company_settings');
    if (settings?.value) {
      return {
        data: settings.value as CompanySettingsResponse['data'],
        _offline: true,
      };
    }
  } catch (error) {
    console.error('[OfflineData] Erro ao buscar configurações do IndexedDB:', error);
  }

  return {
    data: { name: '', logo: null, address: '', phone: '', document: '' },
    _offline: true,
  };
}

async function saveCompanySettingsToIndexedDB(settings: CompanySettingsResponse['data']): Promise<void> {
  if (!settings) return;

  const db = await getOfflineDb();
  if (!db) return;

  try {
    await db.setConfig('company_settings', settings);
    console.log('[OfflineData] Configurações da empresa salvas no IndexedDB');
  } catch (error) {
    console.error('[OfflineData] Erro ao salvar configurações no IndexedDB:', error);
  }
}

// ============ Vendas Offline ============

export interface OfflineSaleData {
  customer_id: string | null;
  user_id: string | null;
  items: Array<{
    product_id: string;
    product_name: string;
    quantity: number;
    unit_price: number;
    unit: string;
    discount_amount: number;
    discount_percent: number;
    notes: string | null;
  }>;
  discount_amount: number;
  payment_method: string;
  payment_details: Record<string, unknown>;
}

export interface OfflineSaleResult {
  success: boolean;
  data?: {
    id: string;
    receipt_number: string;
    total: number;
    subtotal: number;
    discount_amount: number;
    items: Array<{
      id: string;
      product_id: string;
      product_name: string;
      quantity: number;
      unit_price: number;
      unit: string;
      total: number;
    }>;
    created_at: string;
    _offline: boolean;
  };
  error?: string;
}

/**
 * Gera número de recibo único para vendas offline
 */
function generateOfflineReceiptNumber(): string {
  const date = new Date();
  const year = date.getFullYear().toString().slice(-2);
  const month = (date.getMonth() + 1).toString().padStart(2, '0');
  const day = date.getDate().toString().padStart(2, '0');
  const random = Math.floor(Math.random() * 10000).toString().padStart(4, '0');
  return `OFF-${year}${month}${day}-${random}`;
}

/**
 * Cria venda - tenta API primeiro, fallback para criação offline
 */
export async function createSale(saleData: OfflineSaleData): Promise<OfflineSaleResult> {
  // Sempre tenta API primeiro
  try {
    const response = await fetchWithTimeout('/api/vendas', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(saleData),
    }, 10000);

    const result = await response.json();

    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }

    // Se a API retornou erro de validação, retorna o erro
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, criando venda offline:', error);
  }

  // Fallback para criação offline
  return createOfflineSale(saleData);
}

async function createOfflineSale(saleData: OfflineSaleData): Promise<OfflineSaleResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  console.log('[OfflineData] Criando venda offline');

  try {
    const { v4: uuidv4 } = await import('uuid');
    const saleId = uuidv4();
    const receiptNumber = generateOfflineReceiptNumber();
    const now = new Date().toISOString();

    // Calcula totais
    let subtotal = 0;
    const saleItems = [];

    for (const item of saleData.items) {
      const itemTotal = item.quantity * item.unit_price;
      const itemDiscount = item.discount_amount || 0;
      subtotal += itemTotal - itemDiscount;

      saleItems.push({
        id: uuidv4(),
        sale_id: saleId,
        product_id: item.product_id,
        product_name: item.product_name,
        quantity: item.quantity,
        unit_price: item.unit_price,
        discount: itemDiscount,
        total: itemTotal - itemDiscount,
        unit: item.unit,
        created_at: now,
        _synced: false,
      });
    }

    const total = subtotal - (saleData.discount_amount || 0);

    // Salva a venda no IndexedDB
    await db.transaction('rw', [db.sales, db.saleItems, db.products, db.syncQueue], async () => {
      // Salva a venda
      await db.sales.add({
        id: saleId,
        customer_id: saleData.customer_id,
        user_id: saleData.user_id,
        subtotal,
        discount: saleData.discount_amount || 0,
        total,
        payment_method: saleData.payment_method,
        payment_status: saleData.payment_method === 'pay_later' ? 'pending' : 'paid',
        status: saleData.payment_method === 'pay_later' ? 'pending' : 'completed',
        notes: null,
        cash_register_id: null,
        created_at: now,
        updated_at: now,
        _synced: false,
        _last_sync: null,
        _local_id: saleId,
        receipt_number: receiptNumber,
      } as any);

      // Salva os itens
      for (const item of saleItems) {
        await db.saleItems.add(item as any);

        // Atualiza estoque local
        const product = await db.products.get(item.product_id);
        if (product) {
          await db.products.update(item.product_id, {
            stock_quantity: Math.max(0, product.stock_quantity - item.quantity),
            _synced: false,
          });
        }
      }

      // Adiciona à fila de sincronização
      await db.addToSyncQueue('sales', saleId, 'create', {
        sale: {
          ...saleData,
          id: saleId,
          receipt_number: receiptNumber,
          subtotal,
          discount: saleData.discount_amount || 0,
          total,
          created_at: now,
        },
        items: saleItems,
      });
    });

    console.log(`[OfflineData] Venda offline criada: ${receiptNumber}`);

    return {
      success: true,
      data: {
        id: saleId,
        receipt_number: receiptNumber,
        total,
        subtotal,
        discount_amount: saleData.discount_amount || 0,
        items: saleItems.map(item => ({
          id: item.id,
          product_id: item.product_id,
          product_name: item.product_name,
          quantity: item.quantity,
          unit_price: item.unit_price,
          unit: item.unit,
          total: item.total,
        })),
        created_at: now,
        _offline: true,
      },
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao criar venda offline:', error);
    return { success: false, error: 'Erro ao criar venda offline' };
  }
}

/**
 * Obtém contagem de vendas pendentes de sincronização
 */
export async function getPendingSalesCount(): Promise<number> {
  const db = await getOfflineDb();
  if (!db) return 0;

  try {
    return await db.syncQueue
      .where('entity_type')
      .equals('sales')
      .and(item => item.status === 'pending')
      .count();
  } catch (error) {
    return 0;
  }
}
