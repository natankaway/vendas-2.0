/**
 * Página de Gestão de Estoque
 *
 * Visualização de estoque, alertas e movimentações.
 * Suporte offline para visualização de dados.
 */

'use client';

import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Package,
  AlertTriangle,
  TrendingUp,
  TrendingDown,
  History,
  Search,
  Plus,
  Minus,
  RefreshCw,
  CheckCircle,
  XCircle,
  PackageX,
  ArrowUpCircle,
  ArrowDownCircle,
  RotateCcw,
  Trash2,
  WifiOff,
} from 'lucide-react';
import { useOnlineStatus } from '@/lib/hooks/use-online-status';
import { fetchProducts } from '@/lib/services/offline-data-service';

interface Product {
  id: string;
  name: string;
  sku: string;
  stock_quantity: number;
  min_stock_quantity: number;
  category_id: string | null;
}

interface StockMovement {
  id: string;
  product_id: string;
  product_name: string;
  product_sku: string;
  quantity: number;
  type: string;
  reason: string | null;
  user_name: string;
  created_at: string;
}

interface LowStockData {
  out_of_stock: Product[];
  low_stock: Product[];
  total_alerts: number;
}

const movementTypeConfig: Record<string, { label: string; icon: React.ReactNode; color: string }> = {
  purchase: { label: 'Entrada', icon: <ArrowDownCircle className="w-4 h-4" />, color: 'text-green-600 bg-green-100 dark:text-green-400 dark:bg-green-900/30' },
  sale: { label: 'Venda', icon: <ArrowUpCircle className="w-4 h-4" />, color: 'text-blue-600 bg-blue-100 dark:text-blue-400 dark:bg-blue-900/30' },
  adjustment: { label: 'Ajuste', icon: <RefreshCw className="w-4 h-4" />, color: 'text-purple-600 bg-purple-100 dark:text-purple-400 dark:bg-purple-900/30' },
  return: { label: 'Devolução', icon: <RotateCcw className="w-4 h-4" />, color: 'text-orange-600 bg-orange-100 dark:text-orange-400 dark:bg-orange-900/30' },
  loss: { label: 'Perda', icon: <Trash2 className="w-4 h-4" />, color: 'text-red-600 bg-red-100 dark:text-red-400 dark:bg-red-900/30' },
};

