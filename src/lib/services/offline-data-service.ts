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
        credit_limit: (c as any).credit_limit ?? 0,
        total_purchases: (c as any).total_purchases ?? 0,
        is_active: (c as any).is_active ?? true,
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
    const saleItems: Array<{
      id: string;
      sale_id: string;
      product_id: string;
      product_name: string;
      quantity: number;
      unit_price: number;
      discount: number;
      total: number;
      unit: string;
      created_at: string;
      _synced: boolean;
    }> = [];

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

// ============ Histórico de Vendas Offline ============

export interface SaleItem {
  id: string;
  product_id: string;
  product_name: string;
  quantity: number;
  unit?: string;
  unit_price: number;
  discount_amount: number;
  total: number;
}

export interface Sale {
  id: string;
  receipt_number: string;
  customer_id: string | null;
  customer_name: string | null;
  customer?: {
    id: string;
    name: string;
    address?: string;
    phone?: string;
  } | null;
  user_id: string;
  user_name: string | null;
  status: 'pending' | 'completed' | 'cancelled';
  subtotal: number;
  discount_amount: number;
  tax_amount: number;
  total: number;
  payment_method: string;
  notes: string | null;
  created_at: string;
  completed_at: string | null;
  items: SaleItem[];
  _offline?: boolean;
}

export interface SalesResponse {
  data: Sale[];
  total: number;
  page: number;
  limit: number;
  _offline?: boolean;
}

/**
 * Busca vendas - tenta API primeiro, fallback para IndexedDB
 */
export async function fetchSales(params?: {
  search?: string;
  searchType?: string;
  page?: number;
  limit?: number;
  startDate?: string;
  endDate?: string;
  status?: string;
  paymentMethod?: string;
}): Promise<SalesResponse> {
  const page = params?.page || 1;
  const limit = params?.limit || 20;

  // Sempre tenta API primeiro
  try {
    const searchParams = new URLSearchParams({
      page: String(page),
      limit: String(limit),
    });
    if (params?.search) {
      searchParams.append('search', params.search);
      searchParams.append('searchType', params.searchType || 'receipt');
    }
    if (params?.startDate) searchParams.append('startDate', params.startDate);
    if (params?.endDate) searchParams.append('endDate', params.endDate);
    if (params?.status) searchParams.append('status', params.status);
    if (params?.paymentMethod) searchParams.append('paymentMethod', params.paymentMethod);

    const response = await fetchWithTimeout(`/api/vendas?${searchParams}`, {}, 8000);

    if (response.ok) {
      const data = await response.json();
      // Salva dados no IndexedDB para uso offline
      saveSalesToIndexedDB(data.data);

      // Busca vendas offline não sincronizadas e adiciona ao resultado
      const db = await getOfflineDb();
      if (db) {
        const unsyncedSales = await db.sales
          .filter(s => (s as any)._synced === false)
          .toArray();

        if (unsyncedSales.length > 0) {
          console.log('[OfflineData] ' + unsyncedSales.length + ' vendas não sincronizadas encontradas');

          // Converte vendas offline para o formato esperado
          const offlineSalesFormatted: Sale[] = await Promise.all(
            unsyncedSales.map(async (sale) => {
              const items = await db.saleItems.where('sale_id').equals(sale.id).toArray();
              let customer = null;
              if (sale.customer_id) {
                const customerData = await db.customers.get(sale.customer_id);
                if (customerData) {
                  customer = {
                    id: customerData.id,
                    name: customerData.name,
                    address: customerData.address || undefined,
                    phone: customerData.phone || undefined,
                  };
                }
              }
              return {
                id: sale.id,
                receipt_number: (sale as any).receipt_number || sale.id.slice(0, 8).toUpperCase(),
                customer_id: sale.customer_id,
                customer_name: customer?.name || null,
                customer,
                user_id: sale.user_id || '',
                user_name: null,
                status: sale.status as 'pending' | 'completed' | 'cancelled',
                subtotal: sale.subtotal,
                discount_amount: sale.discount || 0,
                tax_amount: 0,
                total: sale.total,
                payment_method: sale.payment_method,
                notes: sale.notes,
                created_at: sale.created_at,
                completed_at: sale.updated_at,
                items: items.map(item => ({
                  id: item.id,
                  product_id: item.product_id,
                  product_name: item.product_name,
                  quantity: item.quantity,
                  unit: (item as any).unit || 'un',
                  unit_price: item.unit_price,
                  discount_amount: item.discount || 0,
                  total: item.total,
                })),
                _offline: true,
              };
            })
          );

          // Mescla vendas da API com vendas offline (offline primeiro, mais recentes)
          const apiSaleIds = new Set(data.data.map((s: Sale) => s.id));
          const uniqueOfflineSales = offlineSalesFormatted.filter(s => !apiSaleIds.has(s.id));

          // Ordena por data de criação (mais recentes primeiro)
          const mergedSales = [...uniqueOfflineSales, ...data.data]
            .sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());

          return {
            ...data,
            data: mergedSales.slice(0, limit),
            total: data.total + uniqueOfflineSales.length,
          };
        }
      }

      return data;
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, usando IndexedDB:', error);
  }

  // Fallback para IndexedDB
  return getSalesFromIndexedDB(params);
}

