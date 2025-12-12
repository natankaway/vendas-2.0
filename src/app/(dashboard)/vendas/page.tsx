/**
 * Página de Histórico de Vendas
 *
 * Lista todas as vendas com filtros e opção de reimprimir recibo.
 * Layout responsivo: cards em mobile, tabela em desktop.
 */

'use client';

import { useState, useMemo } from 'react';
import { useQuery } from '@tanstack/react-query';
import {
  Search,
  Receipt,
  Printer,
  Eye,
  X,
  ChevronLeft,
  ChevronRight,
  DollarSign,
  ShoppingCart,
  User,
  Filter,
  Package,
} from 'lucide-react';

// Tipos
interface SaleItem {
  id: string;
  product_id: string;
  product_name: string;
  quantity: number;
  unit_price: number;
  discount_amount: number;
  total: number;
}

interface Sale {
  id: string;
  receipt_number: string;
  customer_id: string | null;
  customer_name: string | null;
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
}

// Utilitários
const formatCurrency = (cents: number) => {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
  }).format(cents / 100);
};

const formatDateTime = (dateStr: string) => {
  return new Date(dateStr).toLocaleString('pt-BR', {
    day: '2-digit',
    month: '2-digit',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  });
};

const getPaymentMethodLabel = (method: string) => {
  const methods: Record<string, string> = {
    cash: 'Dinheiro',
    credit_card: 'Crédito',
    debit_card: 'Débito',
    pix: 'PIX',
  };
  return methods[method] || method;
};

const getStatusLabel = (status: string) => {
  const statuses: Record<string, { label: string; color: string }> = {
    pending: { label: 'Pendente', color: 'bg-yellow-100 text-yellow-700' },
    completed: { label: 'Concluída', color: 'bg-green-100 text-green-700' },
    cancelled: { label: 'Cancelada', color: 'bg-red-100 text-red-700' },
  };
  return statuses[status] || { label: status, color: 'bg-gray-100 text-gray-700' };
};