export default function EstoquePage() {
  const queryClient = useQueryClient();
  const [userId] = useState('admin-001');
  const [searchQuery, setSearchQuery] = useState('');
  const [showMovementModal, setShowMovementModal] = useState<Product | null>(null);
  const [movementType, setMovementType] = useState<'purchase' | 'adjustment' | 'loss'>('purchase');
  const [movementQuantity, setMovementQuantity] = useState('');
  const [movementReason, setMovementReason] = useState('');

  // Hook de status de conexão
  const { isOnline, isOffline, status: connectionStatus } = useOnlineStatus();

  // Fetch low stock alerts
  const { data: alertsData } = useQuery({
    queryKey: ['stock-alerts', connectionStatus],
    queryFn: async () => {
      const res = await fetch('/api/estoque/movimentacoes?low_stock=true');
      const data = await res.json();
      return data.data as LowStockData;
    },
    enabled: isOnline,
  });

  // Fetch all products - usando serviço offline
  const { data: productsData, isLoading: loadingProducts } = useQuery({
    queryKey: ['products-stock', connectionStatus],
    queryFn: () => fetchProducts({ limit: 500 }),
  });

  // Verificar se os dados são offline
  const isProductsOffline = productsData?._offline === true;
  const showOfflineBanner = isOffline || isProductsOffline;

  // Fetch recent movements (apenas online)
  const { data: movementsData } = useQuery({
    queryKey: ['stock-movements', connectionStatus],
    queryFn: async () => {
      const res = await fetch('/api/estoque/movimentacoes?limit=20');
      return res.json();
    },
    enabled: isOnline,
  });

  // Create movement mutation
  const movementMutation = useMutation({
    mutationFn: async (data: { product_id: string; quantity: number; type: string; reason?: string }) => {
      const res = await fetch('/api/estoque/movimentacoes', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ...data, user_id: userId }),
      });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao registrar movimentação');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['stock-alerts'] });
      queryClient.invalidateQueries({ queryKey: ['products-stock'] });
      queryClient.invalidateQueries({ queryKey: ['stock-movements'] });
      setShowMovementModal(null);
      setMovementQuantity('');
      setMovementReason('');
    },
  });

  const alerts = alertsData || { out_of_stock: [], low_stock: [], total_alerts: 0 };
  const products: Product[] = productsData?.data || [];
  const movements: StockMovement[] = movementsData?.data || [];

  // Filter products by search
  const filteredProducts = products.filter(p =>
    p.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
    p.sku.toLowerCase().includes(searchQuery.toLowerCase())
  );

  // Format helpers
  const formatDateTime = (dateStr: string) => {
    return new Date(dateStr).toLocaleString('pt-BR');
  };

  const getStockStatus = (product: Product) => {
    if (product.stock_quantity <= 0) {
      return { label: 'Sem estoque', color: 'text-red-600 bg-red-100 dark:text-red-400 dark:bg-red-900/30' };
    }
    if (product.stock_quantity <= product.min_stock_quantity) {
      return { label: 'Baixo', color: 'text-orange-600 bg-orange-100 dark:text-orange-400 dark:bg-orange-900/30' };
    }
    return { label: 'Normal', color: 'text-green-600 bg-green-100 dark:text-green-400 dark:bg-green-900/30' };
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 dark:from-gray-900 dark:to-gray-800 p-6">
      <div className="max-w-7xl mx-auto">
        {/* Offline Banner */}
        {showOfflineBanner && (
          <div className="bg-amber-500 text-white px-4 py-3 rounded-xl mb-4 flex items-center justify-center gap-2 text-sm font-medium">
            <WifiOff className="h-4 w-4" />
            <span>Modo Offline - Visualização de estoque disponível, movimentações requerem conexão</span>
          </div>
        )}

        {/* Header */}
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 mb-8">
          <div>
            <h1 className="text-3xl font-bold bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
              Gestão de Estoque
            </h1>
            <p className="text-gray-500 dark:text-gray-400 mt-1">Controle de produtos e movimentações</p>
          </div>

          <div className="relative w-full md:w-80">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Buscar produto..."
              className="w-full pl-10 pr-4 py-2 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-800 dark:text-white"
            />
          </div>
        </div>

        {/* Alerts Summary */}
        {alerts.total_alerts > 0 && (
          <div className="bg-gradient-to-r from-orange-500 to-red-500 rounded-2xl shadow-lg p-6 mb-8 text-white">
            <div className="flex items-center gap-3 mb-4">
              <AlertTriangle className="w-8 h-8" />
              <div>
                <h2 className="text-xl font-bold">Atenção! {alerts.total_alerts} produto(s) precisam de reposição</h2>
                <p className="text-white/80">
                  {alerts.out_of_stock.length} sem estoque, {alerts.low_stock.length} com estoque baixo
                </p>
              </div>
            </div>

            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              {[...alerts.out_of_stock, ...alerts.low_stock].slice(0, 4).map((product) => (
                <div key={product.id} className="bg-white/20 rounded-xl p-3">
                  <p className="font-medium truncate">{product.name}</p>
                  <p className="text-sm text-white/80">
                    Estoque: {product.stock_quantity} / Mín: {product.min_stock_quantity}
                  </p>
                </div>
              ))}
            </div>
          </div>
        )}

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Products List */}
          <div className="lg:col-span-2 bg-white dark:bg-gray-800 rounded-2xl shadow-lg overflow-hidden">
            <div className="p-6 border-b dark:border-gray-700">
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white flex items-center gap-2">
                <Package className="w-5 h-5 text-blue-600 dark:text-blue-400" />
                Produtos ({filteredProducts.length})
              </h3>
            </div>

            {loadingProducts ? (
              <div className="flex items-center justify-center h-64">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div>
              </div>
            ) : (
              <div className="divide-y dark:divide-gray-700 max-h-[600px] overflow-y-auto">
                {filteredProducts.map((product) => {
                  const status = getStockStatus(product);

                  return (
                    <div
                      key={product.id}
                      className="p-4 hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors"
                    >
                      <div className="flex items-center justify-between">
                        <div className="flex items-center gap-3 flex-1 min-w-0">
                          <div className={`w-10 h-10 rounded-lg flex items-center justify-center ${
                            product.stock_quantity <= 0
                              ? 'bg-red-100 dark:bg-red-900/30'
                              : product.stock_quantity <= product.min_stock_quantity
                              ? 'bg-orange-100 dark:bg-orange-900/30'
                              : 'bg-green-100 dark:bg-green-900/30'
                          }`}>
                            {product.stock_quantity <= 0 ? (
                              <PackageX className="w-5 h-5 text-red-600 dark:text-red-400" />
                            ) : (
                              <Package className="w-5 h-5 text-green-600 dark:text-green-400" />
                            )}
                          </div>
                          <div className="min-w-0">
                            <p className="font-medium text-gray-900 dark:text-white truncate">
                              {product.name}
                            </p>
                            <p className="text-sm text-gray-500 dark:text-gray-400">
                              SKU: {product.sku}
                            </p>
                          </div>
                        </div>

                        <div className="flex items-center gap-4">
                          <div className="text-right">
                            <p className="text-lg font-bold text-gray-900 dark:text-white">
                              {product.stock_quantity}
                            </p>
                            <p className="text-xs text-gray-500 dark:text-gray-400">
                              Mín: {product.min_stock_quantity}
                            </p>
                          </div>

                          <span className={`px-2 py-1 rounded-full text-xs font-medium ${status.color}`}>
                            {status.label}
                          </span>

                          <button
                            onClick={() => setShowMovementModal(product)}
                            disabled={isOffline}
                            className="p-2 bg-blue-100 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 rounded-lg hover:bg-blue-200 dark:hover:bg-blue-900/50 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                            title={isOffline ? "Requer conexão" : "Ajustar estoque"}
                          >
                            <RefreshCw className="w-4 h-4" />
                          </button>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            )}
          </div>

          {/* Recent Movements */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg overflow-hidden">
            <div className="p-6 border-b dark:border-gray-700">
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white flex items-center gap-2">
                <History className="w-5 h-5 text-purple-600 dark:text-purple-400" />
                Movimentações Recentes
              </h3>
            </div>

            <div className="divide-y dark:divide-gray-700 max-h-[600px] overflow-y-auto">
              {movements.length === 0 ? (
                <div className="p-8 text-center text-gray-500 dark:text-gray-400">
                  <History className="w-12 h-12 mx-auto mb-2 opacity-50" />
                  <p>Nenhuma movimentação registrada</p>
                </div>
              ) : (
                movements.map((movement) => {
                  const config = movementTypeConfig[movement.type] || movementTypeConfig.adjustment;
                  const isNegative = movement.quantity < 0;

                  return (
                    <div key={movement.id} className="p-4">
                      <div className="flex items-start gap-3">
                        <div className={`p-2 rounded-lg ${config.color}`}>
                          {config.icon}
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="font-medium text-gray-900 dark:text-white truncate">
                            {movement.product_name}
                          </p>
                          <p className="text-sm text-gray-500 dark:text-gray-400">
                            {config.label}
                            {movement.reason && ` - ${movement.reason}`}
                          </p>
                          <p className="text-xs text-gray-400 dark:text-gray-500 mt-1">
                            {formatDateTime(movement.created_at)}
                          </p>
                        </div>
                        <span className={`font-bold ${
                          isNegative
                            ? 'text-red-600 dark:text-red-400'
                            : 'text-green-600 dark:text-green-400'
                        }`}>
                          {isNegative ? '' : '+'}{movement.quantity}
                        </span>
                      </div>
                    </div>
                  );
                })
              )}
            </div>
          </div>
        </div>

        {/* Movement Modal */}
        {showMovementModal && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-md p-6">
              <div className="flex items-center gap-3 mb-6">
                <div className="p-3 bg-blue-100 dark:bg-blue-900/30 rounded-xl">
                  <RefreshCw className="w-6 h-6 text-blue-600 dark:text-blue-400" />
                </div>
                <div>
                  <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                    Ajustar Estoque
                  </h3>
                  <p className="text-sm text-gray-500 dark:text-gray-400">
                    {showMovementModal.name}
                  </p>
                </div>
              </div>

              {/* Current Stock Info */}
              <div className="bg-gray-50 dark:bg-gray-700/50 rounded-xl p-4 mb-4">
                <p className="text-sm text-gray-600 dark:text-gray-400">Estoque Atual</p>
                <p className="text-2xl font-bold text-gray-900 dark:text-white">
                  {showMovementModal.stock_quantity} unidades
                </p>
              </div>

              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Tipo de Movimentação
                  </label>
                  <div className="grid grid-cols-3 gap-2">
                    <button
                      onClick={() => setMovementType('purchase')}
                      className={`p-3 rounded-xl border transition-all flex flex-col items-center gap-1 ${
                        movementType === 'purchase'
                          ? 'border-green-500 bg-green-50 dark:bg-green-900/30 text-green-700 dark:text-green-400'
                          : 'border-gray-200 dark:border-gray-600'
                      }`}
                    >
                      <Plus className="w-5 h-5" />
                      <span className="text-xs font-medium">Entrada</span>
                    </button>
                    <button
                      onClick={() => setMovementType('adjustment')}
                      className={`p-3 rounded-xl border transition-all flex flex-col items-center gap-1 ${
                        movementType === 'adjustment'
                          ? 'border-purple-500 bg-purple-50 dark:bg-purple-900/30 text-purple-700 dark:text-purple-400'
                          : 'border-gray-200 dark:border-gray-600'
                      }`}
                    >
                      <RefreshCw className="w-5 h-5" />
                      <span className="text-xs font-medium">Ajuste</span>
                    </button>
                    <button
                      onClick={() => setMovementType('loss')}
                      className={`p-3 rounded-xl border transition-all flex flex-col items-center gap-1 ${
                        movementType === 'loss'
                          ? 'border-red-500 bg-red-50 dark:bg-red-900/30 text-red-700 dark:text-red-400'
                          : 'border-gray-200 dark:border-gray-600'
                      }`}
                    >
                      <Minus className="w-5 h-5" />
                      <span className="text-xs font-medium">Perda</span>
                    </button>
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Quantidade *
                  </label>
                  <input
                    type="number"
                    value={movementQuantity}
                    onChange={(e) => setMovementQuantity(e.target.value)}
                    placeholder={movementType === 'adjustment' ? 'Pode ser positivo ou negativo' : 'Quantidade'}
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl text-lg font-medium focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                    autoFocus
                  />
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Motivo / Observação
                  </label>
                  <input
                    type="text"
                    value={movementReason}
                    onChange={(e) => setMovementReason(e.target.value)}
                    placeholder="Ex: Compra de fornecedor, Inventário, etc."
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                  />
                </div>
              </div>

              {movementMutation.error && (
                <div className="mt-4 p-3 bg-red-50 dark:bg-red-900/30 text-red-600 dark:text-red-400 rounded-lg text-sm flex items-center gap-2">
                  <XCircle className="w-4 h-4" />
                  {(movementMutation.error as Error).message}
                </div>
              )}

              <div className="flex gap-3 mt-6">
                <button
                  onClick={() => {
                    setShowMovementModal(null);
                    setMovementQuantity('');
                    setMovementReason('');
                  }}
                  className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={() => {
                    const qty = parseInt(movementQuantity);
                    if (isNaN(qty) || qty === 0) return;

                    movementMutation.mutate({
                      product_id: showMovementModal.id,
                      quantity: movementType === 'loss' ? -Math.abs(qty) : qty,
                      type: movementType,
                      reason: movementReason || undefined,
                    });
                  }}
                  disabled={movementMutation.isPending || !movementQuantity}
                  className="flex-1 px-4 py-3 bg-blue-600 text-white rounded-xl hover:bg-blue-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
                >
                  {movementMutation.isPending ? (
                    <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  ) : (
                    <>
                      <CheckCircle className="w-5 h-5" />
                      Confirmar
                    </>
                  )}
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
