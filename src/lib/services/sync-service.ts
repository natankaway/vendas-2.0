/**
 * Serviço de Sincronização Automática
 *
 * Gerencia a sincronização de dados offline com o servidor
 * quando a conexão é restabelecida.
 */

'use client';

import { SyncQueueItem } from '../db/offline-db';

// Import dinâmico para evitar SSR
const getOfflineDb = async () => {
  if (typeof window === 'undefined') return null;
  const { offlineDb } = await import('../db/offline-db');
  return offlineDb;
};

export interface SyncResult {
  success: boolean;
  synced: number;
  failed: number;
  errors: string[];
}

/**
 * Estado da sincronização
 */
let isSyncing = false;
let syncListeners: ((status: SyncStatus) => void)[] = [];

export interface SyncStatus {
  isSyncing: boolean;
  pendingCount: number;
  lastSync: string | null;
  lastError: string | null;
}

/**
 * Registra listener para mudanças de status
 */
export function onSyncStatusChange(listener: (status: SyncStatus) => void) {
  syncListeners.push(listener);
  return () => {
    syncListeners = syncListeners.filter(l => l !== listener);
  };
}

/**
 * Notifica listeners sobre mudança de status
 */
async function notifyListeners() {
  const status = await getSyncStatus();
  syncListeners.forEach(listener => listener(status));
}

/**
 * Obtém status atual da sincronização
 */
export async function getSyncStatus(): Promise<SyncStatus> {
  const db = await getOfflineDb();
  if (!db) {
    return { isSyncing: false, pendingCount: 0, lastSync: null, lastError: null };
  }

  const pendingCount = await db.getPendingSyncCount();
  const lastSync = await db.getConfig<string>('last_sync');
  const lastError = await db.getConfig<string>('last_sync_error');

  return {
    isSyncing,
    pendingCount,
    lastSync: lastSync || null,
    lastError: lastError || null,
  };
}

/**
 * Sincroniza todos os dados pendentes
 */
export async function syncAll(): Promise<SyncResult> {
  if (isSyncing) {
    console.log('[Sync] Sincronização já em andamento');
    return { success: false, synced: 0, failed: 0, errors: ['Sincronização já em andamento'] };
  }

  const db = await getOfflineDb();
  if (!db) {
    return { success: false, synced: 0, failed: 0, errors: ['Banco de dados offline não disponível'] };
  }

  isSyncing = true;
  await notifyListeners();

  const result: SyncResult = { success: true, synced: 0, failed: 0, errors: [] };

  try {
    console.log('[Sync] Iniciando sincronização...');
    const pendingItems = await db.getPendingSyncItems();
    console.log('[Sync] ' + pendingItems.length + ' itens pendentes');

    for (const item of pendingItems) {
      try {
        await syncItem(item);
        // Remove item da fila após sucesso
        if (item.id) {
          await db.syncQueue.delete(item.id);
        }
        result.synced++;
        console.log('[Sync] Item sincronizado: ' + item.entity_type + '/' + item.entity_id);
      } catch (error) {
        result.failed++;
        const errorMsg = error instanceof Error ? error.message : 'Erro desconhecido';
        result.errors.push(item.entity_type + '/' + item.entity_id + ': ' + errorMsg);

        // Atualiza tentativas e erro
        if (item.id) {
          await db.syncQueue.update(item.id, {
            attempts: item.attempts + 1,
            last_error: errorMsg,
            status: item.attempts >= 2 ? 'failed' : 'pending',
          });
        }
        console.error('[Sync] Erro ao sincronizar ' + item.entity_type + '/' + item.entity_id + ':', error);
      }
    }

    result.success = result.failed === 0;
    await db.setConfig('last_sync', new Date().toISOString());
    if (result.errors.length > 0) {
      await db.setConfig('last_sync_error', result.errors.join('; '));
    } else {
      await db.setConfig('last_sync_error', null);
    }

    console.log('[Sync] Concluído: ' + result.synced + ' sincronizados, ' + result.failed + ' falhas');
  } catch (error) {
    console.error('[Sync] Erro geral:', error);
    result.success = false;
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
  } finally {
    isSyncing = false;
    await notifyListeners();
  }

  return result;
}

/**
 * Sincroniza um item específico
 */
async function syncItem(item: SyncQueueItem): Promise<void> {
  const { entity_type, operation, data } = item;

  switch (entity_type) {
    case 'sales':
      await syncSale(operation, data);
      break;
    case 'customers':
      await syncCustomer(operation, data);
      break;
    case 'categories':
      await syncCategory(operation, data);
      break;
    case 'products':
      await syncProduct(operation, data);
      break;
    default:
      console.warn('[Sync] Tipo de entidade não suportado: ' + entity_type);
  }
}

