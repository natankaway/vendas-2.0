/**
 * Página de Relatórios
 *
 * Dashboard completo com relatórios de vendas, produtos e clientes.
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
  ArrowUpRight,
  ArrowDownRight,
  Clock,
  CreditCard,
  Banknote,
  Smartphone,
  Receipt,
  Target,
  Percent,
  Store,
  WifiOff,
} from 'lucide-react';
import { useOnlineStatus } from '@/lib/hooks/use-online-status';
import { generateOfflineReport } from '@/lib/services/offline-data-service';

interface SalesSummary {
  totalSales: number;
  totalRevenue: number;
  avgTicket: number;
  completedSales: number;
  cancelledSales: number;
  balcaoSales: number;
  balcaoRevenue: number;
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

interface HourlyData {
  hour: number;
  sales: number;
  revenue: number;
}

interface Comparison {
  previousRevenue: number;
  previousCount: number;
  revenueChange: number;
  countChange: number;
}

type DateRange = 'today' | 'week' | 'month' | 'year' | 'custom';

const paymentMethodLabels: Record<string, string> = {
  cash: 'Dinheiro',
  credit_card: 'Cartão de Crédito',
  debit_card: 'Cartão de Débito',
  pix: 'PIX',
  bank_transfer: 'Transferência',
  store_credit: 'Crédito Loja',
  pay_later: 'Receber Depois',
  other: 'Outro',
};

const paymentMethodIcons: Record<string, React.ReactNode> = {
  cash: <Banknote className="w-4 h-4" />,
  credit_card: <CreditCard className="w-4 h-4" />,
  debit_card: <CreditCard className="w-4 h-4" />,
  pix: <Smartphone className="w-4 h-4" />,
  bank_transfer: <Receipt className="w-4 h-4" />,
  store_credit: <Store className="w-4 h-4" />,
  pay_later: <Clock className="w-4 h-4" />,
  other: <DollarSign className="w-4 h-4" />,
};

const paymentMethodColors: Record<string, string> = {
  cash: 'bg-green-500',
  credit_card: 'bg-blue-500',
  debit_card: 'bg-purple-500',
  pix: 'bg-teal-500',
  bank_transfer: 'bg-orange-500',
  store_credit: 'bg-pink-500',
  pay_later: 'bg-yellow-500',
  other: 'bg-gray-500',
};

export default function RelatoriosPage() {
  const [dateRange, setDateRange] = useState<DateRange>('month');
  const [startDate, setStartDate] = useState('');
  const [endDate, setEndDate] = useState('');

  // Hook de status de conexão
  const { isOnline, isOffline, status: connectionStatus } = useOnlineStatus();

  // Calculate date range
  const dateParams = useMemo(() => {
    const now = new Date();
    let start: Date;
    let end = new Date(now);

    switch (dateRange) {
      case 'today':
        start = new Date(now);
        start.setHours(0, 0, 0, 0);
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

  // Fetch sales report - com fallback para offline
  const { data: reportData, isLoading } = useQuery({
    queryKey: ['sales-report', dateParams, connectionStatus],
    queryFn: async () => {
      try {
        const params = new URLSearchParams({
          start: dateParams.start,
          end: dateParams.end,
        });

        const res = await fetch(`/api/relatorios/vendas?${params}`);
        if (res.ok) {
          return res.json();
        }
      } catch (error) {
        console.warn('[Relatorios] API falhou, usando dados offline:', error);
      }

      // Fallback para relatório offline
      const offlineReport = await generateOfflineReport(dateParams.start, dateParams.end);
      if (offlineReport.success && offlineReport.data) {
        return {
          summary: {
            totalSales: offlineReport.data.totalSales,
            totalRevenue: offlineReport.data.totalRevenue / 100,
            avgTicket: offlineReport.data.salesCount > 0
              ? (offlineReport.data.totalRevenue / 100) / offlineReport.data.salesCount
              : 0,
            completedSales: offlineReport.data.salesCount,
            cancelledSales: offlineReport.data.salesByStatus.cancelled || 0,
            balcaoSales: 0,
            balcaoRevenue: 0,
          },
          topProducts: offlineReport.data.topProducts.map(p => ({
            id: p.name,
            name: p.name,
            quantity: p.quantity,
            revenue: p.total / 100,
          })),
          paymentMethods: Object.entries(offlineReport.data.salesByPayment).map(([method, data]) => ({
            method,
            count: data.count,
            total: data.total / 100,
          })),
          _offline: true,
        };
      }

      return { summary: null, topProducts: [], paymentMethods: [], _offline: true };
    },
    staleTime: 30000,
  });

  // Verificar se dados são offline
  const isDataOffline = (reportData as any)?._offline === true;
  const showOfflineBanner = isOffline || isDataOffline;

  // Fetch products stats
  const { data: productsData } = useQuery({
    queryKey: ['products-stats'],
    queryFn: async () => {
      const res = await fetch('/api/produtos?limit=1000');
      return res.json();
    },
    staleTime: 60000,
  });

  // Fetch customers stats
  const { data: customersData } = useQuery({
    queryKey: ['customers-stats'],
    queryFn: async () => {
      const res = await fetch('/api/clientes?limit=1000');
      return res.json();
    },
    staleTime: 60000,
  });

  // Process data
  const summary: SalesSummary = reportData?.summary || {
    totalSales: 0,
    totalRevenue: 0,
    avgTicket: 0,
    completedSales: 0,
    cancelledSales: 0,
    balcaoSales: 0,
    balcaoRevenue: 0,
  };

  const topProducts: TopProduct[] = reportData?.topProducts || [];
  const topCustomers: TopCustomer[] = reportData?.topCustomers || [];
  const dailySales: DailySales[] = reportData?.dailySales || [];
  const paymentStats: PaymentMethodStats[] = reportData?.paymentMethods || [];
  const hourlyDistribution: HourlyData[] = reportData?.hourlyDistribution || [];
  const comparison: Comparison = reportData?.comparison || {
    previousRevenue: 0,
    previousCount: 0,
    revenueChange: 0,
    countChange: 0,
  };

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
    const totalCredit = customers.reduce((sum: number, c: { credit_limit: number }) => sum + (c.credit_limit || 0), 0);

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
    return new Date(dateStr + 'T12:00:00').toLocaleDateString('pt-BR');
  };

  const formatNumber = (num: number) => {
    return new Intl.NumberFormat('pt-BR').format(num);
  };

  // Calculate max for charts
  const maxRevenue = Math.max(...dailySales.map(d => d.revenue), 1);
  const maxHourlySales = Math.max(...hourlyDistribution.map(h => h.sales), 1);

  // Get date range label
  const getDateRangeLabel = () => {
    switch (dateRange) {
      case 'today': return 'Hoje';
      case 'week': return 'Últimos 7 dias';
      case 'month': return 'Últimos 30 dias';
      case 'year': return 'Último ano';
      case 'custom': return 'Personalizado';
      default: return '';
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 dark:from-gray-900 dark:to-gray-800 p-6">
      <div className="max-w-7xl mx-auto">
        {/* Offline Banner */}
        {showOfflineBanner && (
          <div className="bg-amber-500 text-white px-4 py-3 rounded-xl mb-4 flex items-center justify-center gap-2 text-sm font-medium">
            <WifiOff className="h-4 w-4" />
            <span>Modo Offline - Exibindo relatório a partir dos dados locais</span>
          </div>
        )}

        {/* Header */}
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 mb-8">
          <div>
            <h1 className="text-3xl font-bold bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
              Relatórios
            </h1>
            <p className="text-gray-500 dark:text-gray-400 mt-1">Análise completa de vendas e desempenho</p>
          </div>

          {/* Date Range Filter */}
          <div className="flex flex-wrap items-center gap-3">
            <div className="flex bg-white dark:bg-gray-800 rounded-xl shadow-sm border border-gray-100 dark:border-gray-700 p-1">
              {(['today', 'week', 'month', 'year'] as DateRange[]).map((range) => (
                <button
                  key={range}
                  onClick={() => setDateRange(range)}
                  className={`px-4 py-2 text-sm font-medium rounded-lg transition-all ${
                    dateRange === range
                      ? 'bg-blue-600 text-white shadow-md'
                      : 'text-gray-600 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-gray-700'
                  }`}
                >
                  {range === 'today' && 'Hoje'}
                  {range === 'week' && '7 dias'}
                  {range === 'month' && '30 dias'}
                  {range === 'year' && 'Ano'}
                </button>
              ))}
            </div>

            <button
              onClick={() => setDateRange('custom')}
              className={`flex items-center gap-2 px-4 py-2 rounded-xl border transition-all ${
                dateRange === 'custom'
                  ? 'bg-blue-600 text-white border-blue-600'
                  : 'bg-white dark:bg-gray-800 text-gray-600 dark:text-gray-300 border-gray-200 dark:border-gray-700 hover:border-blue-300'
              }`}
            >
              <Calendar className="w-4 h-4" />
              Período
            </button>

            {dateRange === 'custom' && (
              <div className="flex items-center gap-2 bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 p-2">
                <input
                  type="date"
                  value={startDate}
                  onChange={(e) => setStartDate(e.target.value)}
                  className="px-3 py-1.5 text-sm border-0 focus:ring-0 dark:bg-gray-800 dark:text-white"
                />
                <span className="text-gray-400">→</span>
                <input
                  type="date"
                  value={endDate}
                  onChange={(e) => setEndDate(e.target.value)}
                  className="px-3 py-1.5 text-sm border-0 focus:ring-0 dark:bg-gray-800 dark:text-white"
                />
              </div>
            )}
          </div>
        </div>

        {/* Main Stats Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
          {/* Total de Vendas */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg shadow-blue-100/50 dark:shadow-none p-6 border border-blue-50 dark:border-gray-700 hover:shadow-xl transition-shadow">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">Total de Vendas</p>
                <p className="text-3xl font-bold text-gray-900 dark:text-white mt-2">{formatNumber(summary.completedSales)}</p>
                <div className="flex items-center gap-2 mt-3">
                  {comparison.countChange >= 0 ? (
                    <span className="flex items-center text-sm font-medium text-green-600 dark:text-green-400 bg-green-50 dark:bg-green-900/30 px-2 py-0.5 rounded-full">
                      <ArrowUpRight className="w-3.5 h-3.5 mr-0.5" />
                      {comparison.countChange.toFixed(1)}%
                    </span>
                  ) : (
                    <span className="flex items-center text-sm font-medium text-red-600 dark:text-red-400 bg-red-50 dark:bg-red-900/30 px-2 py-0.5 rounded-full">
                      <ArrowDownRight className="w-3.5 h-3.5 mr-0.5" />
                      {Math.abs(comparison.countChange).toFixed(1)}%
                    </span>
                  )}
                  <span className="text-xs text-gray-400 dark:text-gray-500">vs período anterior</span>
                </div>
              </div>
              <div className="p-3 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl shadow-lg shadow-blue-200 dark:shadow-none">
                <ShoppingCart className="w-6 h-6 text-white" />
              </div>
            </div>
          </div>

          {/* Receita Total */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg shadow-green-100/50 dark:shadow-none p-6 border border-green-50 dark:border-gray-700 hover:shadow-xl transition-shadow">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">Receita Total</p>
                <p className="text-3xl font-bold text-green-600 dark:text-green-400 mt-2">{formatCurrency(summary.totalRevenue)}</p>
                <div className="flex items-center gap-2 mt-3">
                  {comparison.revenueChange >= 0 ? (
                    <span className="flex items-center text-sm font-medium text-green-600 dark:text-green-400 bg-green-50 dark:bg-green-900/30 px-2 py-0.5 rounded-full">
                      <ArrowUpRight className="w-3.5 h-3.5 mr-0.5" />
                      {comparison.revenueChange.toFixed(1)}%
                    </span>
                  ) : (
                    <span className="flex items-center text-sm font-medium text-red-600 dark:text-red-400 bg-red-50 dark:bg-red-900/30 px-2 py-0.5 rounded-full">
                      <ArrowDownRight className="w-3.5 h-3.5 mr-0.5" />
                      {Math.abs(comparison.revenueChange).toFixed(1)}%
                    </span>
                  )}
                  <span className="text-xs text-gray-400 dark:text-gray-500">vs período anterior</span>
                </div>
              </div>
              <div className="p-3 bg-gradient-to-br from-green-500 to-emerald-600 rounded-xl shadow-lg shadow-green-200 dark:shadow-none">
                <DollarSign className="w-6 h-6 text-white" />
              </div>
            </div>
          </div>

          {/* Ticket Médio */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg shadow-purple-100/50 dark:shadow-none p-6 border border-purple-50 dark:border-gray-700 hover:shadow-xl transition-shadow">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">Ticket Médio</p>
                <p className="text-3xl font-bold text-purple-600 dark:text-purple-400 mt-2">{formatCurrency(summary.avgTicket)}</p>
                <div className="mt-3">
                  <span className="text-xs text-gray-400 dark:text-gray-500">Por venda concluída</span>
                </div>
              </div>
              <div className="p-3 bg-gradient-to-br from-purple-500 to-violet-600 rounded-xl shadow-lg shadow-purple-200 dark:shadow-none">
                <Target className="w-6 h-6 text-white" />
              </div>
            </div>
          </div>

          {/* Vendas Balcão */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg shadow-orange-100/50 dark:shadow-none p-6 border border-orange-50 dark:border-gray-700 hover:shadow-xl transition-shadow">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">Vendas Balcão</p>
                <p className="text-3xl font-bold text-orange-600 dark:text-orange-400 mt-2">{formatNumber(summary.balcaoSales)}</p>
                <div className="mt-3">
                  <span className="text-xs text-gray-400 dark:text-gray-500">{formatCurrency(summary.balcaoRevenue)} em receita</span>
                </div>
              </div>
              <div className="p-3 bg-gradient-to-br from-orange-500 to-amber-600 rounded-xl shadow-lg shadow-orange-200 dark:shadow-none">
                <Store className="w-6 h-6 text-white" />
              </div>
            </div>
          </div>
        </div>

        {/* Charts Row */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
          {/* Daily Sales Chart - takes 2 cols */}
          <div className="lg:col-span-2 bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center justify-between mb-6">
              <div>
                <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Vendas por Dia</h3>
                <p className="text-sm text-gray-500 dark:text-gray-400 mt-0.5">{getDateRangeLabel()}</p>
              </div>
              <div className="flex items-center gap-4 text-sm">
                <div className="flex items-center gap-2">
                  <div className="w-3 h-3 rounded-full bg-blue-500"></div>
                  <span className="text-gray-600 dark:text-gray-400">Receita</span>
                </div>
              </div>
            </div>
            {isLoading ? (
              <div className="h-64 flex items-center justify-center text-gray-500 dark:text-gray-400">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600"></div>
              </div>
            ) : dailySales.length === 0 ? (
              <div className="h-64 flex flex-col items-center justify-center text-gray-400 dark:text-gray-500">
                <BarChart3 className="w-12 h-12 mb-2 opacity-50" />
                <p>Sem dados para o período selecionado</p>
              </div>
            ) : (
              <div className="h-64 flex items-end gap-1 px-2">
                {dailySales.slice(-30).map((day, index) => (
                  <div
                    key={day.date}
                    className="flex-1 flex flex-col items-center group cursor-pointer"
                  >
                    <div className="relative w-full">
                      <div
                        className="w-full bg-gradient-to-t from-blue-600 to-blue-400 rounded-t-lg hover:from-blue-700 hover:to-blue-500 transition-all duration-200 shadow-sm"
                        style={{ height: `${Math.max((day.revenue / maxRevenue) * 200, 4)}px` }}
                      />
                      <div className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 hidden group-hover:block bg-gray-900 text-white text-xs rounded-lg py-2 px-3 whitespace-nowrap z-10 shadow-xl">
                        <p className="font-semibold">{formatDate(day.date)}</p>
                        <p className="text-green-400">{formatCurrency(day.revenue)}</p>
                        <p className="text-gray-400">{day.sales} vendas</p>
                      </div>
                    </div>
                    {index % Math.ceil(dailySales.length / 8) === 0 && (
                      <span className="text-[10px] text-gray-400 mt-2 font-medium">
                        {new Date(day.date + 'T12:00:00').toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' })}
                      </span>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* Hourly Distribution */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center gap-2 mb-6">
              <Clock className="w-5 h-5 text-blue-600 dark:text-blue-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Horários de Pico</h3>
            </div>
            {hourlyDistribution.every(h => h.sales === 0) ? (
              <div className="h-48 flex flex-col items-center justify-center text-gray-400 dark:text-gray-500">
                <Clock className="w-10 h-10 mb-2 opacity-50" />
                <p className="text-sm">Sem dados de horário</p>
              </div>
            ) : (
              <div className="space-y-2">
                {hourlyDistribution
                  .filter(h => h.sales > 0)
                  .sort((a, b) => b.sales - a.sales)
                  .slice(0, 6)
                  .map((hour) => (
                    <div key={hour.hour} className="flex items-center gap-3">
                      <span className="w-12 text-sm font-medium text-gray-600 dark:text-gray-400">
                        {String(hour.hour).padStart(2, '0')}:00
                      </span>
                      <div className="flex-1 bg-gray-100 dark:bg-gray-700 rounded-full h-6 overflow-hidden">
                        <div
                          className="h-full bg-gradient-to-r from-blue-500 to-purple-500 rounded-full flex items-center justify-end pr-2"
                          style={{ width: `${(hour.sales / maxHourlySales) * 100}%` }}
                        >
                          <span className="text-xs text-white font-medium">{hour.sales}</span>
                        </div>
                      </div>
                    </div>
                  ))}
              </div>
            )}
          </div>
        </div>

        {/* Payment Methods & Top Items */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
          {/* Payment Methods */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center gap-2 mb-6">
              <CreditCard className="w-5 h-5 text-purple-600 dark:text-purple-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Formas de Pagamento</h3>
            </div>
            {paymentStats.length === 0 ? (
              <div className="h-48 flex flex-col items-center justify-center text-gray-400 dark:text-gray-500">
                <CreditCard className="w-10 h-10 mb-2 opacity-50" />
                <p className="text-sm">Sem dados de pagamento</p>
              </div>
            ) : (
              <div className="space-y-4">
                {paymentStats.map((stat) => {
                  const percentage = summary.totalRevenue > 0
                    ? (stat.total / summary.totalRevenue) * 100
                    : 0;

                  return (
                    <div key={stat.method} className="group">
                      <div className="flex items-center justify-between mb-2">
                        <div className="flex items-center gap-2">
                          <div className={`p-1.5 rounded-lg ${paymentMethodColors[stat.method]} bg-opacity-20 dark:bg-opacity-30`}>
                            {paymentMethodIcons[stat.method]}
                          </div>
                          <span className="text-sm font-medium text-gray-700 dark:text-gray-300">
                            {paymentMethodLabels[stat.method] || stat.method}
                          </span>
                        </div>
                        <span className="text-sm font-bold text-gray-900 dark:text-white">
                          {formatCurrency(stat.total)}
                        </span>
                      </div>
                      <div className="relative w-full bg-gray-100 dark:bg-gray-700 rounded-full h-2">
                        <div
                          className={`h-2 rounded-full transition-all duration-500 ${paymentMethodColors[stat.method]}`}
                          style={{ width: `${percentage}%` }}
                        />
                      </div>
                      <div className="flex justify-between mt-1">
                        <span className="text-xs text-gray-400 dark:text-gray-500">{stat.count} vendas</span>
                        <span className="text-xs text-gray-500 dark:text-gray-400 font-medium">{percentage.toFixed(1)}%</span>
                      </div>
                    </div>
                  );
                })}
              </div>
            )}
          </div>

          {/* Top Products */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center gap-2 mb-6">
              <Package className="w-5 h-5 text-blue-600 dark:text-blue-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Produtos Mais Vendidos</h3>
            </div>
            {topProducts.length === 0 ? (
              <div className="h-48 flex flex-col items-center justify-center text-gray-400 dark:text-gray-500">
                <Package className="w-10 h-10 mb-2 opacity-50" />
                <p className="text-sm">Sem dados de produtos</p>
              </div>
            ) : (
              <div className="space-y-3">
                {topProducts.slice(0, 5).map((product, index) => (
                  <div
                    key={product.id}
                    className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                  >
                    <span className={`w-7 h-7 flex items-center justify-center text-sm font-bold rounded-lg ${
                      index === 0 ? 'bg-yellow-100 dark:bg-yellow-900/50 text-yellow-700 dark:text-yellow-400' :
                      index === 1 ? 'bg-gray-100 dark:bg-gray-700 text-gray-600 dark:text-gray-300' :
                      index === 2 ? 'bg-orange-100 dark:bg-orange-900/50 text-orange-700 dark:text-orange-400' :
                      'bg-blue-50 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400'
                    }`}>
                      {index + 1}
                    </span>
                    <div className="flex-1 min-w-0">
                      <p className="font-medium text-gray-900 dark:text-white text-sm truncate">{product.name}</p>
                      <p className="text-xs text-gray-400 dark:text-gray-500">{product.quantity} un.</p>
                    </div>
                    <span className="font-bold text-green-600 dark:text-green-400 text-sm">{formatCurrency(product.revenue)}</span>
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* Top Customers */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center gap-2 mb-6">
              <Users className="w-5 h-5 text-purple-600 dark:text-purple-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Melhores Clientes</h3>
            </div>
            {topCustomers.length === 0 ? (
              <div className="h-48 flex flex-col items-center justify-center text-gray-400 dark:text-gray-500">
                <Users className="w-10 h-10 mb-2 opacity-50" />
                <p className="text-sm">Sem dados de clientes</p>
              </div>
            ) : (
              <div className="space-y-3">
                {topCustomers.slice(0, 5).map((customer, index) => (
                  <div
                    key={customer.id}
                    className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                  >
                    <div className={`w-8 h-8 flex items-center justify-center text-sm font-bold rounded-full ${
                      index === 0 ? 'bg-gradient-to-br from-yellow-400 to-orange-500 text-white' :
                      index === 1 ? 'bg-gradient-to-br from-gray-300 to-gray-400 text-white' :
                      index === 2 ? 'bg-gradient-to-br from-orange-300 to-orange-400 text-white' :
                      'bg-purple-100 dark:bg-purple-900/50 text-purple-600 dark:text-purple-400'
                    }`}>
                      {customer.name.charAt(0).toUpperCase()}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-medium text-gray-900 dark:text-white text-sm truncate">{customer.name}</p>
                      <p className="text-xs text-gray-400 dark:text-gray-500">{customer.purchases} compras</p>
                    </div>
                    <span className="font-bold text-green-600 dark:text-green-400 text-sm">{formatCurrency(customer.totalSpent)}</span>
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>

        {/* Bottom Stats */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {/* Stock Overview */}
          <div className="bg-gradient-to-br from-blue-600 to-blue-700 rounded-2xl shadow-lg p-6 text-white">
            <div className="flex items-center gap-2 mb-4">
              <Package className="w-5 h-5" />
              <h3 className="text-lg font-semibold">Visão do Estoque</h3>
            </div>
            <div className="space-y-4">
              <div className="flex justify-between items-center">
                <span className="text-blue-100">Total de Produtos</span>
                <span className="text-2xl font-bold">{formatNumber(productStats.total)}</span>
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div className="bg-white/10 rounded-xl p-3">
                  <p className="text-blue-100 text-xs">Estoque Baixo</p>
                  <p className="text-xl font-bold text-yellow-300">{formatNumber(productStats.lowStock)}</p>
                </div>
                <div className="bg-white/10 rounded-xl p-3">
                  <p className="text-blue-100 text-xs">Sem Estoque</p>
                  <p className="text-xl font-bold text-red-300">{formatNumber(productStats.outOfStock)}</p>
                </div>
              </div>
              <div className="pt-3 border-t border-white/20">
                <p className="text-blue-100 text-xs">Valor em Estoque</p>
                <p className="text-2xl font-bold">{formatCurrency(productStats.totalValue)}</p>
              </div>
            </div>
          </div>

          {/* Customers Overview */}
          <div className="bg-gradient-to-br from-purple-600 to-violet-700 rounded-2xl shadow-lg p-6 text-white">
            <div className="flex items-center gap-2 mb-4">
              <Users className="w-5 h-5" />
              <h3 className="text-lg font-semibold">Visão de Clientes</h3>
            </div>
            <div className="space-y-4">
              <div className="flex justify-between items-center">
                <span className="text-purple-100">Total de Clientes</span>
                <span className="text-2xl font-bold">{formatNumber(customerStats.total)}</span>
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div className="bg-white/10 rounded-xl p-3">
                  <p className="text-purple-100 text-xs">Com Compras</p>
                  <p className="text-xl font-bold text-green-300">{formatNumber(customerStats.withPurchases)}</p>
                </div>
                <div className="bg-white/10 rounded-xl p-3">
                  <p className="text-purple-100 text-xs">Taxa Conversão</p>
                  <p className="text-xl font-bold">
                    {customerStats.total > 0
                      ? `${((customerStats.withPurchases / customerStats.total) * 100).toFixed(0)}%`
                      : '0%'}
                  </p>
                </div>
              </div>
              <div className="pt-3 border-t border-white/20">
                <p className="text-purple-100 text-xs">Crédito Total</p>
                <p className="text-2xl font-bold">{formatCurrency(customerStats.totalCredit)}</p>
              </div>
            </div>
          </div>

          {/* Quick Actions */}
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg dark:shadow-none p-6">
            <div className="flex items-center gap-2 mb-4">
              <BarChart3 className="w-5 h-5 text-green-600 dark:text-green-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Ações Rápidas</h3>
            </div>
            <div className="space-y-3">
              <a
                href="/pdv"
                className="flex items-center justify-center gap-2 w-full p-3 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-xl hover:from-blue-700 hover:to-blue-800 transition-all shadow-lg shadow-blue-200 dark:shadow-none font-medium"
              >
                <ShoppingCart className="w-5 h-5" />
                Abrir PDV
              </a>
              <a
                href="/vendas"
                className="flex items-center justify-center gap-2 w-full p-3 bg-gradient-to-r from-green-600 to-emerald-600 text-white rounded-xl hover:from-green-700 hover:to-emerald-700 transition-all shadow-lg shadow-green-200 dark:shadow-none font-medium"
              >
                <Receipt className="w-5 h-5" />
                Ver Vendas
              </a>
              <a
                href="/produtos"
                className="flex items-center justify-center gap-2 w-full p-3 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-200 rounded-xl hover:bg-gray-200 dark:hover:bg-gray-600 transition-colors font-medium"
              >
                <Package className="w-5 h-5" />
                Gerenciar Produtos
              </a>
              <a
                href="/clientes"
                className="flex items-center justify-center gap-2 w-full p-3 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-200 rounded-xl hover:bg-gray-200 dark:hover:bg-gray-600 transition-colors font-medium"
              >
                <Users className="w-5 h-5" />
                Gerenciar Clientes
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
