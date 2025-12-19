/**
 * Página de Histórico de Vendas
 *
 * Lista todas as vendas com filtros e opção de reimprimir recibo.
 * Inclui funcionalidade de receber pagamento para vendas pendentes.
 * Layout responsivo: cards em mobile, tabela em desktop.
 */

'use client';

import { useState, useMemo, useEffect } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
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
  CreditCard,
  Banknote,
  Smartphone,
  Clock,
  Check,
} from 'lucide-react';
import { toast } from '@/components/ui/use-toast';

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
    pay_later: 'Receber Depois',
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
  const queryClient = useQueryClient();
  const [search, setSearch] = useState('');
  const [searchType, setSearchType] = useState<'receipt' | 'customer'>('receipt');
  const [page, setPage] = useState(1);
  const [selectedSale, setSelectedSale] = useState<Sale | null>(null);
  const [showReceiptModal, setShowReceiptModal] = useState(false);
  const [showPaymentModal, setShowPaymentModal] = useState(false);
  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState<string | null>(null);
  const [showFilters, setShowFilters] = useState(false);
  const [filters, setFilters] = useState({
    startDate: '',
    endDate: '',
    status: '',
    paymentMethod: '',
  });
  const perPage = 20;

  // Load company settings from database
  const { data: companySettings } = useQuery({
    queryKey: ['company-settings'],
    queryFn: async () => {
      const res = await fetch('/api/configuracoes/empresa');
      const data = await res.json();
      return data.data as {
        name: string;
        logo: string | null;
        address: string;
        phone: string;
        document: string;
      };
    },
    staleTime: 60000,
  });

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

  // Mutation para registrar pagamento
  const receivePaymentMutation = useMutation({
    mutationFn: async ({ saleId, paymentMethod }: { saleId: string; paymentMethod: string }) => {
      const res = await fetch(`/api/vendas/${saleId}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ payment_method: paymentMethod }),
      });
      const result = await res.json();
      if (!res.ok) {
        throw new Error(result.error || 'Erro ao registrar pagamento');
      }
      return result;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['sales'] });
      setShowPaymentModal(false);
      setSelectedSale(null);
      setSelectedPaymentMethod(null);
      toast({
        title: 'Pagamento registrado',
        description: 'O pagamento foi registrado com sucesso.',
      });
    },
    onError: (error: Error) => {
      toast({
        title: 'Erro',
        description: error.message,
        variant: 'destructive',
      });
    },
  });

  const sales: Sale[] = salesData?.data || [];
  const totalSales = salesData?.total || 0;
  const totalPages = Math.ceil(totalSales / perPage);

  const stats = useMemo(() => {
    const completed = sales.filter(s => s.status === 'completed');
    const pending = sales.filter(s => s.status === 'pending');
    const totalValue = completed.reduce((sum, s) => sum + s.total, 0);
    const pendingValue = pending.reduce((sum, s) => sum + s.total, 0);

    return {
      count: sales.length,
      completed: completed.length,
      pending: pending.length,
      totalValue,
      pendingValue,
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

  const openPaymentModal = (sale: Sale) => {
    setSelectedSale(sale);
    setSelectedPaymentMethod(null);
    setShowPaymentModal(true);
  };

  const closePaymentModal = () => {
    setShowPaymentModal(false);
    setSelectedSale(null);
    setSelectedPaymentMethod(null);
  };

  const handleReceivePayment = () => {
    if (!selectedSale || !selectedPaymentMethod) return;
    receivePaymentMutation.mutate({
      saleId: selectedSale.id,
      paymentMethod: selectedPaymentMethod,
    });
  };

  const handlePrint = () => {
    if (selectedSale) {
      handleDirectPrint(selectedSale);
    }
  };

  // Impressão direta sem abrir modal (formatado para papel térmico 80mm)
  const handleDirectPrint = (sale: Sale) => {
    const printWindow = window.open('', '_blank');
    if (!printWindow) return;

    const logoHtml = companySettings?.logo
      ? `<img src="${companySettings.logo}" alt="Logo" />`
      : '';

    const companyName = companySettings?.name || 'KAWAY POS';
    const companyDoc = companySettings?.document ? `<p>${companySettings.document}</p>` : '';
    const companyAddr = companySettings?.address ? `<p>${companySettings.address}</p>` : '';
    const companyPhone = companySettings?.phone ? `<p>${companySettings.phone}</p>` : '';

    const customerName = sale.customer?.name || sale.customer_name || '';
    const customerInfo = customerName ? `
      <div class="divider"></div>
      <div class="row"><span>Cliente:</span><span>${customerName}</span></div>
      ${sale.customer?.phone ? `<div class="row"><span>Tel:</span><span>${sale.customer.phone}</span></div>` : ''}
    ` : '';

    const itemsHtml = sale.items?.map((item) => `
      <div class="item-name">${item.product_name}</div>
      <div class="row">
        <span>${item.quantity} x ${formatCurrency(item.unit_price)}</span>
        <span>${formatCurrency(item.total)}</span>
      </div>
    `).join('') || '';

    const discountHtml = sale.discount_amount > 0
      ? `<div class="row"><span>Subtotal:</span><span>${formatCurrency(sale.subtotal)}</span></div>
         <div class="row discount"><span>Desconto:</span><span>-${formatCurrency(sale.discount_amount)}</span></div>`
      : '';

    printWindow.document.write(`
      <!DOCTYPE html>
      <html>
        <head>
          <title>Recibo ${sale.receipt_number}</title>
          <meta charset="UTF-8">
          <style>
            @page {
              size: 80mm auto;
              margin: 0;
            }
            * {
              margin: 0;
              padding: 0;
              box-sizing: border-box;
            }
            body {
              font-family: 'Courier New', 'Lucida Console', monospace;
              font-size: 10px;
              line-height: 1.3;
              width: 72mm;
              max-width: 72mm;
              padding: 3mm;
              color: #000;
            }
            .center { text-align: center; }
            .bold { font-weight: bold; }
            img {
              max-width: 35mm;
              max-height: 12mm;
              display: block;
              margin: 0 auto 2mm;
            }
            h1 {
              font-size: 12px;
              font-weight: bold;
              margin-bottom: 1mm;
            }
            p {
              font-size: 9px;
              color: #333;
              margin: 0;
            }
            .divider {
              border-top: 1px dashed #000;
              margin: 2mm 0;
            }
            .row {
              display: flex;
              justify-content: space-between;
              font-size: 10px;
              margin: 1mm 0;
            }
            .item-name {
              font-size: 10px;
              font-weight: 500;
              margin-top: 1.5mm;
            }
            .total {
              font-size: 12px;
              font-weight: bold;
              margin: 2mm 0;
            }
            .discount { color: #060; }
            .footer {
              text-align: center;
              font-size: 9px;
              color: #666;
              margin-top: 3mm;
            }
          </style>
        </head>
        <body>
          <div class="center">
            ${logoHtml}
            <h1>${companyName}</h1>
            ${companyDoc}
            ${companyAddr}
            ${companyPhone}
            <p style="margin-top: 2mm; color: #666;">CUPOM NAO FISCAL</p>
          </div>

          <div class="divider"></div>
          <div class="row"><span>Data:</span><span>${formatDateTime(sale.created_at)}</span></div>
          <div class="row"><span>Recibo:</span><span>${sale.receipt_number}</span></div>
          ${customerInfo}

          <div class="divider"></div>
          ${itemsHtml}

          <div class="divider"></div>
          ${discountHtml}
          <div class="row total">
            <span>TOTAL</span>
            <span>${formatCurrency(sale.total)}</span>
          </div>

          <div class="divider"></div>
          <div class="row"><span>Pagamento:</span><span>${getPaymentMethodLabel(sale.payment_method)}</span></div>

          <div class="footer">
            <div class="divider"></div>
            <p>Obrigado pela preferencia!</p>
            <p>Volte sempre!</p>
          </div>
        </body>
      </html>
    `);
    printWindow.document.close();
    setTimeout(() => printWindow.print(), 100);
  };

  // Impressão na impressora térmica
  const handleThermalPrint = async (sale: Sale) => {
    const paymentLabels: Record<string, string> = {
      cash: 'Dinheiro',
      credit_card: 'Cartão Crédito',
      debit_card: 'Cartão Débito',
      pix: 'PIX',
      pay_later: 'Receber Depois',
    };

    const receiptData = {
      company: companySettings ? {
        name: companySettings.name,
        document: companySettings.document,
        address: companySettings.address,
        phone: companySettings.phone,
      } : null,
      receipt_number: sale.receipt_number,
      date: formatDateTime(sale.created_at),
      customer: sale.customer ? {
        name: sale.customer.name,
        address: sale.customer.address,
        phone: sale.customer.phone,
      } : null,
      items: sale.items?.map((item) => ({
        name: item.product_name,
        quantity: item.quantity,
        unit_price: item.unit_price,
        total: item.total,
      })) || [],
      subtotal: sale.subtotal,
      discount_amount: sale.discount_amount,
      total: sale.total,
      payment_method: sale.payment_method,
      payment_method_label: paymentLabels[sale.payment_method] || sale.payment_method,
    };

    try {
      const response = await fetch('/api/print-queue', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          sale_id: sale.id,
          receipt_data: receiptData,
        }),
      });

      const result = await response.json();

      if (result.success) {
        toast({
          title: 'Enviado para impressora!',
          description: 'O recibo será impresso em instantes.',
        });
      } else {
        throw new Error(result.error);
      }
    } catch (error) {
      toast({
        title: 'Erro ao enviar para impressora',
        description: 'Verifique se o agente de impressão está ativo.',
        variant: 'destructive',
      });
    }
  };

  const clearFilters = () => {
    setFilters({ startDate: '', endDate: '', status: '', paymentMethod: '' });
    setPage(1);
  };

  const hasActiveFilters = filters.startDate || filters.endDate || filters.status || filters.paymentMethod;

  return (
    <div className="w-full max-w-7xl mx-auto overflow-x-hidden">
      {/* Header */}
      <div className="mb-4">
        <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Vendas</h1>
        <p className="text-sm text-gray-500">Histórico de vendas</p>
      </div>

      {/* Stats Cards */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-2 sm:gap-3 mb-4">
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-blue-50 rounded-lg">
              <Receipt className="w-4 h-4 sm:w-5 sm:h-5 text-blue-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Total</p>
              <p className="text-base sm:text-lg font-bold">{stats.count}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-green-50 rounded-lg">
              <DollarSign className="w-4 h-4 sm:w-5 sm:h-5 text-green-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Recebido</p>
              <p className="text-sm sm:text-lg font-bold text-green-600 truncate">{formatCurrency(stats.totalValue)}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-yellow-50 rounded-lg">
              <Clock className="w-4 h-4 sm:w-5 sm:h-5 text-yellow-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Pendentes</p>
              <p className="text-base sm:text-lg font-bold text-yellow-600">{stats.pending}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-orange-50 rounded-lg">
              <Banknote className="w-4 h-4 sm:w-5 sm:h-5 text-orange-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">A receber</p>
              <p className="text-sm sm:text-lg font-bold text-orange-600 truncate">{formatCurrency(stats.pendingValue)}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Search and Filters */}
      <div className="bg-white rounded-xl shadow-sm p-3 mb-4 border border-gray-100">
        <div className="flex gap-2">
          <select
            value={searchType}
            onChange={(e) => setSearchType(e.target.value as 'receipt' | 'customer')}
            className="w-24 sm:w-auto px-2 py-2 text-xs sm:text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent bg-white"
          >
            <option value="receipt">Recibo</option>
            <option value="customer">Cliente</option>
          </select>
          <div className="flex-1 relative min-w-0">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
            <input
              type="text"
              placeholder="Buscar..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full pl-8 pr-2 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            />
          </div>
          <button
            onClick={() => setShowFilters(!showFilters)}
            className={`flex items-center justify-center gap-1 px-2.5 py-2 rounded-lg border transition-colors text-sm ${
              hasActiveFilters
                ? 'bg-blue-50 border-blue-200 text-blue-700'
                : 'border-gray-200 text-gray-600 hover:bg-gray-50'
            }`}
          >
            <Filter className="w-4 h-4" />
            {hasActiveFilters && (
              <span className="bg-blue-600 text-white text-[10px] w-4 h-4 rounded-full flex items-center justify-center">
                {[filters.startDate, filters.endDate, filters.status, filters.paymentMethod].filter(Boolean).length}
              </span>
            )}
          </button>
        </div>

        {/* Filters Panel */}
        {showFilters && (
          <div className="mt-3 pt-3 border-t grid grid-cols-2 gap-2">
            <div>
              <label className="block text-[10px] sm:text-xs font-medium text-gray-600 mb-1">Início</label>
              <input
                type="date"
                value={filters.startDate}
                onChange={(e) => setFilters({ ...filters, startDate: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-[10px] sm:text-xs font-medium text-gray-600 mb-1">Fim</label>
              <input
                type="date"
                value={filters.endDate}
                onChange={(e) => setFilters({ ...filters, endDate: e.target.value })}
                className="w-full px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div>
              <label className="block text-[10px] sm:text-xs font-medium text-gray-600 mb-1">Status</label>
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
              <label className="block text-[10px] sm:text-xs font-medium text-gray-600 mb-1">Pagamento</label>
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
                <option value="pay_later">Receber Depois</option>
              </select>
            </div>
            {hasActiveFilters && (
              <div className="col-span-2">
                <button onClick={clearFilters} className="text-xs text-blue-600 hover:text-blue-800">
                  Limpar filtros
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Sales List */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
        {/* Desktop Table */}
        <div className="hidden md:block overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Recibo</th>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Data</th>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Cliente</th>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Pagamento</th>
                <th className="px-3 py-3 text-center text-xs font-medium text-gray-500 uppercase">Itens</th>
                <th className="px-3 py-3 text-right text-xs font-medium text-gray-500 uppercase">Total</th>
                <th className="px-3 py-3 text-center text-xs font-medium text-gray-500 uppercase">Status</th>
                <th className="px-3 py-3 text-center text-xs font-medium text-gray-500 uppercase">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-100">
              {isLoading ? (
                <tr>
                  <td colSpan={8} className="px-4 py-12 text-center">
                    <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div>
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
                  const isPending = sale.status === 'pending';
                  return (
                    <tr key={sale.id} className="hover:bg-gray-50">
                      <td className="px-3 py-3">
                        <p className="font-mono text-sm font-medium">{sale.receipt_number}</p>
                      </td>
                      <td className="px-3 py-3 text-sm text-gray-600">{formatDateTime(sale.created_at)}</td>
                      <td className="px-3 py-3">
                        <div className="flex items-center gap-1.5">
                          <User className="w-3.5 h-3.5 text-gray-400" />
                          <span className={sale.customer_name ? "text-gray-900 text-sm" : "text-gray-400 text-sm italic"}>
                            {sale.customer_name || 'Balcão'}
                          </span>
                        </div>
                      </td>
                      <td className="px-3 py-3 text-sm text-gray-600">{getPaymentMethodLabel(sale.payment_method)}</td>
                      <td className="px-3 py-3 text-center text-sm text-gray-600">{sale.items?.length || 0}</td>
                      <td className="px-3 py-3 text-right font-medium text-green-600">{formatCurrency(sale.total)}</td>
                      <td className="px-3 py-3 text-center">
                        <span className={`inline-flex px-2 py-0.5 rounded-full text-xs font-medium ${statusInfo.color}`}>
                          {statusInfo.label}
                        </span>
                      </td>
                      <td className="px-3 py-3">
                        <div className="flex items-center justify-center gap-1">
                          {isPending && (
                            <button
                              onClick={() => openPaymentModal(sale)}
                              className="p-1.5 text-white bg-green-600 hover:bg-green-700 rounded-lg"
                              title="Receber Pagamento"
                            >
                              <DollarSign className="w-4 h-4" />
                            </button>
                          )}
                          <button onClick={() => openReceipt(sale)} className="p-1.5 text-gray-500 hover:text-blue-600 hover:bg-blue-50 rounded-lg" title="Ver recibo">
                            <Eye className="w-4 h-4" />
                          </button>
                          <button onClick={() => handleThermalPrint(sale)} className="p-1.5 text-gray-500 hover:text-green-600 hover:bg-green-50 rounded-lg" title="Imprimir na térmica">
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

        {/* Mobile Cards */}
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
              const isPending = sale.status === 'pending';
              return (
                <div key={sale.id} className="p-3 hover:bg-gray-50">
                  <div className="flex items-start justify-between gap-2 mb-1.5">
                    <div className="min-w-0" onClick={() => openReceipt(sale)}>
                      <p className="font-mono text-sm font-bold text-gray-900">{sale.receipt_number}</p>
                      <p className="text-[10px] text-gray-500">{formatDateTime(sale.created_at)}</p>
                    </div>
                    <span className={`flex-shrink-0 px-2 py-0.5 rounded-full text-[10px] font-medium ${statusInfo.color}`}>
                      {statusInfo.label}
                    </span>
                  </div>
                  <div className="flex items-center justify-between gap-2">
                    <div className="flex items-center gap-1 min-w-0" onClick={() => openReceipt(sale)}>
                      <User className="w-3.5 h-3.5 text-gray-400 flex-shrink-0" />
                      <span className={`text-xs truncate ${sale.customer_name ? 'text-gray-700' : 'text-gray-400 italic'}`}>
                        {sale.customer_name || 'Balcão'}
                      </span>
                    </div>
                    <p className="text-base font-bold text-green-600 flex-shrink-0">{formatCurrency(sale.total)}</p>
                  </div>
                  <div className="flex items-center justify-between mt-1.5">
                    <div className="text-[10px] text-gray-500" onClick={() => openReceipt(sale)}>
                      <span>{getPaymentMethodLabel(sale.payment_method)}</span>
                      <span className="mx-1">•</span>
                      <span>{sale.items?.length || 0} {(sale.items?.length || 0) === 1 ? 'item' : 'itens'}</span>
                    </div>
                    {isPending && (
                      <button
                        onClick={() => openPaymentModal(sale)}
                        className="flex items-center gap-1 px-2 py-1 text-xs font-medium text-white bg-green-600 hover:bg-green-700 rounded-lg"
                      >
                        <DollarSign className="w-3 h-3" />
                        Receber
                      </button>
                    )}
                  </div>
                </div>
              );
            })
          )}
        </div>

        {/* Pagination */}
        {totalPages > 1 && (
          <div className="flex items-center justify-between px-3 py-2.5 border-t bg-gray-50">
            <p className="text-[10px] sm:text-xs text-gray-500">
              {((page - 1) * perPage) + 1}-{Math.min(page * perPage, totalSales)} de {totalSales}
            </p>
            <div className="flex items-center gap-1">
              <button
                onClick={() => setPage(p => Math.max(1, p - 1))}
                disabled={page === 1}
                className="p-1.5 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"
              >
                <ChevronLeft className="w-4 h-4" />
              </button>
              <span className="text-xs text-gray-600 px-1.5">{page}/{totalPages}</span>
              <button
                onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                disabled={page === totalPages}
                className="p-1.5 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"
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
          <div className="bg-white dark:bg-gray-800 w-full max-w-sm sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b dark:border-gray-700 flex-shrink-0">
              <h2 className="text-lg font-semibold dark:text-white">Recibo</h2>
              <button onClick={closeReceipt} className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full">
                <X className="w-5 h-5 dark:text-gray-300" />
              </button>
            </div>

            <div id="receipt-content" className="flex-1 overflow-y-auto p-4 font-mono text-sm dark:text-gray-200 print-receipt">
              <div className="text-center mb-4">
                {/* Logo da empresa */}
                {companySettings?.logo && (
                  <div className="flex justify-center mb-2">
                    <img
                      src={companySettings.logo}
                      alt="Logo"
                      className="max-h-16 max-w-[150px] object-contain"
                    />
                  </div>
                )}
                <h3 className="font-bold text-lg dark:text-white print:text-black">
                  {companySettings?.name || 'KAWAY POS'}
                </h3>
                {companySettings?.document && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.document}</p>
                )}
                {companySettings?.address && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.address}</p>
                )}
                {companySettings?.phone && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.phone}</p>
                )}
                <p className="text-[10px] text-gray-400 dark:text-gray-500 mt-1">CUPOM NÃO FISCAL</p>
                <p className="text-xs mt-2">{formatDateTime(selectedSale.created_at)}</p>
                <p className="text-xs font-medium">Recibo: {selectedSale.receipt_number}</p>
              </div>

              {/* Cliente */}
              {(selectedSale.customer || selectedSale.customer_name) && (
                <>
                  <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />
                  <div className="text-xs space-y-0.5">
                    <div className="flex justify-between">
                      <span className="text-gray-500 dark:text-gray-400">Cliente:</span>
                      <span className="font-medium">{selectedSale.customer?.name || selectedSale.customer_name}</span>
                    </div>
                    {selectedSale.customer?.address && (
                      <div className="flex justify-between">
                        <span className="text-gray-500 dark:text-gray-400">Endereço:</span>
                        <span className="text-right max-w-[60%] truncate">{selectedSale.customer.address}</span>
                      </div>
                    )}
                    {selectedSale.customer?.phone && (
                      <div className="flex justify-between">
                        <span className="text-gray-500 dark:text-gray-400">Telefone:</span>
                        <span>{selectedSale.customer.phone}</span>
                      </div>
                    )}
                  </div>
                </>
              )}

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              {/* Itens */}
              <div className="space-y-2">
                {selectedSale.items?.map((item: any, index: number) => (
                  <div key={item.id || index}>
                    {index > 0 && <div className="border-t border-dotted border-gray-200 dark:border-gray-700 my-1" />}
                    <div className="text-xs">
                      <div className="font-medium truncate">{item.product_name}</div>
                      <div className="flex justify-between text-gray-600 dark:text-gray-400">
                        <span>{item.quantity} {item.unit || 'un'} x {formatCurrency(item.unit_price)}</span>
                        <span className="font-medium tabular-nums dark:text-gray-200">{formatCurrency(item.total)}</span>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              {/* Totais */}
              {selectedSale.discount_amount > 0 && (
                <div className="flex justify-between text-xs mb-1">
                  <span>Subtotal:</span>
                  <span>{formatCurrency(selectedSale.subtotal)}</span>
                </div>
              )}
              {selectedSale.discount_amount > 0 && (
                <div className="flex justify-between text-xs text-green-600 dark:text-green-400 mb-1">
                  <span>Desconto:</span>
                  <span>-{formatCurrency(selectedSale.discount_amount)}</span>
                </div>
              )}
              <div className="flex justify-between font-bold text-base dark:text-white">
                <span>TOTAL</span>
                <span>{formatCurrency(selectedSale.total)}</span>
              </div>

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              {/* Pagamento */}
              <div className="text-xs space-y-0.5">
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Pagamento:</span>
                  <span className="font-medium">{getPaymentMethodLabel(selectedSale.payment_method)}</span>
                </div>
              </div>

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              <div className="text-center text-xs text-gray-400 dark:text-gray-500">
                <p>Obrigado pela preferência!</p>
                <p className="mt-1">DOCUMENTO SEM VALOR FISCAL</p>
              </div>
            </div>

            <div className="flex flex-col gap-2 p-3 border-t bg-gray-50 dark:bg-gray-800 dark:border-gray-700 flex-shrink-0">
              {selectedSale.status === 'pending' && (
                <button
                  onClick={() => {
                    closeReceipt();
                    openPaymentModal(selectedSale);
                  }}
                  className="w-full flex items-center justify-center gap-2 py-2.5 bg-yellow-500 text-white rounded-xl font-medium"
                >
                  <DollarSign className="w-4 h-4" />
                  Receber Pagamento
                </button>
              )}
              <button
                onClick={() => handleThermalPrint(selectedSale)}
                className="w-full flex items-center justify-center gap-2 py-2.5 bg-green-600 text-white rounded-xl font-medium"
              >
                <Printer className="w-4 h-4" />
                Imprimir na Térmica
              </button>
              <div className="flex gap-2">
                <button onClick={handlePrint} className="flex-1 flex items-center justify-center gap-2 py-2 bg-blue-600 text-white rounded-xl font-medium text-sm">
                  <Printer className="w-4 h-4" />
                  Navegador
                </button>
                <button onClick={closeReceipt} className="flex-1 py-2 bg-gray-200 dark:bg-gray-600 text-gray-700 dark:text-white rounded-xl font-medium text-sm">
                  Fechar
                </button>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Payment Modal */}
      {showPaymentModal && selectedSale && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center z-50">
          <div className="bg-white w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold">Receber Pagamento</h2>
              <button onClick={closePaymentModal} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-4">
              {/* Info da Venda */}
              <div className="p-3 bg-gray-50 rounded-lg">
                <p className="text-sm text-gray-600">Recibo: <strong>{selectedSale.receipt_number}</strong></p>
                <p className="text-sm text-gray-600">Cliente: <strong>{selectedSale.customer_name || 'Balcão'}</strong></p>
              </div>

              {/* Valor Total */}
              <div className="text-center p-4 bg-gradient-to-br from-blue-50 to-purple-50 rounded-xl">
                <p className="text-sm text-gray-500">Valor a receber</p>
                <p className="text-3xl font-bold text-blue-600">{formatCurrency(selectedSale.total)}</p>
              </div>

              {/* Formas de Pagamento */}
              <div>
                <p className="text-sm font-medium text-gray-700 mb-2">Forma de pagamento recebido:</p>
                <div className="grid grid-cols-2 gap-2">
                  <button
                    onClick={() => setSelectedPaymentMethod('cash')}
                    className={`flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all ${
                      selectedPaymentMethod === 'cash'
                        ? 'border-blue-500 bg-blue-50 text-blue-600'
                        : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
                    }`}
                  >
                    <Banknote className="h-5 w-5 mb-1" />
                    <span className="text-xs">Dinheiro</span>
                  </button>
                  <button
                    onClick={() => setSelectedPaymentMethod('credit_card')}
                    className={`flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all ${
                      selectedPaymentMethod === 'credit_card'
                        ? 'border-blue-500 bg-blue-50 text-blue-600'
                        : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
                    }`}
                  >
                    <CreditCard className="h-5 w-5 mb-1" />
                    <span className="text-xs">Crédito</span>
                  </button>
                  <button
                    onClick={() => setSelectedPaymentMethod('debit_card')}
                    className={`flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all ${
                      selectedPaymentMethod === 'debit_card'
                        ? 'border-blue-500 bg-blue-50 text-blue-600'
                        : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
                    }`}
                  >
                    <CreditCard className="h-5 w-5 mb-1" />
                    <span className="text-xs">Débito</span>
                  </button>
                  <button
                    onClick={() => setSelectedPaymentMethod('pix')}
                    className={`flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all ${
                      selectedPaymentMethod === 'pix'
                        ? 'border-blue-500 bg-blue-50 text-blue-600'
                        : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
                    }`}
                  >
                    <Smartphone className="h-5 w-5 mb-1" />
                    <span className="text-xs">PIX</span>
                  </button>
                </div>
              </div>
            </div>

            <div className="flex gap-3 p-4 border-t bg-gray-50 dark:bg-gray-800 dark:border-gray-700 flex-shrink-0">
              <button
                onClick={closePaymentModal}
                className="flex-1 py-3 bg-gray-200 dark:bg-gray-600 text-gray-700 dark:text-white rounded-xl font-medium"
              >
                Cancelar
              </button>
              <button
                onClick={handleReceivePayment}
                disabled={!selectedPaymentMethod || receivePaymentMutation.isPending}
                className="flex-1 py-3 bg-green-600 text-white rounded-xl font-medium disabled:opacity-50 flex items-center justify-center gap-2"
              >
                {receivePaymentMutation.isPending ? (
                  <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white" />
                ) : (
                  <Check className="h-4 w-4" />
                )}
                Confirmar
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
