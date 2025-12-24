/**
 * Serviço de Sincronização
 *
 * Gerencia a sincronização bidirecional entre o banco local (IndexedDB)
 * e o servidor (Supabase).
 */

'use client';

import { useConnectionStore } from '../stores/connection-store';
import type { LocalProduct, LocalCategory, LocalCustomer } from '../db/offline-db';

// Importação dinâmica para evitar SSR
const getOfflineDb = async () => {
  if (typeof window === 'undefined') return null;
  const { offlineDb } = await import('../db/offline-db');
  return offlineDb;
};

interface SyncResult {
  success: boolean;
  synced: number;
  failed: number;
  errors: string[];
}

/**
 * Baixa produtos do servidor para o banco local
 */
export async function syncProductsFromServer(): Promise<SyncResult> {
  const result: SyncResult = { success: false, synced: 0, failed: 0, errors: [] };

  const db = await getOfflineDb();
  if (!db) return result;

  try {
    const response = await fetch('/api/produtos?limit=10000&active=true');
    if (!response.ok) throw new Error('Erro ao buscar produtos');

    const data = await response.json();
    const products: LocalProduct[] = (data.data || []).map((p: Record<string, unknown>) => ({
      ...p,
      _synced: true,
      _last_sync: new Date().toISOString(),
    }));

    await db.syncProductsFromServer(products);
    result.synced = products.length;
    result.success = true;

    console.log(`[Sync] ${products.length} produtos sincronizados`);
  } catch (error) {
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
    console.error('[Sync] Erro ao sincronizar produtos:', error);
  }

  return result;
}

/**
 * Baixa categorias do servidor para o banco local
 */
export async function syncCategoriesFromServer(): Promise<SyncResult> {
  const result: SyncResult = { success: false, synced: 0, failed: 0, errors: [] };

  const db = await getOfflineDb();
  if (!db) return result;

  try {
    const response = await fetch('/api/categorias');
    if (!response.ok) throw new Error('Erro ao buscar categorias');

    const data = await response.json();
    const categories: LocalCategory[] = (data.data || []).map((c: Record<string, unknown>) => ({
      ...c,
      _synced: true,
      _last_sync: new Date().toISOString(),
    }));

    await db.syncCategoriesFromServer(categories);
    result.synced = categories.length;
    result.success = true;

    console.log(`[Sync] ${categories.length} categorias sincronizadas`);
  } catch (error) {
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
    console.error('[Sync] Erro ao sincronizar categorias:', error);
  }

  return result;
}

/**
 * Baixa clientes do servidor para o banco local
 */
export async function syncCustomersFromServer(): Promise<SyncResult> {
  const result: SyncResult = { success: false, synced: 0, failed: 0, errors: [] };

  const db = await getOfflineDb();
  if (!db) return result;

  try {
    const response = await fetch('/api/clientes?limit=10000');
    if (!response.ok) throw new Error('Erro ao buscar clientes');

    const data = await response.json();
    const customers: LocalCustomer[] = (data.data || []).map((c: Record<string, unknown>) => ({
      ...c,
      _synced: true,
      _last_sync: new Date().toISOString(),
    }));

    await db.syncCustomersFromServer(customers);
    result.synced = customers.length;
    result.success = true;

    console.log(`[Sync] ${customers.length} clientes sincronizados`);
  } catch (error) {
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
    console.error('[Sync] Erro ao sincronizar clientes:', error);
  }

  return result;
}

/**
 * Envia vendas offline para o servidor
 */