async function getSalesFromIndexedDB(params?: {
  search?: string;
  searchType?: string;
  page?: number;
  limit?: number;
  status?: string;
}): Promise<SalesResponse> {
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, page: 1, limit: 20, _offline: true };
  }

  console.log('[OfflineData] Buscando vendas do IndexedDB');

  try {
    let sales = await db.sales.orderBy('created_at').reverse().toArray();

    // Filtro de status
    if (params?.status) {
      sales = sales.filter(s => s.status === params.status);
    }

    // Filtro de busca
    if (params?.search) {
      const search = params.search.toLowerCase();
      const searchType = params.searchType || 'receipt';

      sales = sales.filter(s => {
        if (searchType === 'customer') {
          return s.customer_id?.toLowerCase().includes(search);
        }
        return s.id.toLowerCase().includes(search) ||
          (s as any).receipt_number?.toLowerCase().includes(search);
      });
    }

    // Paginação
    const page = params?.page || 1;
    const limit = params?.limit || 20;
    const start = (page - 1) * limit;
    const paginatedSales = sales.slice(start, start + limit);

    // Busca os itens de cada venda
    const salesWithItems: Sale[] = await Promise.all(
      paginatedSales.map(async (sale) => {
        const items = await db.saleItems.where('sale_id').equals(sale.id).toArray();

        // Busca dados do cliente se existir
        let customer = null;
        if (sale.customer_id) {
          const customerData = await db.customers.get(sale.customer_id);
          if (customerData) {
            customer = {
              id: customerData.id,
              name: customerData.name,
              address: customerData.address || undefined,
              phone: customerData.phone || undefined,
            };
          }
        }

        return {
          id: sale.id,
          receipt_number: (sale as any).receipt_number || sale.id.slice(0, 8).toUpperCase(),
          customer_id: sale.customer_id,
          customer_name: customer?.name || null,
          customer,
          user_id: sale.user_id || '',
          user_name: null,
          status: sale.status as 'pending' | 'completed' | 'cancelled',
          subtotal: sale.subtotal,
          discount_amount: sale.discount || 0,
          tax_amount: 0,
          total: sale.total,
          payment_method: sale.payment_method,
          notes: sale.notes,
          created_at: sale.created_at,
          completed_at: sale.updated_at,
          items: items.map(item => ({
            id: item.id,
            product_id: item.product_id,
            product_name: item.product_name,
            quantity: item.quantity,
            unit: (item as any).unit || 'un',
            unit_price: item.unit_price,
            discount_amount: item.discount || 0,
            total: item.total,
          })),
          _offline: true,
        };
      })
    );

    return {
      data: salesWithItems,
      total: sales.length,
      page,
      limit,
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao buscar vendas do IndexedDB:', error);
    return { data: [], total: 0, page: 1, limit: 20, _offline: true };
  }
}

