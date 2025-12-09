/**
 * Página de Relatórios
 *
 * Dashboard com relatórios de vendas, produtos e clientes.
 */

'use client';

import { useState, useMemo } from 'react';
import { useQuery } from '@tanstack/react-query';
import {
  BarChart3,
  TrendingUp,
  TrendingDown,
  DollarSign,
  ShoppingCart,
  Package,
  Users,
  Calendar,
  Download,
  Filter,
  ArrowUpRight,
  ArrowDownRight,
} from 'lucide-react';

interface SalesSummary {
  totalSales: number;
  totalRevenue: number;
  avgTicket: number;
  completedSales: number;
  cancelledSales: number;
}

interface TopProduct {
  id: string;
  name: string;
  quantity: number;
  revenue: number;
}

interface TopCustomer {
  id: string;
  name: string;
  purchases: number;
  totalSpent: number;
}

interface DailySales {
  date: string;
  sales: number;
  revenue: number;
}

interface PaymentMethodStats {
  method: string;
  count: number;
  total: number;
}

type DateRange = 'today' | 'week' | 'month' | 'year' | 'custom';

const paymentMethodLabels: Record<string, string> = {
  cash: 'Dinheiro',
  credit_card: 'Cartão de Crédito',
  debit_card: 'Cartão de Débito',
  pix: 'PIX',
  bank_transfer: 'Transferência',
  store_credit: 'Crédito Loja',
  other: 'Outro',
};