/**
 * Sincroniza venda
 */
async function syncSale(operation: string, data: Record<string, unknown>): Promise<void> {
  if (operation === 'create') {
    const saleData = data.sale as Record<string, unknown>;
    const items = data.items as Array<Record<string, unknown>>;

    const response = await fetch('/api/vendas', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        customer_id: saleData.customer_id,
        user_id: saleData.user_id,
        items: items.map(item => ({
          product_id: item.product_id,
          product_name: item.product_name,
          quantity: item.quantity,
          unit_price: item.unit_price,
          unit: item.unit,
          discount_amount: item.discount || 0,
          discount_percent: 0,
          notes: null,
        })),
        discount_amount: saleData.discount || 0,
        payment_method: saleData.payment_method,
        payment_details: {},
        offline_id: saleData.id,
        offline_receipt: saleData.receipt_number,
      }),
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao sincronizar venda');
    }

    // Atualiza a venda local como sincronizada
    const db = await getOfflineDb();
    if (db && saleData.id) {
      await db.markSaleAsSynced(saleData.id as string);
    }
  } else if (operation === 'update') {
    const response = await fetch('/api/vendas/' + data.id, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao atualizar venda');
    }
  }
}

/**
 * Sincroniza cliente
 */
async function syncCustomer(operation: string, data: Record<string, unknown>): Promise<void> {
  const url = operation === 'create' ? '/api/clientes' : '/api/clientes/' + data.id;
  const method = operation === 'create' ? 'POST' : operation === 'update' ? 'PUT' : 'DELETE';

  const response = await fetch(url, {
    method,
    headers: { 'Content-Type': 'application/json' },
    body: method !== 'DELETE' ? JSON.stringify(data) : undefined,
  });

  if (!response.ok) {
    const error = await response.json();
    throw new Error(error.error || 'Erro ao ' + operation + ' cliente');
  }

  const db = await getOfflineDb();
  if (db && data.id) {
    await db.customers.update(data.id as string, { _synced: true, _last_sync: new Date().toISOString() });
  }
}

/**
 * Sincroniza categoria
 */
async function syncCategory(operation: string, data: Record<string, unknown>): Promise<void> {
  const url = operation === 'create' ? '/api/categorias' : '/api/categorias/' + data.id;
  const method = operation === 'create' ? 'POST' : operation === 'update' ? 'PUT' : 'DELETE';

  const response = await fetch(url, {
    method,
    headers: { 'Content-Type': 'application/json' },
    body: method !== 'DELETE' ? JSON.stringify(data) : undefined,
  });

  if (!response.ok) {
    const error = await response.json();
    throw new Error(error.error || 'Erro ao ' + operation + ' categoria');
  }

  const db = await getOfflineDb();
  if (db && data.id) {
    await db.categories.update(data.id as string, { _synced: true, _last_sync: new Date().toISOString() });
  }
}

/**
 * Sincroniza produto (CRUD e movimentação de estoque)
 */
async function syncProduct(operation: string, data: Record<string, unknown>): Promise<void> {
  if (operation === 'stock_movement') {
    const response = await fetch('/api/estoque/movimentacoes', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao sincronizar movimentação');
    }
  } else if (operation === 'create') {
    const response = await fetch('/api/produtos', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao criar produto');
    }

    const db = await getOfflineDb();
    if (db && data.id) {
      await db.products.update(data.id as string, { _synced: true, _last_sync: new Date().toISOString() });
    }
  } else if (operation === 'update') {
    const response = await fetch('/api/produtos/' + data.id, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao atualizar produto');
    }

    const db = await getOfflineDb();
    if (db && data.id) {
      await db.products.update(data.id as string, { _synced: true, _last_sync: new Date().toISOString() });
    }
  } else if (operation === 'delete') {
    const response = await fetch('/api/produtos/' + data.id, {
      method: 'DELETE',
    });

    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || 'Erro ao deletar produto');
    }

    const db = await getOfflineDb();
    if (db && data.id) {
      await db.products.delete(data.id as string);
    }
  }
}

/**
 * Inicia monitoramento de conexão para sincronização automática
 */
