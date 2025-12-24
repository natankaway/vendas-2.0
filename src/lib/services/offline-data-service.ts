/**
 * Serviço de Dados Offline
 *
 * Gerencia busca de dados com fallback automático para IndexedDB quando offline.
 */

'use client';

import { useConnectionStore } from '../stores/connection-store';

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
}

/**
 * Busca produtos - online da API, offline do IndexedDB
 */
export async function fetchProducts(params?: {
  search?: string;
  category?: string;
  page?: number;
  limit?: number;
}): Promise<ProductsResponse> {
  const store = useConnectionStore.getState();
  const isOnline = store.status === 'online';

  // Tenta API primeiro se online
  if (isOnline) {
    try {
      const searchParams = new URLSearchParams();
      if (params?.search) searchParams.append('search', params.search);
      if (params?.category) searchParams.append('category', params.category);
      if (params?.page) searchParams.append('page', String(params.page));
      if (params?.limit) searchParams.append('limit', String(params.limit));

      const response = await fetch(`/api/produtos?${searchParams}`);
      if (response.ok) {
        return await response.json();
      }
    } catch (error) {
      console.warn('[OfflineData] Falha ao buscar produtos da API, usando IndexedDB:', error);
    }
  }

  // Fallback para IndexedDB
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, page: 1, limit: 20, stats: { total: 0, lowStock: 0, outOfStock: 0, totalValue: 0 } };
  }

  console.log('[OfflineData] Buscando produtos do IndexedDB');

  let products = await db.products.where('is_active').equals(1).toArray();

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

  // Calcula estatísticas
  const allProducts = await db.products.toArray();
  const stats = {
    total: allProducts.length,
    lowStock: allProducts.filter(p => p.stock_quantity > 0 && p.stock_quantity <= p.min_stock_quantity).length,
    outOfStock: allProducts.filter(p => p.stock_quantity <= 0).length,
    totalValue: allProducts.reduce((sum, p) => sum + (p.price * p.stock_quantity), 0),
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
  };
}

/**
 * Busca categorias - online da API, offline do IndexedDB
 */
export async function fetchCategories(): Promise<CategoriesResponse> {
  const store = useConnectionStore.getState();
  const isOnline = store.status === 'online';

  // Tenta API primeiro se online
  if (isOnline) {
    try {
      const response = await fetch('/api/categorias');
      if (response.ok) {
        return await response.json();
      }
    } catch (error) {
      console.warn('[OfflineData] Falha ao buscar categorias da API, usando IndexedDB:', error);
    }
  }

  // Fallback para IndexedDB
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0 };
  }

  console.log('[OfflineData] Buscando categorias do IndexedDB');

  const categories = await db.categories.toArray();

  return {
    data: categories.map(c => ({
      ...c,
      is_active: c.is_active ?? true,
    })),
    total: categories.length,
  };
}

/**
 * Busca clientes - online da API, offline do IndexedDB
 */
export async function fetchCustomers(params?: {
  search?: string;
  searchType?: string;
  page?: number;
  limit?: number;
}): Promise<CustomersResponse> {
  const store = useConnectionStore.getState();
  const isOnline = store.status === 'online';

  // Tenta API primeiro se online
  if (isOnline) {
    try {
      const searchParams = new URLSearchParams();
      if (params?.search) searchParams.append('search', params.search);
      if (params?.searchType) searchParams.append('searchType', params.searchType);
      if (params?.page) searchParams.append('page', String(params.page));
      if (params?.limit) searchParams.append('limit', String(params.limit));

      const response = await fetch(`/api/clientes?${searchParams}`);
      if (response.ok) {
        return await response.json();
      }
    } catch (error) {
      console.warn('[OfflineData] Falha ao buscar clientes da API, usando IndexedDB:', error);
    }
  }

  // Fallback para IndexedDB
  const db = await getOfflineDb();
  if (!db) {
    return { data: [], total: 0, page: 1, limit: 10, totalPages: 0 };
  }

  console.log('[OfflineData] Buscando clientes do IndexedDB');

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
  };
}

/**
 * Verifica se há dados offline disponíveis
 */
export async function hasOfflineData(): Promise<boolean> {
  const db = await getOfflineDb();
  if (!db) return false;
  return await db.isPopulated();
}