export async function syncSalesToServer(): Promise<SyncResult> {
  const result: SyncResult = { success: false, synced: 0, failed: 0, errors: [] };
  const store = useConnectionStore.getState();

  const db = await getOfflineDb();
  if (!db) return result;

  try {
    store.setSyncing(true);

    const pendingItems = await db.getPendingSyncItems();
    const salesItems = pendingItems.filter(item => item.entity_type === 'sales');

    for (const item of salesItems) {
      try {
        await db.syncQueue.update(item.id!, { status: 'processing' });

        const { sale, items } = item.data as { sale: Record<string, unknown>; items: Record<string, unknown>[] };

        const response = await fetch('/api/vendas', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            ...sale,
            items,
            _offline_id: sale.id,
          }),
        });

        if (response.ok) {
          const serverSale = await response.json();
          await db.markSaleAsSynced(sale.id as string, serverSale.data?.id);
          await db.syncQueue.delete(item.id!);
          result.synced++;
          console.log(`[Sync] Venda ${sale.id} sincronizada`);
        } else {
          const error = await response.json();
          throw new Error(error.error || 'Erro ao enviar venda');
        }
      } catch (error) {
        result.failed++;
        const errorMessage = error instanceof Error ? error.message : 'Erro desconhecido';
        result.errors.push(`Venda ${item.entity_id}: ${errorMessage}`);

        await db.syncQueue.update(item.id!, {
          status: 'failed',
          attempts: (item.attempts || 0) + 1,
          last_error: errorMessage,
        });
      }
    }

    result.success = result.failed === 0;

    const pendingCount = await db.getPendingSyncCount();
    store.setPendingSyncCount(pendingCount);
    store.setLastSync(new Date(), result.success ? undefined : result.errors.join('; '));

  } catch (error) {
    result.errors.push(error instanceof Error ? error.message : 'Erro desconhecido');
    console.error('[Sync] Erro ao sincronizar vendas:', error);
  } finally {
    store.setSyncing(false);
  }

  return result;
}

/**
 * Executa sincronização completa (download + upload)
 */
export async function fullSync(): Promise<{
  download: SyncResult;
  upload: SyncResult;
}> {
  const store = useConnectionStore.getState();

  if (store.status !== 'online') {
    return {
      download: { success: false, synced: 0, failed: 0, errors: ['Offline'] },
      upload: { success: false, synced: 0, failed: 0, errors: ['Offline'] },
    };
  }

  console.log('[Sync] Iniciando sincronização completa...');

  const [productsResult, categoriesResult, customersResult] = await Promise.all([
    syncProductsFromServer(),
    syncCategoriesFromServer(),
    syncCustomersFromServer(),
  ]);

  const download: SyncResult = {
    success: productsResult.success && categoriesResult.success && customersResult.success,
    synced: productsResult.synced + categoriesResult.synced + customersResult.synced,
    failed: productsResult.failed + categoriesResult.failed + customersResult.failed,
    errors: [...productsResult.errors, ...categoriesResult.errors, ...customersResult.errors],
  };

  const upload = await syncSalesToServer();

  console.log('[Sync] Sincronização completa:', { download, upload });

  return { download, upload };
}

/**
 * Verifica e sincroniza automaticamente quando online
 */
export async function autoSync(): Promise<void> {
  const store = useConnectionStore.getState();

  if (store.status !== 'online' || store.isSyncing) {
    return;
  }

  const db = await getOfflineDb();
  if (!db) return;

  const pendingCount = await db.getPendingSyncCount();
  store.setPendingSyncCount(pendingCount);

  if (pendingCount > 0) {
    console.log(`[Sync] ${pendingCount} itens pendentes, iniciando upload...`);
    await syncSalesToServer();
  }
}

/**
 * Inicializa dados offline (primeira vez ou atualização)
 */
export async function initOfflineData(): Promise<boolean> {
  if (typeof window === 'undefined') return false;

  const store = useConnectionStore.getState();
  const db = await getOfflineDb();
  if (!db) return false;

  if (store.status !== 'online') {
    console.log('[Sync] Offline, usando dados em cache');
    return await db.isPopulated();
  }

  try {
    console.log('[Sync] Inicializando dados offline...');

    await Promise.all([
      syncProductsFromServer(),
      syncCategoriesFromServer(),
      syncCustomersFromServer(),
    ]);

    console.log('[Sync] Dados offline inicializados');
    return true;
  } catch (error) {
    console.error('[Sync] Erro ao inicializar dados offline:', error);
    return await db.isPopulated();
  }
}
