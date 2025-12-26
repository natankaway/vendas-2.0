/**
 * Hook para PDV Offline
 *
 * Abstrai a lógica de busca de produtos e criação de vendas,
 * funcionando tanto online quanto offline.
 */

'use client';

import { useState, useEffect, useCallback } from 'react';
import { v4 as uuidv4 } from 'uuid';
import { useOnlineStatus } from './use-online-status';
import { initOfflineData, syncSalesToServer } from '../services/sync-service';
import { useConnectionStore } from '../stores/connection-store';
import type { LocalProduct, LocalCategory } from '../db/offline-db';

interface CartItem {
  product: LocalProduct;
  quantity: number;
}

interface UsePDVOfflineOptions {
  onSaleComplete?: (saleId: string, isOffline: boolean) => void;
  onError?: (error: string) => void;
}

// Importação dinâmica para evitar SSR
const getOfflineDb = async () => {
  if (typeof window === 'undefined') return null;
  const { offlineDb } = await import('../db/offline-db');
  return offlineDb;
};

export function useOfflinePDV(options: UsePDVOfflineOptions = {}) {
  const { onSaleComplete, onError } = options;

  const { isOnline, isOffline, pendingSyncCount, isSyncing } = useOnlineStatus();
  const [isInitialized, setIsInitialized] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [cart, setCart] = useState<CartItem[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [localProducts, setLocalProducts] = useState<LocalProduct[]>([]);
  const [localCategories, setLocalCategories] = useState<LocalCategory[]>([]);

  // Busca produtos do banco local
  const loadProducts = useCallback(async (query: string = '') => {
    const db = await getOfflineDb();
    if (!db) return;

    try {
      let products: LocalProduct[];
      if (query) {
        products = await db.searchProducts(query, true);
      } else {
        products = await db.products.where('is_active').equals(1).limit(50).toArray();
      }
      setLocalProducts(products);
    } catch (err) {
      console.error('Erro ao carregar produtos:', err);
    }
  }, []);

  // Busca categorias do banco local
  const loadCategories = useCallback(async () => {
    const db = await getOfflineDb();
    if (!db) return;

    try {
      const categories = await db.categories.where('is_active').equals(1).toArray();
      setLocalCategories(categories);
    } catch (err) {
      console.error('Erro ao carregar categorias:', err);
    }
  }, []);

  // Atualiza produtos quando searchQuery muda
  useEffect(() => {
    loadProducts(searchQuery);
  }, [searchQuery, loadProducts]);

  // Inicializa dados offline
  useEffect(() => {
    async function init() {
      if (typeof window === 'undefined') return;

      try {
        setIsLoading(true);
        await initOfflineData();

        // Carrega dados locais
        await loadProducts();
        await loadCategories();

        // Verifica se há dados carregados
        const db = await getOfflineDb();
        const hasProducts = db ? await db.products.count() > 0 : false;
        setIsInitialized(hasProducts);

        if (!hasProducts && isOffline) {
          setError('Sem dados offline disponíveis. Conecte-se à internet para sincronizar.');
        }
      } catch (err) {
        console.error('Erro ao inicializar PDV offline:', err);
        setError('Erro ao inicializar dados offline');
      } finally {
        setIsLoading(false);
      }
    }

    init();
  }, [isOnline, isOffline, loadProducts, loadCategories]);

  // Sincroniza vendas pendentes quando volta online
  useEffect(() => {
    if (isOnline && pendingSyncCount > 0 && !isSyncing) {
      syncSalesToServer();
    }
  }, [isOnline, pendingSyncCount, isSyncing]);

  /**
   * Busca produto por código de barras
   */
  const findByBarcode = useCallback(async (barcode: string): Promise<LocalProduct | null> => {
    if (!barcode) return null;

    const db = await getOfflineDb();
    if (!db) return null;

    // Primeiro tenta no banco local
    const localProduct = await db.getProductByBarcode(barcode);
    if (localProduct) return localProduct;

    // Se online e não encontrou local, busca no servidor
    if (isOnline) {
      try {
        const response = await fetch(`/api/produtos?barcode=${encodeURIComponent(barcode)}`);
        if (response.ok) {
          const data = await response.json();
          if (data.data && data.data.length > 0) {
            const product = {
              ...data.data[0],
              _synced: true,
              _last_sync: new Date().toISOString(),
            };
            await db.products.put(product);
            return product;
          }
        }
      } catch {
        // Ignora erro de rede
      }
    }

    return null;
  }, [isOnline]);

  /**
   * Adiciona produto ao carrinho
   */
  const addToCart = useCallback((product: LocalProduct, quantity = 1) => {
    setCart(prev => {
      const existingIndex = prev.findIndex(item => item.product.id === product.id);

      if (existingIndex >= 0) {
        const updated = [...prev];
        updated[existingIndex] = {
          ...updated[existingIndex],
          quantity: updated[existingIndex].quantity + quantity,
        };
        return updated;
      }

      return [...prev, { product, quantity }];
    });
  }, []);

  /**
   * Remove produto do carrinho
   */
  const removeFromCart = useCallback((productId: string) => {
    setCart(prev => prev.filter(item => item.product.id !== productId));
  }, []);

  /**
   * Atualiza quantidade no carrinho
   */
  const updateQuantity = useCallback((productId: string, quantity: number) => {
    if (quantity <= 0) {
      removeFromCart(productId);
      return;
    }

    setCart(prev => prev.map(item =>
      item.product.id === productId
        ? { ...item, quantity }
        : item
    ));
  }, [removeFromCart]);

  /**
   * Limpa o carrinho
   */
  const clearCart = useCallback(() => {
    setCart([]);
  }, []);

  /**
   * Calcula totais
   */
  const totals = useCallback(() => {
    const subtotal = cart.reduce((sum, item) => sum + item.product.price * item.quantity, 0);
    return {
      subtotal,
      discount: 0,
      total: subtotal,
      itemCount: cart.reduce((sum, item) => sum + item.quantity, 0),
    };
  }, [cart]);

  /**
   * Finaliza venda
   */
  const completeSale = useCallback(async (
    paymentMethod: string,
    paymentStatus: string = 'paid',
    customerId?: string,
    discount = 0,
    notes?: string
  ): Promise<string | null> => {
    if (cart.length === 0) {
      onError?.('Carrinho vazio');
      return null;
    }

    const db = await getOfflineDb();
    if (!db) {
      onError?.('Banco de dados não disponível');
      return null;
    }

    const { subtotal, total } = totals();
    const saleId = uuidv4();
    const now = new Date().toISOString();

    // Gera número de recibo offline: OFF-YYMMDD-XXXX
    const date = new Date();
    const year = date.getFullYear().toString().slice(-2);
    const month = (date.getMonth() + 1).toString().padStart(2, '0');
    const day = date.getDate().toString().padStart(2, '0');
    const random = Math.floor(Math.random() * 10000).toString().padStart(4, '0');
    const receiptNumber = `OFF-${year}${month}${day}-${random}`;

    const sale = {
      id: saleId,
      receipt_number: receiptNumber,
      customer_id: customerId || null,
      user_id: null,
      subtotal,
      discount,
      total: total - discount,
      payment_method: paymentMethod,
      payment_status: paymentStatus,
      status: paymentStatus === 'pending' ? 'pending' : 'completed',
      notes: notes || null,
      cash_register_id: null,
      created_at: now,
      updated_at: now,
    };

    const items = cart.map(item => ({
      id: uuidv4(),
      sale_id: saleId,
      product_id: item.product.id,
      product_name: item.product.name,
      quantity: item.quantity,
      unit: item.product.unit || 'un', // Unidade de medida
      unit_price: item.product.price,
      discount: 0,
      total: item.product.price * item.quantity,
      created_at: now,
    }));

    try {
      if (isOnline) {
        // Tenta enviar direto para o servidor
        const response = await fetch('/api/vendas', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ ...sale, items }),
        });

        if (response.ok) {
          const data = await response.json();
          clearCart();
          onSaleComplete?.(data.data?.id || saleId, false);
          return data.data?.id || saleId;
        }

        console.warn('Falha ao enviar venda online, salvando offline');
      }

      // Salva offline
      await db.createOfflineSale(sale, items);

      const pendingCount = await db.getPendingSyncCount();
      useConnectionStore.getState().setPendingSyncCount(pendingCount);

      clearCart();
      onSaleComplete?.(saleId, true);
      return saleId;

    } catch (err) {
      console.error('Erro ao finalizar venda:', err);

      try {
        await db.createOfflineSale(sale, items);
        const pendingCount = await db.getPendingSyncCount();
        useConnectionStore.getState().setPendingSyncCount(pendingCount);

        clearCart();
        onSaleComplete?.(saleId, true);
        return saleId;
      } catch (offlineErr) {
        const errorMsg = 'Erro ao salvar venda: ' + (offlineErr instanceof Error ? offlineErr.message : 'Erro desconhecido');
        onError?.(errorMsg);
        setError(errorMsg);
        return null;
      }
    }
  }, [cart, totals, isOnline, clearCart, onSaleComplete, onError]);

  return {
    // Estado
    isOnline,
    isOffline,
    isInitialized,
    isLoading,
    error,
    pendingSyncCount,
    isSyncing,

    // Dados
    products: localProducts,
    categories: localCategories,
    cart,
    totals: totals(),

    // Ações de busca
    searchQuery,
    setSearchQuery,
    findByBarcode,
    reloadProducts: loadProducts,

    // Ações do carrinho
    addToCart,
    removeFromCart,
    updateQuantity,
    clearCart,

    // Finalização
    completeSale,
  };
}