async function saveSalesToIndexedDB(sales: Sale[]): Promise<void> {
  if (!sales || sales.length === 0) return;

  const db = await getOfflineDb();
  if (!db) return;

  try {
    await db.transaction('rw', [db.sales, db.saleItems], async () => {
      for (const sale of sales) {
        // Salva a venda
        await db.sales.put({
          id: sale.id,
          customer_id: sale.customer_id,
          user_id: sale.user_id,
          subtotal: sale.subtotal,
          discount: sale.discount_amount,
          total: sale.total,
          payment_method: sale.payment_method,
          payment_status: sale.status === 'pending' ? 'pending' : 'paid',
          status: sale.status,
          notes: sale.notes,
          cash_register_id: null,
          created_at: sale.created_at,
          updated_at: sale.completed_at || sale.created_at,
          receipt_number: sale.receipt_number,
          _synced: true,
          _last_sync: new Date().toISOString(),
        } as any);

        // Salva os itens
        if (sale.items) {
          for (const item of sale.items) {
            await db.saleItems.put({
              id: item.id,
              sale_id: sale.id,
              product_id: item.product_id,
              product_name: item.product_name,
              quantity: item.quantity,
              unit_price: item.unit_price,
              unit: item.unit || 'un',
              discount: item.discount_amount,
              total: item.total,
              created_at: sale.created_at,
              _synced: true,
            } as any);
          }
        }
      }
    });
    console.log(`[OfflineData] ${sales.length} vendas salvas no IndexedDB`);
  } catch (error) {
    console.error('[OfflineData] Erro ao salvar vendas no IndexedDB:', error);
  }
}

// ============ Operações Offline de Clientes ============

export interface CustomerData {
  id?: string;
  name: string;
  email?: string | null;
  phone?: string | null;
  document?: string | null;
  address?: string | null;
  city?: string | null;
  state?: string | null;
  zip_code?: string | null;
  notes?: string | null;
}

export interface CustomerResult {
  success: boolean;
  data?: CustomerData & { id: string };
  error?: string;
  _offline?: boolean;
}

/**
 * Cria cliente - tenta API primeiro, fallback para offline
 */
export async function createCustomer(customerData: CustomerData): Promise<CustomerResult> {
  try {
    const response = await fetchWithTimeout('/api/clientes', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(customerData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, criando cliente offline:', error);
  }

  return createCustomerOffline(customerData);
}

async function createCustomerOffline(customerData: CustomerData): Promise<CustomerResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const { v4: uuidv4 } = await import('uuid');
    const id = uuidv4();
    const now = new Date().toISOString();

    const customer = {
      id,
      name: customerData.name,
      email: customerData.email || null,
      phone: customerData.phone || null,
      document: customerData.document || null,
      address: customerData.address || null,
      city: customerData.city || null,
      state: customerData.state || null,
      zip_code: customerData.zip_code || null,
      notes: customerData.notes || null,
      is_active: true,
      created_at: now,
      updated_at: now,
      _synced: false,
      _last_sync: null,
    };

    await db.customers.add(customer);
    await db.addToSyncQueue('customers', id, 'create', customer);

    console.log(`[OfflineData] Cliente criado offline: ${id}`);
    return { success: true, data: { ...customer, id }, _offline: true };
  } catch (error) {
    console.error('[OfflineData] Erro ao criar cliente offline:', error);
    return { success: false, error: 'Erro ao criar cliente offline' };
  }
}

/**
 * Atualiza cliente - tenta API primeiro, fallback para offline
 */