export function startAutoSync() {
  if (typeof window === 'undefined') return;

  window.addEventListener('online', async () => {
    console.log('[Sync] Conexão restaurada, iniciando sincronização...');
    setTimeout(async () => {
      const result = await syncAll();
      if (result.synced > 0) {
        window.dispatchEvent(new CustomEvent('sync-complete', { detail: result }));
      }
    }, 2000);
  });

  if (navigator.onLine) {
    setTimeout(async () => {
      const db = await getOfflineDb();
      if (db) {
        const pendingCount = await db.getPendingSyncCount();
        if (pendingCount > 0) {
          console.log('[Sync] ' + pendingCount + ' itens pendentes, sincronizando...');
          syncAll();
        }
      }
    }, 3000);
  }

  console.log('[Sync] Auto-sync iniciado');
}

/**
 * Para monitoramento
 */
export function stopAutoSync() {
  console.log('[Sync] Auto-sync parado');
}

/**
 * Inicializa dados offline - baixa dados do servidor para cache local
 */
export async function initOfflineData(): Promise<void> {
  const db = await getOfflineDb();
  if (!db) return;

  console.log('[Sync] Inicializando dados offline...');

  try {
    // Baixa produtos
    const productsRes = await fetch('/api/produtos?limit=10000');
    if (productsRes.ok) {
      const productsData = await productsRes.json();
      if (productsData.data && Array.isArray(productsData.data)) {
        await db.syncProductsFromServer(productsData.data);
        console.log('[Sync] ' + productsData.data.length + ' produtos cacheados');
      }
    }

    // Baixa clientes
    const customersRes = await fetch('/api/clientes?limit=10000');
    if (customersRes.ok) {
      const customersData = await customersRes.json();
      if (customersData.data && Array.isArray(customersData.data)) {
        await db.syncCustomersFromServer(customersData.data);
        console.log('[Sync] ' + customersData.data.length + ' clientes cacheados');
      }
    }

    // Baixa categorias
    const categoriesRes = await fetch('/api/categorias');
    if (categoriesRes.ok) {
      const categoriesData = await categoriesRes.json();
      if (categoriesData.data && Array.isArray(categoriesData.data)) {
        await db.syncCategoriesFromServer(categoriesData.data);
        console.log('[Sync] ' + categoriesData.data.length + ' categorias cacheadas');
      }
    }

    await db.setConfig('last_offline_init', new Date().toISOString());
    console.log('[Sync] Dados offline inicializados com sucesso');
  } catch (error) {
    console.error('[Sync] Erro ao inicializar dados offline:', error);
  }
}

/**
 * Sincroniza apenas vendas pendentes com o servidor
 */
export async function syncSalesToServer(): Promise<SyncResult> {
  console.log('[Sync] Sincronizando vendas pendentes...');

  const db = await getOfflineDb();
  if (!db) {
    return { success: false, synced: 0, failed: 0, errors: ['Banco de dados offline não disponível'] };
  }

  const result: SyncResult = { success: true, synced: 0, failed: 0, errors: [] };

  try {
    const pendingItems = await db.getPendingSyncItems();
    const salesItems = pendingItems.filter(item => item.entity_type === 'sales');

    for (const item of salesItems) {
      try {
        await syncItem(item);
        if (item.id) {
          await db.syncQueue.delete(item.id);
        }
        result.synced++;
      } catch (error) {
        result.failed++;
        const errorMsg = error instanceof Error ? error.message : 'Erro desconhecido';
        result.errors.push('sales/' + item.entity_id + ': ' + errorMsg);

        if (item.id) {
          await db.syncQueue.update(item.id, {
            attempts: item.attempts + 1,
            last_error: errorMsg,
            status: item.attempts >= 2 ? 'failed' : 'pending',
          });
        }
      }
    }

    result.success = result.failed === 0;
    console.log('[Sync] Vendas sincronizadas: ' + result.synced + ', falhas: ' + result.failed);
  } catch (error) {
    result.success = false;
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
  }

  return result;
}

/**
 * Sincronização completa - baixa do servidor e envia pendentes
 */
export async function fullSync(): Promise<{
  download: { success: boolean; errors: string[] };
  upload: SyncResult;
}> {
  console.log('[Sync] Iniciando sincronização completa...');

  const downloadResult = { success: true, errors: [] as string[] };
  let uploadResult: SyncResult = { success: true, synced: 0, failed: 0, errors: [] };

  try {
    // Primeiro baixa dados do servidor
    await initOfflineData();
  } catch (error) {
    downloadResult.success = false;
    downloadResult.errors.push(error instanceof Error ? error.message : 'Erro ao baixar dados');
  }

  try {
    // Depois envia dados pendentes
    uploadResult = await syncAll();
  } catch (error) {
    uploadResult.success = false;
    uploadResult.errors.push(error instanceof Error ? error.message : 'Erro ao enviar dados');
  }

  console.log('[Sync] Sincronização completa finalizada');

  return {
    download: downloadResult,
    upload: uploadResult,
  };
}