export default function RelatoriosPage() {
  // State
  const [dateRange, setDateRange] = useState<DateRange>('month');
  const [startDate, setStartDate] = useState('');
  const [endDate, setEndDate] = useState('');

  // Calculate date range
  const dateParams = useMemo(() => {
    const now = new Date();
    let start: Date;
    let end = new Date(now);

    switch (dateRange) {
      case 'today':
        start = new Date(now.setHours(0, 0, 0, 0));
        break;
      case 'week':
        start = new Date(now);
        start.setDate(start.getDate() - 7);
        break;
      case 'month':
        start = new Date(now);
        start.setMonth(start.getMonth() - 1);
        break;
      case 'year':
        start = new Date(now);
        start.setFullYear(start.getFullYear() - 1);
        break;
      case 'custom':
        if (startDate && endDate) {
          return { start: startDate, end: endDate };
        }
        start = new Date(now);
        start.setMonth(start.getMonth() - 1);
        break;
      default:
        start = new Date(now);
        start.setMonth(start.getMonth() - 1);
    }

    return {
      start: start.toISOString().split('T')[0],
      end: end.toISOString().split('T')[0],
    };
  }, [dateRange, startDate, endDate]);

  // Fetch sales report
  const { data: reportData, isLoading } = useQuery({
    queryKey: ['sales-report', dateParams],
    queryFn: async () => {
      const params = new URLSearchParams({
        start: dateParams.start,
        end: dateParams.end,
      });

      const res = await fetch(`/api/relatorios/vendas?${params}`);
      return res.json();
    },
  });

  // Fetch products stats
  const { data: productsData } = useQuery({
    queryKey: ['products-stats'],
    queryFn: async () => {
      const res = await fetch('/api/produtos?limit=1000');
      return res.json();
    },
  });

  // Fetch customers stats
  const { data: customersData } = useQuery({
    queryKey: ['customers-stats'],
    queryFn: async () => {
      const res = await fetch('/api/clientes?limit=1000');
      return res.json();
    },
  });

  // Process data
  const summary: SalesSummary = reportData?.summary || {
    totalSales: 0,
    totalRevenue: 0,
    avgTicket: 0,
    completedSales: 0,
    cancelledSales: 0,
  };

  const topProducts: TopProduct[] = reportData?.topProducts || [];
  const topCustomers: TopCustomer[] = reportData?.topCustomers || [];
  const dailySales: DailySales[] = reportData?.dailySales || [];
  const paymentStats: PaymentMethodStats[] = reportData?.paymentMethods || [];

  // Calculate additional stats
  const productStats = useMemo(() => {
    const products = productsData?.data || [];
    const total = products.length;
    const lowStock = products.filter((p: { stock_quantity: number; min_stock_quantity: number }) =>
      p.stock_quantity <= p.min_stock_quantity && p.stock_quantity > 0
    ).length;
    const outOfStock = products.filter((p: { stock_quantity: number }) => p.stock_quantity <= 0).length;
    const totalValue = products.reduce(
      (sum: number, p: { price: number; stock_quantity: number }) => sum + p.price * p.stock_quantity,
      0
    );

    return { total, lowStock, outOfStock, totalValue };
  }, [productsData]);

  const customerStats = useMemo(() => {
    const customers = customersData?.data || [];
    const total = customers.length;
    const withPurchases = customers.filter((c: { total_purchases: number }) => c.total_purchases > 0).length;
    const totalCredit = customers.reduce((sum: number, c: { credit_limit: number }) => sum + c.credit_limit, 0);

    return { total, withPurchases, totalCredit };
  }, [customersData]);

  // Format helpers
  const formatCurrency = (cents: number) => {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL',
    }).format(cents / 100);
  };

  const formatDate = (dateStr: string) => {
    return new Date(dateStr).toLocaleDateString('pt-BR');
  };

  const formatNumber = (num: number) => {
    return new Intl.NumberFormat('pt-BR').format(num);
  };

  // Calculate max for chart
  const maxRevenue = Math.max(...dailySales.map(d => d.revenue), 1);

  return (
    <div className="p-6 max-w-7xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Relatórios</h1>
          <p className="text-gray-600">Análise de vendas e desempenho</p>
        </div>

        {/* Date Range Filter */}
        <div className="flex items-center gap-4">
          <select
            value={dateRange}
            onChange={(e) => setDateRange(e.target.value as DateRange)}
            className="px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          >
            <option value="today">Hoje</option>
            <option value="week">Últimos 7 dias</option>
            <option value="month">Últimos 30 dias</option>
            <option value="year">Último ano</option>
            <option value="custom">Personalizado</option>
          </select>

          {dateRange === 'custom' && (
            <div className="flex items-center gap-2">
              <input
                type="date"
                value={startDate}
                onChange={(e) => setStartDate(e.target.value)}
                className="px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
              <span className="text-gray-500">até</span>
              <input
                type="date"
                value={endDate}
                onChange={(e) => setEndDate(e.target.value)}
                className="px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>
          )}

          <button
            className="flex items-center gap-2 px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
          >
            <Download className="w-5 h-5" />
            Exportar
          </button>
        </div>
      </div>

      {/* Main Stats Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total de Vendas</p>
              <p className="text-2xl font-bold text-gray-900">{formatNumber(summary.totalSales)}</p>
            </div>
            <div className="p-3 bg-blue-100 rounded-lg">
              <ShoppingCart className="w-6 h-6 text-blue-600" />
            </div>
          </div>
          <div className="mt-2 flex items-center text-sm">
            <span className="text-green-600 flex items-center">
              <ArrowUpRight className="w-4 h-4" />
              {summary.completedSales} concluídas
            </span>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Receita Total</p>
              <p className="text-2xl font-bold text-green-600">{formatCurrency(summary.totalRevenue)}</p>
            </div>
            <div className="p-3 bg-green-100 rounded-lg">
              <DollarSign className="w-6 h-6 text-green-600" />
            </div>
          </div>
          <div className="mt-2 flex items-center text-sm text-gray-500">
            Período: {formatDate(dateParams.start)} - {formatDate(dateParams.end)}
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Ticket Médio</p>
              <p className="text-2xl font-bold text-purple-600">{formatCurrency(summary.avgTicket)}</p>
            </div>
            <div className="p-3 bg-purple-100 rounded-lg">
              <TrendingUp className="w-6 h-6 text-purple-600" />
            </div>
          </div>
          <div className="mt-2 flex items-center text-sm text-gray-500">
            Por venda concluída
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Cancelamentos</p>
              <p className="text-2xl font-bold text-red-600">{formatNumber(summary.cancelledSales)}</p>
            </div>
            <div className="p-3 bg-red-100 rounded-lg">
              <TrendingDown className="w-6 h-6 text-red-600" />
            </div>
          </div>
          <div className="mt-2 flex items-center text-sm text-gray-500">
            {summary.totalSales > 0
              ? `${((summary.cancelledSales / summary.totalSales) * 100).toFixed(1)}% das vendas`
              : '0% das vendas'}
          </div>
        </div>
      </div>

      {/* Charts Row */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
        {/* Daily Sales Chart */}
        <div className="bg-white rounded-lg shadow p-4">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Vendas por Dia</h3>
          {isLoading ? (
            <div className="h-64 flex items-center justify-center text-gray-500">
              Carregando...
            </div>
          ) : dailySales.length === 0 ? (
            <div className="h-64 flex items-center justify-center text-gray-500">
              Sem dados para o período selecionado
            </div>
          ) : (
            <div className="h-64 flex items-end gap-1">
              {dailySales.slice(-30).map((day, index) => (
                <div
                  key={day.date}
                  className="flex-1 flex flex-col items-center group"
                >
                  <div className="relative w-full">
                    <div
                      className="w-full bg-blue-500 rounded-t hover:bg-blue-600 transition-colors cursor-pointer"
                      style={{ height: `${(day.revenue / maxRevenue) * 200}px`, minHeight: '4px' }}
                    />
                    <div className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 hidden group-hover:block bg-gray-900 text-white text-xs rounded py-1 px-2 whitespace-nowrap z-10">
                      {formatDate(day.date)}<br />
                      {formatCurrency(day.revenue)}<br />
                      {day.sales} vendas
                    </div>
                  </div>
                  {index % 5 === 0 && (
                    <span className="text-xs text-gray-500 mt-1 rotate-45 origin-left">
                      {new Date(day.date).toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' })}
                    </span>
                  )}
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Payment Methods */}
        <div className="bg-white rounded-lg shadow p-4">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Formas de Pagamento</h3>
          {paymentStats.length === 0 ? (
            <div className="h-64 flex items-center justify-center text-gray-500">
              Sem dados para o período selecionado
            </div>
          ) : (
            <div className="space-y-4">
              {paymentStats.map((stat) => {
                const percentage = summary.totalRevenue > 0
                  ? (stat.total / summary.totalRevenue) * 100
                  : 0;

                return (
                  <div key={stat.method}>
                    <div className="flex items-center justify-between mb-1">
                      <span className="text-sm font-medium text-gray-700">
                        {paymentMethodLabels[stat.method] || stat.method}
                      </span>
                      <span className="text-sm text-gray-500">
                        {stat.count} vendas - {formatCurrency(stat.total)}
                      </span>
                    </div>
                    <div className="w-full bg-gray-200 rounded-full h-3">
                      <div
                        className="bg-blue-500 h-3 rounded-full transition-all duration-300"
                        style={{ width: `${percentage}%` }}
                      />
                    </div>
                    <p className="text-xs text-gray-500 mt-1">{percentage.toFixed(1)}% do total</p>
                  </div>
                );
              })}
            </div>
          )}
        </div>
      </div>

      {/* Top Products and Customers */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
        {/* Top Products */}
        <div className="bg-white rounded-lg shadow p-4">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Produtos Mais Vendidos</h3>
          {topProducts.length === 0 ? (
            <div className="py-8 text-center text-gray-500">
              Sem dados para o período selecionado
            </div>
          ) : (
            <div className="space-y-3">
              {topProducts.slice(0, 10).map((product, index) => (
                <div
                  key={product.id}
                  className="flex items-center gap-4 p-3 bg-gray-50 rounded-lg"
                >
                  <span className="w-8 h-8 flex items-center justify-center bg-blue-100 text-blue-600 font-bold rounded-full">
                    {index + 1}
                  </span>
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-gray-900 truncate">{product.name}</p>
                    <p className="text-sm text-gray-500">{product.quantity} unidades</p>
                  </div>
                  <span className="font-bold text-green-600">{formatCurrency(product.revenue)}</span>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Top Customers */}
        <div className="bg-white rounded-lg shadow p-4">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Melhores Clientes</h3>
          {topCustomers.length === 0 ? (
            <div className="py-8 text-center text-gray-500">
              Sem dados para o período selecionado
            </div>
          ) : (
            <div className="space-y-3">
              {topCustomers.slice(0, 10).map((customer, index) => (
                <div
                  key={customer.id}
                  className="flex items-center gap-4 p-3 bg-gray-50 rounded-lg"
                >
                  <span className="w-8 h-8 flex items-center justify-center bg-purple-100 text-purple-600 font-bold rounded-full">
                    {index + 1}
                  </span>
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-gray-900 truncate">{customer.name}</p>
                    <p className="text-sm text-gray-500">{customer.purchases} compras</p>
                  </div>
                  <span className="font-bold text-green-600">{formatCurrency(customer.totalSpent)}</span>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>

      {/* Additional Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {/* Products Overview */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-2 mb-4">
            <Package className="w-5 h-5 text-blue-600" />
            <h3 className="text-lg font-semibold text-gray-900">Estoque</h3>
          </div>
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Total de Produtos</span>
              <span className="font-bold">{formatNumber(productStats.total)}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Estoque Baixo</span>
              <span className="font-bold text-yellow-600">{formatNumber(productStats.lowStock)}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Sem Estoque</span>
              <span className="font-bold text-red-600">{formatNumber(productStats.outOfStock)}</span>
            </div>
            <div className="pt-3 border-t">
              <div className="flex justify-between items-center">
                <span className="text-gray-600">Valor em Estoque</span>
                <span className="font-bold text-green-600">{formatCurrency(productStats.totalValue)}</span>
              </div>
            </div>
          </div>
        </div>

        {/* Customers Overview */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-2 mb-4">
            <Users className="w-5 h-5 text-purple-600" />
            <h3 className="text-lg font-semibold text-gray-900">Clientes</h3>
          </div>
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Total de Clientes</span>
              <span className="font-bold">{formatNumber(customerStats.total)}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Com Compras</span>
              <span className="font-bold text-green-600">{formatNumber(customerStats.withPurchases)}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600">Taxa de Conversão</span>
              <span className="font-bold">
                {customerStats.total > 0
                  ? `${((customerStats.withPurchases / customerStats.total) * 100).toFixed(1)}%`
                  : '0%'}
              </span>
            </div>
            <div className="pt-3 border-t">
              <div className="flex justify-between items-center">
                <span className="text-gray-600">Crédito Total</span>
                <span className="font-bold text-blue-600">{formatCurrency(customerStats.totalCredit)}</span>
              </div>
            </div>
          </div>
        </div>

        {/* Quick Actions */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-2 mb-4">
            <BarChart3 className="w-5 h-5 text-green-600" />
            <h3 className="text-lg font-semibold text-gray-900">Ações Rápidas</h3>
          </div>
          <div className="space-y-3">
            <a
              href="/pdv"
              className="block w-full p-3 text-center bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
            >
              Abrir PDV
            </a>
            <a
              href="/produtos"
              className="block w-full p-3 text-center bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
            >
              Gerenciar Produtos
            </a>
            <a
              href="/clientes"
              className="block w-full p-3 text-center bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
            >
              Gerenciar Clientes
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}