export async function updateCustomer(id: string, customerData: Partial<CustomerData>): Promise<CustomerResult> {
  try {
    const response = await fetchWithTimeout(`/api/clientes/${id}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(customerData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, atualizando cliente offline:', error);
  }

  return updateCustomerOffline(id, customerData);
}

async function updateCustomerOffline(id: string, customerData: Partial<CustomerData>): Promise<CustomerResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const existing = await db.customers.get(id);
    if (!existing) {
      return { success: false, error: 'Cliente não encontrado' };
    }

    const updated = {
      ...existing,
      ...customerData,
      updated_at: new Date().toISOString(),
      _synced: false,
    };

    await db.customers.update(id, updated);
    await db.addToSyncQueue('customers', id, 'update', updated);

    console.log(`[OfflineData] Cliente atualizado offline: ${id}`);
    return { success: true, data: updated as any, _offline: true };
  } catch (error) {
    console.error('[OfflineData] Erro ao atualizar cliente offline:', error);
    return { success: false, error: 'Erro ao atualizar cliente offline' };
  }
}

/**
 * Deleta cliente - tenta API primeiro, fallback para offline
 */
export async function deleteCustomer(id: string): Promise<{ success: boolean; error?: string; _offline?: boolean }> {
  try {
    const response = await fetchWithTimeout('/api/clientes/' + id, {
      method: 'DELETE',
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      // Remove do IndexedDB também
      const db = await getOfflineDb();
      if (db) {
        await db.customers.delete(id);
      }
      return { success: true };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, deletando cliente offline:', error);
  }

  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    // Marca como inativo em vez de remover (soft delete para sincronização)
    const existing = await db.customers.get(id);
    if (existing) {
      await db.customers.update(id, {
        is_active: false,
        _synced: false,
      });
    }
    await db.addToSyncQueue('customers', id, 'delete', { id });
    console.log('[OfflineData] Cliente deletado offline: ' + id);
    return { success: true, _offline: true };
  } catch (error) {
    return { success: false, error: 'Erro ao deletar cliente offline' };
  }
}

// ============ Operações Offline de Categorias ============

export interface CategoryData {
  id?: string;
  name: string;
  description?: string | null;
  color?: string;
  parent_id?: string | null;
  sort_order?: number;
}

export interface CategoryResult {
  success: boolean;
  data?: CategoryData & { id: string };
  error?: string;
  _offline?: boolean;
}

/**
 * Cria categoria - tenta API primeiro, fallback para offline
 */
export async function createCategory(categoryData: CategoryData): Promise<CategoryResult> {
  try {
    const response = await fetchWithTimeout('/api/categorias', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(categoryData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, criando categoria offline:', error);
  }

  return createCategoryOffline(categoryData);
}

async function createCategoryOffline(categoryData: CategoryData): Promise<CategoryResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const { v4: uuidv4 } = await import('uuid');
    const id = uuidv4();
    const now = new Date().toISOString();

    const category = {
      id,
      name: categoryData.name,
      description: categoryData.description || null,
      color: categoryData.color || '#3B82F6',
      icon: null,
      parent_id: categoryData.parent_id || null,
      is_active: true,
      sort_order: categoryData.sort_order || 0,
      created_at: now,
      updated_at: now,
      _synced: false,
      _last_sync: null,
    };

    await db.categories.add(category);
    await db.addToSyncQueue('categories', id, 'create', category);

    console.log(`[OfflineData] Categoria criada offline: ${id}`);
    return { success: true, data: { ...category, id }, _offline: true };
  } catch (error) {
    console.error('[OfflineData] Erro ao criar categoria offline:', error);
    return { success: false, error: 'Erro ao criar categoria offline' };
  }
}

/**
 * Atualiza categoria - tenta API primeiro, fallback para offline
 */
export async function updateCategory(id: string, categoryData: Partial<CategoryData>): Promise<CategoryResult> {
  try {
    const response = await fetchWithTimeout(`/api/categorias/${id}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(categoryData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, atualizando categoria offline:', error);
  }

  return updateCategoryOffline(id, categoryData);
}

async function updateCategoryOffline(id: string, categoryData: Partial<CategoryData>): Promise<CategoryResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const existing = await db.categories.get(id);
    if (!existing) {
      return { success: false, error: 'Categoria não encontrada' };
    }

    const updated = {
      ...existing,
      ...categoryData,
      updated_at: new Date().toISOString(),
      _synced: false,
    };

    await db.categories.update(id, updated);
    await db.addToSyncQueue('categories', id, 'update', updated);

    console.log(`[OfflineData] Categoria atualizada offline: ${id}`);
    return { success: true, data: updated as any, _offline: true };
  } catch (error) {
    console.error('[OfflineData] Erro ao atualizar categoria offline:', error);
    return { success: false, error: 'Erro ao atualizar categoria offline' };
  }
}

/**
 * Deleta categoria - tenta API primeiro, fallback para offline
 */
export async function deleteCategory(id: string): Promise<{ success: boolean; error?: string; _offline?: boolean }> {
  try {
    const response = await fetchWithTimeout(`/api/categorias/${id}`, {
      method: 'DELETE',
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, deletando categoria offline:', error);
  }

  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    await db.categories.delete(id);
    await db.addToSyncQueue('categories', id, 'delete', { id });
    console.log(`[OfflineData] Categoria deletada offline: ${id}`);
    return { success: true, _offline: true };
  } catch (error) {
    return { success: false, error: 'Erro ao deletar categoria offline' };
  }
}

// ============ Helper para retry de operações IndexedDB ============

async function withRetry<T>(
  operation: () => Promise<T>,
  maxRetries: number = 2,
  delay: number = 100
): Promise<T> {
  let lastError: unknown;
  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      return await operation();
    } catch (error) {
      lastError = error;
      if (attempt < maxRetries) {
        console.log('[OfflineData] Tentativa ' + (attempt + 1) + ' falhou, retentando em ' + delay + 'ms...');
        await new Promise(resolve => setTimeout(resolve, delay));
        delay *= 2; // Backoff exponencial
      }
    }
  }
  throw lastError;
}