export default function VendasPage() {
  const [search, setSearch] = useState('');
  const [searchType, setSearchType] = useState<'receipt' | 'customer'>('receipt');
  const [page, setPage] = useState(1);
  const [selectedSale, setSelectedSale] = useState<Sale | null>(null);
  const [showReceiptModal, setShowReceiptModal] = useState(false);
  const [showFilters, setShowFilters] = useState(false);
  const [filters, setFilters] = useState({
    startDate: '',
    endDate: '',
    status: '',
    paymentMethod: '',
  });

  const perPage = 20;

  const { data: salesData, isLoading } = useQuery({
    queryKey: ['sales', search, searchType, page, filters],
    queryFn: async () => {
      const params = new URLSearchParams({
        page: String(page),
        limit: String(perPage),
      });
      if (search) {
        params.append('search', search);
        params.append('searchType', searchType);
      }
      if (filters.startDate) params.append('startDate', filters.startDate);
      if (filters.endDate) params.append('endDate', filters.endDate);
      if (filters.status) params.append('status', filters.status);
      if (filters.paymentMethod) params.append('paymentMethod', filters.paymentMethod);

      const res = await fetch(`/api/vendas?${params}`);
      return res.json();
    },
    staleTime: 0,
    refetchOnWindowFocus: true,
  });

  const sales: Sale[] = salesData?.data || [];
  const totalSales = salesData?.total || 0;
  const totalPages = Math.ceil(totalSales / perPage);

  const stats = useMemo(() => {
    const completed = sales.filter(s => s.status === 'completed');
    const totalValue = completed.reduce((sum, s) => sum + s.total, 0);
    const totalItems = completed.reduce((sum, s) => sum + (s.items?.length || 0), 0);

    return {
      count: sales.length,
      completed: completed.length,
      totalValue,
      totalItems,
    };
  }, [sales]);

  const openReceipt = (sale: Sale) => {
    setSelectedSale(sale);
    setShowReceiptModal(true);
  };

  const closeReceipt = () => {
    setShowReceiptModal(false);
    setSelectedSale(null);
  };

  const handlePrint = () => {
    const printContent = document.getElementById('receipt-content');
    if (printContent) {
      const printWindow = window.open('', '_blank');
      if (printWindow) {
        printWindow.document.write(`
          <html>
            <head>
              <title>Recibo - ${selectedSale?.receipt_number}</title>
              <style>
                body { font-family: 'Courier New', monospace; font-size: 12px; max-width: 300px; margin: 0 auto; padding: 20px; }
                .header { text-align: center; margin-bottom: 20px; }
                .divider { border-top: 1px dashed #000; margin: 10px 0; }
                .item { display: flex; justify-content: space-between; margin: 5px 0; }
                .total { font-weight: bold; font-size: 14px; }
                .footer { text-align: center; margin-top: 20px; font-size: 10px; }
              </style>
            </head>
            <body>${printContent.innerHTML}</body>
          </html>
        `);
        printWindow.document.close();
        printWindow.print();
      }
    }
  };

  const clearFilters = () => {
    setFilters({ startDate: '', endDate: '', status: '', paymentMethod: '' });
    setPage(1);
  };

  const hasActiveFilters = filters.startDate || filters.endDate || filters.status || filters.paymentMethod;

  return (
    <div className="max-w-7xl mx-auto">
      {/* Header */}
      <div className="mb-4 sm:mb-6">
        <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Vendas</h1>
        <p className="text-sm text-gray-500">Histórico completo de vendas</p>
      </div>

      {/* Stats Cards - Scrollable em mobile */}
      <div className="flex gap-3 overflow-x-auto pb-2 mb-4 sm:mb-6 -mx-4 px-4 sm:mx-0 sm:px-0 sm:grid sm:grid-cols-4">
        <div className="flex-shrink-0 w-36 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-blue-50 rounded-lg">
              <Receipt className="w-5 h-5 text-blue-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Total</p>
              <p className="text-lg font-bold">{stats.count}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-40 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-green-50 rounded-lg">
              <DollarSign className="w-5 h-5 text-green-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Valor Total</p>
              <p className="text-lg font-bold text-green-600">{formatCurrency(stats.totalValue)}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-36 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-purple-50 rounded-lg">
              <ShoppingCart className="w-5 h-5 text-purple-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Concluídas</p>
              <p className="text-lg font-bold">{stats.completed}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-36 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-orange-50 rounded-lg">
              <Package className="w-5 h-5 text-orange-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Itens</p>
              <p className="text-lg font-bold">{stats.totalItems}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Search and Filters */}
      <div className="bg-white rounded-xl shadow-sm p-3 sm:p-4 mb-4 sm:mb-6 border border-gray-100">
        <div className="flex flex-col sm:flex-row gap-2 sm:gap-4">
          <div className="flex gap-2 flex-1">
            <select
              value={searchType}
              onChange={(e) => setSearchType(e.target.value as 'receipt' | 'customer')}
              className="px-2 sm:px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent bg-white"
            >
              <option value="receipt">Nº Recibo</option>
              <option value="customer">Cliente</option>
            </select>
            <div className="flex-1 relative">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
              <input
                type="text"
                placeholder={searchType === 'receipt' ? 'Buscar por número do recibo...' : 'Buscar por nome do cliente...'}
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>
          </div>
          <button
            onClick={() => setShowFilters(!showFilters)}
            className={`flex items-center justify-center gap-2 px-4 py-2 rounded-lg border transition-colors text-sm ${
              hasActiveFilters
                ? 'bg-blue-50 border-blue-200 text-blue-700'
                : 'border-gray-200 text-gray-600 hover:bg-gray-50'
            }`}
          >
            <Filter className="w-4 h-4" />
            <span className="hidden sm:inline">Filtros</span>
            {hasActiveFilters && (
              <span className="bg-blue-600 text-white text-xs px-1.5 py-0.5 rounded-full">
                {[filters.startDate, filters.endDate, filters.status, filters.paymentMethod].filter(Boolean).length}
              </span>
            )}
          </button>
        </div>

        {/* Filters Panel */}
        {showFilters && (
          <div className="mt-4 pt-4 border-t grid grid-cols-2 sm:grid-cols-4 gap-3">
            <div>
              <label className="block text-xs font-medium text-gray-600 mb-1">Data Início</label>
              <input
                type="date"
                value={filters.startDate}
                onChange={(e) => setFilters({ ...filters, startDate: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-xs font-medium text-gray-600 mb-1">Data Fim</label>
              <input
                type="date"
                value={filters.endDate}
                onChange={(e) => setFilters({ ...filters, endDate: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-xs font-medium text-gray-600 mb-1">Status</label>
              <select
                value={filters.status}
                onChange={(e) => setFilters({ ...filters, status: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="completed">Concluída</option>
                <option value="pending">Pendente</option>
                <option value="cancelled">Cancelada</option>
              </select>
            </div>
            <div>
              <label className="block text-xs font-medium text-gray-600 mb-1">Pagamento</label>
              <select
                value={filters.paymentMethod}
                onChange={(e) => setFilters({ ...filters, paymentMethod: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="cash">Dinheiro</option>
                <option value="credit_card">Crédito</option>
                <option value="debit_card">Débito</option>
                <option value="pix">PIX</option>
              </select>
            </div>
            {hasActiveFilters && (
              <div className="col-span-2 sm:col-span-4">
                <button onClick={clearFilters} className="text-sm text-blue-600 hover:text-blue-800">
                  Limpar filtros
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Sales List - Cards em mobile, Table em desktop */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
        {/* Desktop Table - Hidden em mobile */}
        <div className="hidden md:block overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Recibo</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Data/Hora</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Cliente</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Pagamento</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Itens</th>
                <th className="px-4 py-3 text-right text-xs font-medium text-gray-500 uppercase">Total</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Status</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-100">
              {isLoading ? (
                <tr>
                  <td colSpan={8} className="px-4 py-12 text-center">
                    <div className="flex items-center justify-center">
                      <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600"></div>
                    </div>
                  </td>
                </tr>
              ) : sales.length === 0 ? (
                <tr>
                  <td colSpan={8} className="px-4 py-12 text-center text-gray-400">
                    <Receipt className="w-10 h-10 mx-auto mb-2 opacity-50" />
                    <p>Nenhuma venda encontrada</p>
                  </td>
                </tr>
              ) : (
                sales.map((sale) => {
                  const statusInfo = getStatusLabel(sale.status);
                  return (
                    <tr key={sale.id} className="hover:bg-gray-50">
                      <td className="px-4 py-3">
                        <p className="font-mono text-sm font-medium">{sale.receipt_number}</p>
                      </td>
                      <td className="px-4 py-3 text-sm text-gray-600">{formatDateTime(sale.created_at)}</td>
                      <td className="px-4 py-3">
                        <div className="flex items-center gap-2">
                          <User className="w-4 h-4 text-gray-400" />
                          <span className={sale.customer_name ? "text-gray-900 text-sm" : "text-gray-400 text-sm italic"}>
                            {sale.customer_name || 'Balcão'}
                          </span>
                        </div>
                      </td>
                      <td className="px-4 py-3 text-sm text-gray-600">{getPaymentMethodLabel(sale.payment_method)}</td>
                      <td className="px-4 py-3 text-center text-sm text-gray-600">{sale.items?.length || 0}</td>
                      <td className="px-4 py-3 text-right font-medium text-green-600">{formatCurrency(sale.total)}</td>
                      <td className="px-4 py-3 text-center">
                        <span className={`inline-flex px-2 py-1 rounded-full text-xs font-medium ${statusInfo.color}`}>
                          {statusInfo.label}
                        </span>
                      </td>
                      <td className="px-4 py-3">
                        <div className="flex items-center justify-center gap-1">
                          <button onClick={() => openReceipt(sale)} className="p-2 text-gray-500 hover:text-blue-600 hover:bg-blue-50 rounded-lg transition-colors" title="Ver">
                            <Eye className="w-4 h-4" />
                          </button>
                          <button onClick={() => openReceipt(sale)} className="p-2 text-gray-500 hover:text-green-600 hover:bg-green-50 rounded-lg transition-colors" title="Imprimir">
                            <Printer className="w-4 h-4" />
                          </button>
                        </div>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>

        {/* Mobile Cards - Hidden em desktop */}
        <div className="md:hidden divide-y divide-gray-100">
          {isLoading ? (
            <div className="p-8 text-center">
              <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div>
            </div>
          ) : sales.length === 0 ? (
            <div className="p-8 text-center text-gray-400">
              <Receipt className="w-10 h-10 mx-auto mb-2 opacity-50" />
              <p>Nenhuma venda encontrada</p>
            </div>
          ) : (
            sales.map((sale) => {
              const statusInfo = getStatusLabel(sale.status);
              return (
                <div key={sale.id} className="p-4 hover:bg-gray-50 active:bg-gray-100" onClick={() => openReceipt(sale)}>
                  <div className="flex items-start justify-between mb-2">
                    <div>
                      <p className="font-mono text-sm font-bold text-gray-900">{sale.receipt_number}</p>
                      <p className="text-xs text-gray-500">{formatDateTime(sale.created_at)}</p>
                    </div>
                    <span className={`px-2 py-0.5 rounded-full text-xs font-medium ${statusInfo.color}`}>
                      {statusInfo.label}
                    </span>
                  </div>
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-2">
                      <User className="w-4 h-4 text-gray-400" />
                      <span className={`text-sm ${sale.customer_name ? 'text-gray-700' : 'text-gray-400 italic'}`}>
                        {sale.customer_name || 'Balcão'}
                      </span>
                    </div>
                    <p className="text-lg font-bold text-green-600">{formatCurrency(sale.total)}</p>
                  </div>
                  <div className="flex items-center justify-between mt-2 text-xs text-gray-500">
                    <span>{getPaymentMethodLabel(sale.payment_method)}</span>
                    <span>{sale.items?.length || 0} {(sale.items?.length || 0) === 1 ? 'item' : 'itens'}</span>
                  </div>
                </div>
              );
            })
          )}
        </div>

        {/* Pagination */}
        {totalPages > 1 && (
          <div className="flex items-center justify-between px-4 py-3 border-t bg-gray-50">
            <p className="text-xs sm:text-sm text-gray-500">
              <span className="hidden sm:inline">Mostrando </span>
              {((page - 1) * perPage) + 1}-{Math.min(page * perPage, totalSales)} de {totalSales}
            </p>
            <div className="flex items-center gap-1">
              <button
                onClick={() => setPage(p => Math.max(1, p - 1))}
                disabled={page === 1}
                className="p-2 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"
              >
                <ChevronLeft className="w-4 h-4" />
              </button>
              <span className="text-sm text-gray-600 px-2">{page}/{totalPages}</span>
              <button
                onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                disabled={page === totalPages}
                className="p-2 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"
              >
                <ChevronRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Receipt Modal */}
      {showReceiptModal && selectedSale && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center z-50">
          <div className="bg-white w-full sm:w-auto sm:max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="text-lg font-semibold">Recibo</h2>
              <button onClick={closeReceipt} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div id="receipt-content" className="flex-1 overflow-y-auto p-4 sm:p-6 font-mono text-sm">
              <div className="text-center mb-4">
                <h3 className="font-bold text-lg">VENDAS PDV</h3>
                <p className="text-xs text-gray-400">CUPOM NÃO FISCAL</p>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-1 text-xs">
                <p><strong>Recibo:</strong> {selectedSale.receipt_number}</p>
                <p><strong>Data:</strong> {formatDateTime(selectedSale.created_at)}</p>
                <p><strong>Cliente:</strong> {selectedSale.customer_name || 'Balcão'}</p>
                <p><strong>Pagamento:</strong> {getPaymentMethodLabel(selectedSale.payment_method)}</p>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-2">
                <p className="font-bold text-xs">ITENS:</p>
                {selectedSale.items?.map((item, index) => (
                  <div key={item.id || index} className="flex justify-between text-xs">
                    <span className="flex-1 truncate">{item.quantity}x {item.product_name}</span>
                    <span className="text-right ml-2">{formatCurrency(item.total)}</span>
                  </div>
                ))}
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-1">
                <div className="flex justify-between text-xs">
                  <span>Subtotal:</span>
                  <span>{formatCurrency(selectedSale.subtotal)}</span>
                </div>
                {selectedSale.discount_amount > 0 && (
                  <div className="flex justify-between text-xs text-green-600">
                    <span>Desconto:</span>
                    <span>-{formatCurrency(selectedSale.discount_amount)}</span>
                  </div>
                )}
                <div className="flex justify-between font-bold text-base pt-2 border-t">
                  <span>TOTAL:</span>
                  <span>{formatCurrency(selectedSale.total)}</span>
                </div>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="text-center text-xs text-gray-400">
                <p>Obrigado pela preferência!</p>
              </div>
            </div>

            <div className="flex gap-3 p-4 border-t bg-gray-50">
              <button onClick={handlePrint} className="flex-1 flex items-center justify-center gap-2 py-3 bg-blue-600 text-white rounded-xl font-medium hover:bg-blue-700 active:bg-blue-800 transition-colors">
                <Printer className="w-5 h-5" />
                Imprimir
              </button>
              <button onClick={closeReceipt} className="flex-1 py-3 bg-gray-200 text-gray-700 rounded-xl font-medium hover:bg-gray-300 active:bg-gray-400 transition-colors">
                Fechar
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
