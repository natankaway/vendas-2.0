/**
 * Componente de Alertas de Estoque
 *
 * Mostra notificação quando há produtos com estoque baixo.
 */

'use client';

import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import Link from 'next/link';
import {
  AlertTriangle,
  Package,
  X,
  Bell,
  ChevronRight,
  PackageX,
} from 'lucide-react';

interface LowStockProduct {
  id: string;
  name: string;
  sku: string;
  stock_quantity: number;
  min_stock_quantity: number;
}

interface StockAlertsData {
  out_of_stock: LowStockProduct[];
  low_stock: LowStockProduct[];
  total_alerts: number;
}

export function StockAlertsButton() {
  const [showDropdown, setShowDropdown] = useState(false);

  const { data: alertsData } = useQuery({
    queryKey: ['stock-alerts'],
    queryFn: async () => {
      const res = await fetch('/api/estoque/movimentacoes?low_stock=true');
      const data = await res.json();
      return data.data as StockAlertsData;
    },
    refetchInterval: 60000, // Refresh every minute
  });

  const totalAlerts = alertsData?.total_alerts || 0;
  const outOfStock = alertsData?.out_of_stock || [];
  const lowStock = alertsData?.low_stock || [];

  if (totalAlerts === 0) {
    return null;
  }

  return (
    <div className="relative">
      <button
        onClick={() => setShowDropdown(!showDropdown)}
        className="relative p-2 rounded-full hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors"
        title="Alertas de estoque"
      >
        <Bell className="w-5 h-5 text-gray-600 dark:text-gray-300" />
        <span className="absolute -top-1 -right-1 w-5 h-5 bg-red-500 text-white text-xs font-bold rounded-full flex items-center justify-center">
          {totalAlerts > 9 ? '9+' : totalAlerts}
        </span>
      </button>

      {showDropdown && (
        <>
          <div
            className="fixed inset-0 z-40"
            onClick={() => setShowDropdown(false)}
          />
          <div className="absolute right-0 mt-2 w-80 bg-white dark:bg-gray-800 border dark:border-gray-700 rounded-xl shadow-lg z-50 overflow-hidden">
            <div className="p-4 bg-gradient-to-r from-orange-500 to-red-500 text-white">
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-2">
                  <AlertTriangle className="w-5 h-5" />
                  <span className="font-semibold">Alertas de Estoque</span>
                </div>
                <button
                  onClick={() => setShowDropdown(false)}
                  className="p-1 hover:bg-white/20 rounded-full transition-colors"
                >
                  <X className="w-4 h-4" />
                </button>
              </div>
              <p className="text-sm text-white/80 mt-1">
                {totalAlerts} produto(s) precisam de atenção
              </p>
            </div>

            <div className="max-h-80 overflow-y-auto">
              {/* Out of Stock */}
              {outOfStock.length > 0 && (
                <div className="p-3">
                  <p className="text-xs font-semibold text-red-600 dark:text-red-400 uppercase tracking-wider mb-2 flex items-center gap-1">
                    <PackageX className="w-3 h-3" />
                    Sem Estoque ({outOfStock.length})
                  </p>
                  <div className="space-y-2">
                    {outOfStock.slice(0, 5).map((product) => (
                      <div
                        key={product.id}
                        className="flex items-center gap-2 p-2 bg-red-50 dark:bg-red-900/20 rounded-lg"
                      >
                        <div className="w-8 h-8 bg-red-100 dark:bg-red-900/30 rounded-lg flex items-center justify-center">
                          <Package className="w-4 h-4 text-red-600 dark:text-red-400" />
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-medium text-gray-900 dark:text-white truncate">
                            {product.name}
                          </p>
                          <p className="text-xs text-gray-500 dark:text-gray-400">
                            SKU: {product.sku}
                          </p>
                        </div>
                        <span className="text-xs font-bold text-red-600 dark:text-red-400">
                          0
                        </span>
                      </div>
                    ))}
                  </div>
                </div>
              )}

              {/* Low Stock */}
              {lowStock.length > 0 && (
                <div className="p-3 border-t dark:border-gray-700">
                  <p className="text-xs font-semibold text-orange-600 dark:text-orange-400 uppercase tracking-wider mb-2 flex items-center gap-1">
                    <AlertTriangle className="w-3 h-3" />
                    Estoque Baixo ({lowStock.length})
                  </p>
                  <div className="space-y-2">
                    {lowStock.slice(0, 5).map((product) => (
                      <div
                        key={product.id}
                        className="flex items-center gap-2 p-2 bg-orange-50 dark:bg-orange-900/20 rounded-lg"
                      >
                        <div className="w-8 h-8 bg-orange-100 dark:bg-orange-900/30 rounded-lg flex items-center justify-center">
                          <Package className="w-4 h-4 text-orange-600 dark:text-orange-400" />
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-medium text-gray-900 dark:text-white truncate">
                            {product.name}
                          </p>
                          <p className="text-xs text-gray-500 dark:text-gray-400">
                            Mín: {product.min_stock_quantity}
                          </p>
                        </div>
                        <span className="text-xs font-bold text-orange-600 dark:text-orange-400">
                          {product.stock_quantity}
                        </span>
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </div>

            <div className="p-3 border-t dark:border-gray-700">
              <Link
                href="/estoque"
                onClick={() => setShowDropdown(false)}
                className="flex items-center justify-center gap-2 w-full p-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors text-sm font-medium"
              >
                Ver Estoque Completo
                <ChevronRight className="w-4 h-4" />
              </Link>
            </div>
          </div>
        </>
      )}
    </div>
  );
}