// ============ Operações Offline de Produtos ============

export interface ProductData {
  id?: string;
  name: string;
  description?: string | null;
  sku?: string | null;
  barcode?: string | null;
  category_id?: string | null;
  price: number;
  cost_price?: number | null;
  stock_quantity?: number | null;
  min_stock_quantity?: number | null;
  max_stock_quantity?: number | null;
  unit?: string | null;
  is_active?: boolean | null;
  is_weighable?: boolean | null;
  allow_decimal_quantity?: boolean | null;
  tax_rate?: number | null;
  image_url?: string | null;
  expiration_date?: string | null;
}

export interface ProductResult {
  success: boolean;
  data?: ProductData & { id: string };
  error?: string;
  _offline?: boolean;
}

/**
 * Cria produto - tenta API primeiro, fallback para offline
 */
export async function createProduct(productData: ProductData): Promise<ProductResult> {
  try {
    const response = await fetchWithTimeout('/api/produtos', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(productData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, criando produto offline:', error);
  }

  return createProductOffline(productData);
}

async function createProductOffline(productData: ProductData): Promise<ProductResult> {
  try {
    return await withRetry(async () => {
      const db = await getOfflineDb();
      if (!db) {
        throw new Error('Banco de dados offline não disponível');
      }

      const { v4: uuidv4 } = await import('uuid');
      const id = uuidv4();
      const now = new Date().toISOString();

      // Gera SKU único se não fornecido
      const sku = productData.sku ?? ('OFF-' + Date.now().toString(36).toUpperCase());

      const product = {
        id,
        name: productData.name,
        description: productData.description ?? null,
        sku,
        barcode: productData.barcode ?? null,
        category_id: productData.category_id ?? null,
        price: productData.price,
        cost_price: productData.cost_price ?? 0,
        stock_quantity: productData.stock_quantity ?? 0,
        min_stock_quantity: productData.min_stock_quantity ?? 0,
        max_stock_quantity: productData.max_stock_quantity ?? null,
        unit: productData.unit ?? 'un',
        is_active: productData.is_active !== false && productData.is_active !== null,
        is_weighable: productData.is_weighable ?? false,
        allow_decimal_quantity: productData.allow_decimal_quantity ?? false,
        tax_rate: productData.tax_rate ?? 0,
        image_url: productData.image_url ?? null,
        expiration_date: productData.expiration_date ?? null,
        created_at: now,
        updated_at: now,
        _synced: false,
        _last_sync: null,
      };

      await db.products.add(product);
      await db.addToSyncQueue('products', id, 'create', product);

      console.log('[OfflineData] Produto criado offline: ' + id);
      return { success: true, data: { ...product, id }, _offline: true };
    });
  } catch (error) {
    console.error('[OfflineData] Erro ao criar produto offline:', error);
    return { success: false, error: 'Erro ao criar produto offline' };
  }
}

/**
 * Atualiza produto - tenta API primeiro, fallback para offline
 */
export async function updateProduct(id: string, productData: Partial<ProductData>): Promise<ProductResult> {
  try {
    const response = await fetchWithTimeout('/api/produtos/' + id, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(productData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, atualizando produto offline:', error);
  }

  return updateProductOffline(id, productData);
}

async function updateProductOffline(id: string, productData: Partial<ProductData>): Promise<ProductResult> {
  try {
    return await withRetry(async () => {
      const db = await getOfflineDb();
      if (!db) {
        throw new Error('Banco de dados offline não disponível');
      }

      const existing = await db.products.get(id);
      if (!existing) {
        return { success: false, error: 'Produto não encontrado' };
      }

      // Garante que campos numéricos não sejam null
      const updated = {
        ...existing,
        name: productData.name ?? existing.name,
        description: productData.description ?? existing.description,
        sku: productData.sku ?? existing.sku,
        barcode: productData.barcode ?? existing.barcode,
        category_id: productData.category_id ?? existing.category_id,
        price: productData.price ?? existing.price,
        cost_price: productData.cost_price ?? existing.cost_price ?? 0,
        stock_quantity: productData.stock_quantity ?? existing.stock_quantity ?? 0,
        min_stock_quantity: productData.min_stock_quantity ?? existing.min_stock_quantity ?? 0,
        max_stock_quantity: productData.max_stock_quantity ?? existing.max_stock_quantity,
        unit: productData.unit ?? existing.unit ?? 'un',
        is_active: productData.is_active ?? existing.is_active ?? true,
        is_weighable: productData.is_weighable ?? existing.is_weighable ?? false,
        allow_decimal_quantity: productData.allow_decimal_quantity ?? existing.allow_decimal_quantity ?? false,
        tax_rate: productData.tax_rate ?? existing.tax_rate ?? 0,
        image_url: productData.image_url ?? existing.image_url,
        expiration_date: productData.expiration_date ?? existing.expiration_date,
        updated_at: new Date().toISOString(),
        _synced: false,
      };

      await db.products.update(id, updated);
      await db.addToSyncQueue('products', id, 'update', updated);

      console.log('[OfflineData] Produto atualizado offline: ' + id);
      return { success: true, data: updated as any, _offline: true };
    });
  } catch (error) {
    console.error('[OfflineData] Erro ao atualizar produto offline:', error);
    return { success: false, error: 'Erro ao atualizar produto offline' };
  }
}

/**
 * Deleta produto - tenta API primeiro, fallback para offline
 */
export async function deleteProduct(id: string): Promise<{ success: boolean; error?: string; _offline?: boolean }> {
  try {
    const response = await fetchWithTimeout('/api/produtos/' + id, {
      method: 'DELETE',
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      // Remove do IndexedDB também
      const db = await getOfflineDb();
      if (db) {
        await db.products.delete(id);
      }
      return { success: true };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, deletando produto offline:', error);
  }

  try {
    return await withRetry(async () => {
      const db = await getOfflineDb();
      if (!db) {
        throw new Error('Banco de dados offline não disponível');
      }

      // Marca como deletado em vez de remover (soft delete para sincronização)
      const existing = await db.products.get(id);
      if (existing) {
        await db.products.update(id, {
          is_active: false,
          _synced: false,
        });
      }
      await db.addToSyncQueue('products', id, 'delete', { id });
      console.log('[OfflineData] Produto deletado offline: ' + id);
      return { success: true, _offline: true };
    });
  } catch (error) {
    return { success: false, error: 'Erro ao deletar produto offline' };
  }
}

// ============ Movimentações de Estoque Offline ============

export interface StockMovementData {
  product_id: string;
  quantity: number;
  type: 'purchase' | 'adjustment' | 'loss' | 'return';
  reason?: string;
  user_id?: string;
}

export interface StockMovementResult {
  success: boolean;
  data?: any;
  error?: string;
  _offline?: boolean;
}

/**
 * Cria movimentação de estoque - tenta API primeiro, fallback para offline
 */
export async function createStockMovement(movementData: StockMovementData): Promise<StockMovementResult> {
  try {
    const response = await fetchWithTimeout('/api/estoque/movimentacoes', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(movementData),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, criando movimentação offline:', error);
  }

  return createStockMovementOffline(movementData);
}

async function createStockMovementOffline(movementData: StockMovementData): Promise<StockMovementResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const { v4: uuidv4 } = await import('uuid');
    const id = uuidv4();
    const now = new Date().toISOString();

    // Atualiza o estoque do produto localmente
    const product = await db.products.get(movementData.product_id);
    if (!product) {
      return { success: false, error: 'Produto não encontrado' };
    }

    const newQuantity = product.stock_quantity + movementData.quantity;
    await db.products.update(movementData.product_id, {
      stock_quantity: Math.max(0, newQuantity),
      _synced: false,
    });

    // Adiciona à fila de sincronização
    await db.addToSyncQueue('products', id, 'stock_movement', {
      ...movementData,
      id,
      created_at: now,
    });

    console.log(`[OfflineData] Movimentação de estoque criada offline: ${id}`);
    return {
      success: true,
      data: {
        id,
        ...movementData,
        created_at: now,
        new_stock: Math.max(0, newQuantity),
      },
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao criar movimentação offline:', error);
    return { success: false, error: 'Erro ao criar movimentação offline' };
  }
}

// ============ Receber Pagamento Offline ============

export interface ReceivePaymentData {
  sale_id: string;
  payment_method: string;
}

export interface ReceivePaymentResult {
  success: boolean;
  data?: any;
  error?: string;
  _offline?: boolean;
}

/**
 * Recebe pagamento de venda pendente - tenta API primeiro, fallback para offline
 */
export async function receivePayment(paymentData: ReceivePaymentData): Promise<ReceivePaymentResult> {
  try {
    const response = await fetchWithTimeout(`/api/vendas/${paymentData.sale_id}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ payment_method: paymentData.payment_method }),
    }, 8000);

    const result = await response.json();
    if (response.ok && result.success) {
      return { success: true, data: result.data };
    }
    if (!response.ok && result.error) {
      return { success: false, error: result.error };
    }
  } catch (error) {
    console.warn('[OfflineData] API falhou, registrando pagamento offline:', error);
  }

  return receivePaymentOffline(paymentData);
}

async function receivePaymentOffline(paymentData: ReceivePaymentData): Promise<ReceivePaymentResult> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível' };
  }

  try {
    const sale = await db.sales.get(paymentData.sale_id);
    if (!sale) {
      return { success: false, error: 'Venda não encontrada' };
    }

    const now = new Date().toISOString();
    const updated = {
      ...sale,
      payment_method: paymentData.payment_method,
      payment_status: 'paid',
      status: 'completed',
      updated_at: now,
      _synced: false,
    };

    await db.sales.update(paymentData.sale_id, updated);
    await db.addToSyncQueue('sales', paymentData.sale_id, 'update', {
      id: paymentData.sale_id,
      payment_method: paymentData.payment_method,
    });

    console.log(`[OfflineData] Pagamento registrado offline: ${paymentData.sale_id}`);
    return { success: true, data: updated, _offline: true };
  } catch (error) {
    console.error('[OfflineData] Erro ao registrar pagamento offline:', error);
    return { success: false, error: 'Erro ao registrar pagamento offline' };
  }
}

// ============ Relatórios Offline ============

export interface OfflineReportData {
  totalSales: number;
  totalRevenue: number;
  salesCount: number;
  topProducts: Array<{ name: string; quantity: number; total: number }>;
  salesByPayment: Record<string, { count: number; total: number }>;
  salesByStatus: Record<string, number>;
}

/**
 * Gera relatório a partir dos dados offline
 */
export async function generateOfflineReport(startDate?: string, endDate?: string): Promise<{
  success: boolean;
  data?: OfflineReportData;
  error?: string;
  _offline: boolean;
}> {
  const db = await getOfflineDb();
  if (!db) {
    return { success: false, error: 'Banco de dados offline não disponível', _offline: true };
  }

  try {
    let sales = await db.sales.toArray();

    // Filtra por data se fornecido
    if (startDate) {
      sales = sales.filter(s => s.created_at >= startDate);
    }
    if (endDate) {
      const endDateTime = endDate + 'T23:59:59.999Z';
      sales = sales.filter(s => s.created_at <= endDateTime);
    }

    // Calcula totais
    const completedSales = sales.filter(s => s.status === 'completed');
    const totalRevenue = completedSales.reduce((sum, s) => sum + s.total, 0);

    // Agrupa por método de pagamento
    const salesByPayment: Record<string, { count: number; total: number }> = {};
    completedSales.forEach(s => {
      if (!salesByPayment[s.payment_method]) {
        salesByPayment[s.payment_method] = { count: 0, total: 0 };
      }
      salesByPayment[s.payment_method].count++;
      salesByPayment[s.payment_method].total += s.total;
    });

    // Agrupa por status
    const salesByStatus: Record<string, number> = {};
    sales.forEach(s => {
      salesByStatus[s.status] = (salesByStatus[s.status] || 0) + 1;
    });

    // Top produtos (busca itens de vendas)
    const productTotals: Record<string, { name: string; quantity: number; total: number }> = {};
    for (const sale of completedSales) {
      const items = await db.saleItems.where('sale_id').equals(sale.id).toArray();
      items.forEach(item => {
        if (!productTotals[item.product_id]) {
          productTotals[item.product_id] = { name: item.product_name, quantity: 0, total: 0 };
        }
        productTotals[item.product_id].quantity += item.quantity;
        productTotals[item.product_id].total += item.total;
      });
    }

    const topProducts = Object.values(productTotals)
      .sort((a, b) => b.total - a.total)
      .slice(0, 10);

    return {
      success: true,
      data: {
        totalSales: sales.length,
        totalRevenue,
        salesCount: completedSales.length,
        topProducts,
        salesByPayment,
        salesByStatus,
      },
      _offline: true,
    };
  } catch (error) {
    console.error('[OfflineData] Erro ao gerar relatório offline:', error);
    return { success: false, error: 'Erro ao gerar relatório offline', _offline: true };
  }
}
