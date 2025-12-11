/**
 * Página de Histórico de Vendas
 *
 * Lista todas as vendas com filtros e opção de reimprimir recibo.
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
  Calendar,
  DollarSign,
  ShoppingCart,
  User,
  Filter,
  Download,
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

const formatDate = (dateStr: string) => {
  return new Date(dateStr).toLocaleDateString('pt-BR', {
    day: '2-digit',
    month: '2-digit',
    year: 'numeric',
  });
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
    credit_card: 'Cartão de Crédito',
    debit_card: 'Cartão de Débito',
    pix: 'PIX',
  };
  return methods[method] || method;
};

const getStatusLabel = (status: string) => {
  const statuses: Record<string, { label: string; color: string }> = {
    pending: { label: 'Pendente', color: 'bg-yellow-100 text-yellow-800' },
    completed: { label: 'Concluída', color: 'bg-green-100 text-green-800' },
    cancelled: { label: 'Cancelada', color: 'bg-red-100 text-red-800' },
  };
  return statuses[status] || { label: status, color: 'bg-gray-100 text-gray-800' };
};

export default function VendasPage() {
  // State
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

  // Fetch sales
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
  });

  const sales: Sale[] = salesData?.data || [];
  const totalSales = salesData?.total || 0;
  const totalPages = Math.ceil(totalSales / perPage);

  // Stats
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

  // Handlers
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
                body {
                  font-family: 'Courier New', monospace;
                  font-size: 12px;
                  max-width: 300px;
                  margin: 0 auto;
                  padding: 20px;
                }
                .header { text-align: center; margin-bottom: 20px; }
                .divider { border-top: 1px dashed #000; margin: 10px 0; }
                .item { display: flex; justify-content: space-between; margin: 5px 0; }
                .total { font-weight: bold; font-size: 14px; }
                .footer { text-align: center; margin-top: 20px; font-size: 10px; }
              </style>
            </head>
            <body>
              ${printContent.innerHTML}
            </body>
          </html>
        `);
        printWindow.document.close();
        printWindow.print();
      }
    }
  };

  const clearFilters = () => {
    setFilters({
      startDate: '',
      endDate: '',
      status: '',
      paymentMethod: '',
    });
    setPage(1);
  };

  const hasActiveFilters = filters.startDate || filters.endDate || filters.status || filters.paymentMethod;

  return (
    <div className="p-6 max-w-7xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Vendas</h1>
          <p className="text-gray-600">Histórico completo de vendas</p>
        </div>
      </div>

      {/* Stats Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-blue-100 rounded-lg">
              <Receipt className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-gray-600">Total de Vendas</p>
              <p className="text-xl font-bold">{stats.count}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-green-100 rounded-lg">
              <DollarSign className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-sm text-gray-600">Valor Total</p>
              <p className="text-xl font-bold text-green-600">{formatCurrency(stats.totalValue)}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-purple-100 rounded-lg">
              <ShoppingCart className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-gray-600">Concluídas</p>
              <p className="text-xl font-bold">{stats.completed}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-orange-100 rounded-lg">
              <ShoppingCart className="w-6 h-6 text-orange-600" />
            </div>
            <div>
              <p className="text-sm text-gray-600">Itens Vendidos</p>
              <p className="text-xl font-bold">{stats.totalItems}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Search and Filters */}
      <div className="bg-white rounded-lg shadow p-4 mb-6">
        <div className="flex flex-col md:flex-row gap-4">
          <div className="flex-1 flex gap-2">
            <select
              value={searchType}
              onChange={(e) => setSearchType(e.target.value as 'receipt' | 'customer')}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent bg-white"
            >
              <option value="receipt">Nº Recibo</option>
              <option value="customer">Cliente</option>
            </select>
            <div className="flex-1 relative">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
              <input
                type="text"
                placeholder={searchType === 'receipt' ? 'Buscar por número do recibo...' : 'Buscar por nome do cliente...'}
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                className="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>
          </div>
          <button
            onClick={() => setShowFilters(!showFilters)}
            className={`flex items-center gap-2 px-4 py-2 rounded-lg border transition-colors ${
              hasActiveFilters
                ? 'bg-blue-50 border-blue-300 text-blue-700'
                : 'border-gray-300 text-gray-700 hover:bg-gray-50'
            }`}
          >
            <Filter className="w-5 h-5" />
            Filtros
            {hasActiveFilters && (
              <span className="bg-blue-600 text-white text-xs px-2 py-0.5 rounded-full">
                {[filters.startDate, filters.endDate, filters.status, filters.paymentMethod].filter(Boolean).length}
              </span>
            )}
          </button>
        </div>

        {/* Filters Panel */}
        {showFilters && (
          <div className="mt-4 pt-4 border-t grid grid-cols-1 md:grid-cols-4 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Data Início</label>
              <input
                type="date"
                value={filters.startDate}
                onChange={(e) => setFilters({ ...filters, startDate: e.target.value })}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Data Fim</label>
              <input
                type="date"
                value={filters.endDate}
                onChange={(e) => setFilters({ ...filters, endDate: e.target.value })}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Status</label>
              <select
                value={filters.status}
                onChange={(e) => setFilters({ ...filters, status: e.target.value })}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="completed">Concluída</option>
                <option value="pending">Pendente</option>
                <option value="cancelled">Cancelada</option>
              </select>
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Pagamento</label>
              <select
                value={filters.paymentMethod}
                onChange={(e) => setFilters({ ...filters, paymentMethod: e.target.value })}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="cash">Dinheiro</option>
                <option value="credit_card">Cartão de Crédito</option>
                <option value="debit_card">Cartão de Débito</option>
                <option value="pix">PIX</option>
              </select>
            </div>
            {hasActiveFilters && (
              <div className="md:col-span-4">
                <button
                  onClick={clearFilters}
                  className="text-sm text-blue-600 hover:text-blue-800"
                >
                  Limpar filtros
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Sales Table */}
      <div className="bg-white rounded-lg shadow overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Recibo</th>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Data/Hora</th>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Cliente</th>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Pagamento</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Itens</th>
                <th className="px-4 py-3 text-right text-sm font-medium text-gray-600">Total</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Status</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200">
              {isLoading ? (
                <tr>
                  <td colSpan={8} className="px-4 py-8 text-center text-gray-500">
                    Carregando vendas...
                  </td>
                </tr>
              ) : sales.length === 0 ? (
                <tr>
                  <td colSpan={8} className="px-4 py-8 text-center text-gray-500">
                    Nenhuma venda encontrada
                  </td>
                </tr>
              ) : (
                sales.map((sale) => {
                  const statusInfo = getStatusLabel(sale.status);
                  return (
                    <tr key={sale.id} className="hover:bg-gray-50">
                      <td className="px-4 py-3">
                        <p className="font-mono font-medium text-gray-900">{sale.receipt_number}</p>
                      </td>
                      <td className="px-4 py-3 text-sm text-gray-600">
                        {formatDateTime(sale.created_at)}
                      </td>
                      <td className="px-4 py-3">
                        {sale.customer_name ? (
                          <div className="flex items-center gap-2">
                            <User className="w-4 h-4 text-gray-400" />
                            <span className="text-gray-900">{sale.customer_name}</span>
                          </div>
                        ) : (
                          <span className="text-gray-400">-</span>
                        )}
                      </td>
                      <td className="px-4 py-3 text-sm text-gray-600">
                        {getPaymentMethodLabel(sale.payment_method)}
                      </td>
                      <td className="px-4 py-3 text-center text-sm text-gray-600">
                        {sale.items?.length || 0}
                      </td>
                      <td className="px-4 py-3 text-right font-medium text-green-600">
                        {formatCurrency(sale.total)}
                      </td>
                      <td className="px-4 py-3 text-center">
                        <span className={`px-2 py-1 rounded-full text-xs font-medium ${statusInfo.color}`}>
                          {statusInfo.label}
                        </span>
                      </td>
                      <td className="px-4 py-3">
                        <div className="flex items-center justify-center gap-2">
                          <button
                            onClick={() => openReceipt(sale)}
                            className="p-1 text-blue-600 hover:bg-blue-50 rounded"
                            title="Ver Recibo"
                          >
                            <Eye className="w-5 h-5" />
                          </button>
                          <button
                            onClick={() => openReceipt(sale)}
                            className="p-1 text-green-600 hover:bg-green-50 rounded"
                            title="Imprimir Recibo"
                          >
                            <Printer className="w-5 h-5" />
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

        {/* Pagination */}
        {totalPages > 1 && (
          <div className="flex items-center justify-between px-4 py-3 border-t">
            <p className="text-sm text-gray-600">
              Mostrando {((page - 1) * perPage) + 1} a {Math.min(page * perPage, totalSales)} de {totalSales} vendas
            </p>
            <div className="flex items-center gap-2">
              <button
                onClick={() => setPage(p => Math.max(1, p - 1))}
                disabled={page === 1}
                className="p-2 text-gray-600 hover:bg-gray-100 rounded disabled:opacity-50 disabled:cursor-not-allowed"
              >
                <ChevronLeft className="w-5 h-5" />
              </button>
              <span className="text-sm text-gray-600">
                Página {page} de {totalPages}
              </span>
              <button
                onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                disabled={page === totalPages}
                className="p-2 text-gray-600 hover:bg-gray-100 rounded disabled:opacity-50 disabled:cursor-not-allowed"
              >
                <ChevronRight className="w-5 h-5" />
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Receipt Modal */}
      {showReceiptModal && selectedSale && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-lg shadow-xl w-full max-w-md max-h-[90vh] overflow-y-auto">
            <div className="flex items-center justify-between p-4 border-b sticky top-0 bg-white">
              <h2 className="text-lg font-semibold">Recibo da Venda</h2>
              <button onClick={closeReceipt} className="p-1 hover:bg-gray-100 rounded">
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Receipt Content */}
            <div id="receipt-content" className="p-6 font-mono text-sm">
              <div className="text-center mb-4">
                <h3 className="font-bold text-lg">VENDAS PDV</h3>
                <p className="text-xs text-gray-500">CUPOM NÃO FISCAL</p>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-1 text-xs">
                <p><strong>Recibo:</strong> {selectedSale.receipt_number}</p>
                <p><strong>Data:</strong> {formatDateTime(selectedSale.created_at)}</p>
                {selectedSale.customer_name && (
                  <p><strong>Cliente:</strong> {selectedSale.customer_name}</p>
                )}
                <p><strong>Pagamento:</strong> {getPaymentMethodLabel(selectedSale.payment_method)}</p>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-2">
                <p className="font-bold text-xs">ITENS:</p>
                {selectedSale.items?.map((item, index) => (
                  <div key={item.id || index} className="flex justify-between text-xs">
                    <span className="flex-1">
                      {item.quantity}x {item.product_name}
                    </span>
                    <span className="text-right ml-2">
                      {formatCurrency(item.total)}
                    </span>
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

              <div className="text-center text-xs text-gray-500">
                <p>Obrigado pela preferência!</p>
                <p className="mt-2">
                  {getStatusLabel(selectedSale.status).label}
                </p>
              </div>
            </div>

            {/* Actions */}
            <div className="flex gap-3 p-4 border-t bg-gray-50">
              <button
                onClick={handlePrint}
                className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
              >
                <Printer className="w-5 h-5" />
                Imprimir
              </button>
              <button
                onClick={closeReceipt}
                className="flex-1 px-4 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition-colors"
              >
                Fechar
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
