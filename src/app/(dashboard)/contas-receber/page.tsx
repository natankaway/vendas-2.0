/**
 * Página de Contas a Receber
 *
 * Lista vendas pendentes (pay_later) e permite registrar pagamentos.
 */

'use client';

import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  FileText,
  DollarSign,
  Clock,
  AlertTriangle,
  Users,
  Search,
  ChevronDown,
  ChevronUp,
  CreditCard,
  Banknote,
  Smartphone,
  CheckCircle,
  XCircle,
  Receipt,
  Calendar,
  Phone,
  User,
  Plus,
  WifiOff,
} from 'lucide-react';
import { fetchAccountsReceivable } from '@/lib/services/offline-data-service';
import { useConnectionStore } from '@/lib/stores/connection-store';

interface PaymentRecord {
  id: string;
  sale_id: string;
  amount: number;
  payment_method: string;
  notes: string | null;
  received_by: string;
  received_by_name?: string;
  created_at: string;
}

interface AccountReceivable {
  id: string;
  receipt_number: string;
  customer_id: string;
  customer_name: string;
  customer_phone: string | null;
  customer_credit_limit: number;
  total: number;
  total_paid: number;
  remaining_balance: number;
  days_overdue: number;
  is_paid: boolean;
  payments: PaymentRecord[];
  created_at: string;
  items: Array<{
    product_name: string;
    quantity: number;
    total: number;
  }>;
}

interface Summary {
  total_receivable: number;
  total_overdue: number;
  accounts_count: number;
  overdue_count: number;
  by_customer: Array<{
    customer: { id: string; name: string; phone?: string };
    total_debt: number;
    sales_count: number;
  }>;
}

const paymentMethodLabels: Record<string, string> = {
  cash: 'Dinheiro',
  credit_card: 'Cartão de Crédito',
  debit_card: 'Cartão de Débito',
  pix: 'PIX',
  bank_transfer: 'Transferência',
  other: 'Outro',
};

const paymentMethodIcons: Record<string, React.ReactNode> = {
  cash: <Banknote className="w-4 h-4" />,
  credit_card: <CreditCard className="w-4 h-4" />,
  debit_card: <CreditCard className="w-4 h-4" />,
  pix: <Smartphone className="w-4 h-4" />,
  bank_transfer: <Receipt className="w-4 h-4" />,
  other: <DollarSign className="w-4 h-4" />,
};

export default function ContasReceberPage() {
  const queryClient = useQueryClient();
  const { status: connectionStatus } = useConnectionStore();
  const isOffline = connectionStatus === 'offline';
  const [userId] = useState('admin-001'); // TODO: Get from auth context
  const [searchQuery, setSearchQuery] = useState('');
  const [expandedAccounts, setExpandedAccounts] = useState<Set<string>>(new Set());
  const [showPaymentModal, setShowPaymentModal] = useState<AccountReceivable | null>(null);

  // Payment form states
  const [paymentAmount, setPaymentAmount] = useState('');
  const [paymentMethod, setPaymentMethod] = useState('cash');
  const [paymentNotes, setPaymentNotes] = useState('');

  // Fetch summary - com suporte offline
  const { data: summaryData } = useQuery({
    queryKey: ['accounts-receivable-summary', connectionStatus],
    queryFn: () => fetchAccountsReceivable({ summary: true }),
  });

  // Fetch accounts - com suporte offline
  const { data: accountsData, isLoading } = useQuery({
    queryKey: ['accounts-receivable', connectionStatus],
    queryFn: () => fetchAccountsReceivable({ status: 'pending', limit: 100 }),
  });

  // Detecta se dados vieram do IndexedDB
  const isDataOffline = accountsData?._offline === true || summaryData?._offline === true;
  const showOfflineBanner = isOffline || isDataOffline;

  // Register payment mutation
  const paymentMutation = useMutation({
    mutationFn: async (data: { sale_id: string; amount: number; payment_method: string; notes?: string }) => {
      const res = await fetch(`/api/contas-receber/${data.sale_id}/pagamentos`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ...data, user_id: userId }),
      });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao registrar pagamento');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['accounts-receivable'] });
      queryClient.invalidateQueries({ queryKey: ['accounts-receivable-summary'] });
      setShowPaymentModal(null);
      setPaymentAmount('');
      setPaymentMethod('cash');
      setPaymentNotes('');
    },
  });

  // Extract summary (quando summary: true, data contém o resumo)
  const summary: Summary = (summaryData?.data && !Array.isArray(summaryData.data))
    ? summaryData.data as unknown as Summary
    : {
      total_receivable: 0,
      total_overdue: 0,
      accounts_count: 0,
      overdue_count: 0,
      by_customer: [],
    };

  // Extract accounts (quando não é summary, data é array)
  const accounts: AccountReceivable[] = (accountsData?.data && Array.isArray(accountsData.data))
    ? accountsData.data as unknown as AccountReceivable[]
    : [];

  // Filter accounts by search
  const filteredAccounts = accounts.filter(account =>
    account.customer_name.toLowerCase().includes(searchQuery.toLowerCase()) ||
    account.receipt_number.toLowerCase().includes(searchQuery.toLowerCase())
  );

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

  const formatDateTime = (dateStr: string) => {
    return new Date(dateStr).toLocaleString('pt-BR');
  };

  const parseCurrency = (value: string): number => {
    const cleaned = value.replace(/\D/g, '');
    return parseInt(cleaned) || 0;
  };

  const handleCurrencyInput = (value: string, setter: (v: string) => void) => {
    const cents = parseCurrency(value);
    setter(formatCurrency(cents));
  };

  const toggleExpanded = (id: string) => {
    const newExpanded = new Set(expandedAccounts);
    if (newExpanded.has(id)) {
      newExpanded.delete(id);
    } else {
      newExpanded.add(id);
    }
    setExpandedAccounts(newExpanded);
  };

  const getDaysOverdueColor = (days: number) => {
    if (days <= 7) return 'text-green-600 dark:text-green-400 bg-green-50 dark:bg-green-900/30';
    if (days <= 30) return 'text-yellow-600 dark:text-yellow-400 bg-yellow-50 dark:bg-yellow-900/30';
    if (days <= 60) return 'text-orange-600 dark:text-orange-400 bg-orange-50 dark:bg-orange-900/30';
    return 'text-red-600 dark:text-red-400 bg-red-50 dark:bg-red-900/30';
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 dark:from-gray-900 dark:to-gray-800 p-6">
      <div className="max-w-7xl mx-auto">
        {/* Offline Banner */}
        {showOfflineBanner && (
          <div className="mb-4 p-3 bg-orange-50 dark:bg-orange-900/30 border border-orange-200 dark:border-orange-800 rounded-xl flex items-center gap-2">
            <WifiOff className="w-4 h-4 text-orange-600 dark:text-orange-400" />
            <span className="text-sm text-orange-700 dark:text-orange-300">
              Modo offline - Exibindo dados salvos localmente
            </span>
          </div>
        )}

        {/* Header */}
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 mb-8">
          <div>
            <h1 className="text-3xl font-bold bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
              Contas a Receber
            </h1>
            <p className="text-gray-500 dark:text-gray-400 mt-1">Gerencie pagamentos pendentes</p>
          </div>

          {/* Search */}
          <div className="relative w-full md:w-80">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Buscar por cliente ou recibo..."
              className="w-full pl-10 pr-4 py-2 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-800 dark:text-white"
            />
          </div>
        </div>

        {/* Summary Cards */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6">
            <div className="flex items-center gap-2 text-blue-600 dark:text-blue-400 mb-2">
              <DollarSign className="w-5 h-5" />
              <span className="text-sm font-medium">Total a Receber</span>
            </div>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {formatCurrency(summary.total_receivable)}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-400">
              {summary.accounts_count} conta(s)
            </p>
          </div>

          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6">
            <div className="flex items-center gap-2 text-red-600 dark:text-red-400 mb-2">
              <AlertTriangle className="w-5 h-5" />
              <span className="text-sm font-medium">Em Atraso</span>
            </div>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {formatCurrency(summary.total_overdue)}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-400">
              {summary.overdue_count} conta(s) +30 dias
            </p>
          </div>

          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6">
            <div className="flex items-center gap-2 text-purple-600 dark:text-purple-400 mb-2">
              <Users className="w-5 h-5" />
              <span className="text-sm font-medium">Clientes</span>
            </div>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {summary.by_customer.length}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-400">
              com débitos
            </p>
          </div>

          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6">
            <div className="flex items-center gap-2 text-green-600 dark:text-green-400 mb-2">
              <Clock className="w-5 h-5" />
              <span className="text-sm font-medium">Média</span>
            </div>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {summary.accounts_count > 0
                ? formatCurrency(Math.round(summary.total_receivable / summary.accounts_count))
                : formatCurrency(0)}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-400">
              por conta
            </p>
          </div>
        </div>

        {/* Top Debtors */}
        {summary.by_customer.length > 0 && (
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6 mb-8">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">
              <Users className="w-5 h-5 text-purple-600 dark:text-purple-400" />
              Maiores Devedores
            </h3>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {summary.by_customer.slice(0, 6).map((item) => (
                <div
                  key={item.customer.id}
                  className="flex items-center gap-3 p-3 bg-gray-50 dark:bg-gray-700/50 rounded-xl"
                >
                  <div className="w-10 h-10 bg-gradient-to-br from-purple-500 to-blue-500 rounded-full flex items-center justify-center text-white font-bold">
                    {item.customer.name.charAt(0).toUpperCase()}
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-gray-900 dark:text-white truncate">
                      {item.customer.name}
                    </p>
                    <p className="text-sm text-gray-500 dark:text-gray-400">
                      {item.sales_count} venda(s)
                    </p>
                  </div>
                  <p className="font-bold text-red-600 dark:text-red-400">
                    {formatCurrency(item.total_debt)}
                  </p>
                </div>
              ))}
            </div>
          </div>
        )}

        {/* Accounts List */}
        <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg overflow-hidden">
          <div className="p-6 border-b dark:border-gray-700">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white flex items-center gap-2">
              <FileText className="w-5 h-5 text-blue-600 dark:text-blue-400" />
              Contas Pendentes
            </h3>
          </div>

          {isLoading ? (
            <div className="flex items-center justify-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div>
            </div>
          ) : filteredAccounts.length === 0 ? (
            <div className="flex flex-col items-center justify-center h-64 text-gray-500 dark:text-gray-400">
              <CheckCircle className="w-16 h-16 mb-4 text-green-500 opacity-50" />
              <p className="text-lg font-medium">Nenhuma conta pendente</p>
              <p className="text-sm">Todas as contas estão quitadas!</p>
            </div>
          ) : (
            <div className="divide-y dark:divide-gray-700">
              {filteredAccounts.map((account) => {
                const isExpanded = expandedAccounts.has(account.id);
                const progress = (account.total_paid / account.total) * 100;

                return (
                  <div key={account.id} className="p-4 hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors">
                    <div
                      className="flex flex-col md:flex-row md:items-center gap-4 cursor-pointer"
                      onClick={() => toggleExpanded(account.id)}
                    >
                      {/* Customer Info */}
                      <div className="flex items-center gap-3 flex-1 min-w-0">
                        <div className="w-10 h-10 bg-gradient-to-br from-blue-500 to-purple-500 rounded-full flex items-center justify-center text-white font-bold flex-shrink-0">
                          {account.customer_name.charAt(0).toUpperCase()}
                        </div>
                        <div className="min-w-0">
                          <p className="font-medium text-gray-900 dark:text-white truncate">
                            {account.customer_name}
                          </p>
                          <p className="text-sm text-gray-500 dark:text-gray-400 flex items-center gap-2">
                            <Receipt className="w-3 h-3" />
                            {account.receipt_number}
                            {account.customer_phone && (
                              <>
                                <span className="mx-1">|</span>
                                <Phone className="w-3 h-3" />
                                {account.customer_phone}
                              </>
                            )}
                          </p>
                        </div>
                      </div>

                      {/* Days Overdue Badge */}
                      <div className={`px-3 py-1 rounded-full text-xs font-medium ${getDaysOverdueColor(account.days_overdue)}`}>
                        {account.days_overdue === 0 ? 'Hoje' :
                         account.days_overdue === 1 ? '1 dia' :
                         `${account.days_overdue} dias`}
                      </div>

                      {/* Progress Bar */}
                      <div className="w-32 hidden md:block">
                        <div className="flex items-center justify-between text-xs mb-1">
                          <span className="text-gray-500 dark:text-gray-400">Pago</span>
                          <span className="font-medium text-gray-900 dark:text-white">{progress.toFixed(0)}%</span>
                        </div>
                        <div className="h-2 bg-gray-200 dark:bg-gray-600 rounded-full overflow-hidden">
                          <div
                            className="h-full bg-gradient-to-r from-green-500 to-emerald-500 rounded-full transition-all"
                            style={{ width: `${progress}%` }}
                          />
                        </div>
                      </div>

                      {/* Amount */}
                      <div className="text-right">
                        <p className="text-lg font-bold text-red-600 dark:text-red-400">
                          {formatCurrency(account.remaining_balance)}
                        </p>
                        <p className="text-xs text-gray-500 dark:text-gray-400">
                          de {formatCurrency(account.total)}
                        </p>
                      </div>

                      {/* Expand Icon */}
                      <div className="flex items-center gap-2">
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            setShowPaymentModal(account);
                          }}
                          className="p-2 bg-green-100 dark:bg-green-900/30 text-green-600 dark:text-green-400 rounded-lg hover:bg-green-200 dark:hover:bg-green-900/50 transition-colors"
                          title="Registrar pagamento"
                        >
                          <Plus className="w-4 h-4" />
                        </button>
                        {isExpanded ? (
                          <ChevronUp className="w-5 h-5 text-gray-400" />
                        ) : (
                          <ChevronDown className="w-5 h-5 text-gray-400" />
                        )}
                      </div>
                    </div>

                    {/* Expanded Details */}
                    {isExpanded && (
                      <div className="mt-4 pt-4 border-t dark:border-gray-700">
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                          {/* Items */}
                          <div>
                            <h4 className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                              Itens da Venda
                            </h4>
                            <div className="space-y-2">
                              {account.items?.map((item, index) => (
                                <div
                                  key={index}
                                  className="flex justify-between text-sm p-2 bg-gray-50 dark:bg-gray-700/50 rounded-lg"
                                >
                                  <span className="text-gray-600 dark:text-gray-400">
                                    {item.quantity}x {item.product_name}
                                  </span>
                                  <span className="font-medium text-gray-900 dark:text-white">
                                    {formatCurrency(item.total)}
                                  </span>
                                </div>
                              ))}
                            </div>
                          </div>

                          {/* Payments History */}
                          <div>
                            <h4 className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                              Histórico de Pagamentos
                            </h4>
                            {account.payments.length > 0 ? (
                              <div className="space-y-2">
                                {account.payments.map((payment) => (
                                  <div
                                    key={payment.id}
                                    className="flex items-center justify-between text-sm p-2 bg-green-50 dark:bg-green-900/20 rounded-lg"
                                  >
                                    <div className="flex items-center gap-2">
                                      {paymentMethodIcons[payment.payment_method] || <DollarSign className="w-4 h-4" />}
                                      <div>
                                        <span className="text-gray-700 dark:text-gray-300">
                                          {paymentMethodLabels[payment.payment_method] || payment.payment_method}
                                        </span>
                                        <p className="text-xs text-gray-500 dark:text-gray-400">
                                          {formatDateTime(payment.created_at)}
                                        </p>
                                      </div>
                                    </div>
                                    <span className="font-medium text-green-600 dark:text-green-400">
                                      +{formatCurrency(payment.amount)}
                                    </span>
                                  </div>
                                ))}
                              </div>
                            ) : (
                              <p className="text-sm text-gray-500 dark:text-gray-400 italic">
                                Nenhum pagamento registrado
                              </p>
                            )}
                          </div>
                        </div>

                        {/* Sale Info */}
                        <div className="mt-4 flex items-center gap-4 text-sm text-gray-500 dark:text-gray-400">
                          <div className="flex items-center gap-1">
                            <Calendar className="w-4 h-4" />
                            <span>Venda em {formatDate(account.created_at)}</span>
                          </div>
                          {account.customer_credit_limit > 0 && (
                            <div className="flex items-center gap-1">
                              <DollarSign className="w-4 h-4" />
                              <span>Limite: {formatCurrency(account.customer_credit_limit)}</span>
                            </div>
                          )}
                        </div>
                      </div>
                    )}
                  </div>
                );
              })}
            </div>
          )}
        </div>

        {/* Payment Modal */}
        {showPaymentModal && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-md p-6">
              <div className="flex items-center gap-3 mb-6">
                <div className="p-3 bg-green-100 dark:bg-green-900/30 rounded-xl">
                  <DollarSign className="w-6 h-6 text-green-600 dark:text-green-400" />
                </div>
                <div>
                  <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                    Registrar Pagamento
                  </h3>
                  <p className="text-sm text-gray-500 dark:text-gray-400">
                    {showPaymentModal.customer_name}
                  </p>
                </div>
              </div>

              {/* Remaining Balance Info */}
              <div className="bg-blue-50 dark:bg-blue-900/30 rounded-xl p-4 mb-4">
                <div className="flex justify-between items-center">
                  <div>
                    <p className="text-sm text-blue-600 dark:text-blue-400">Saldo Restante</p>
                    <p className="text-2xl font-bold text-blue-700 dark:text-blue-300">
                      {formatCurrency(showPaymentModal.remaining_balance)}
                    </p>
                  </div>
                  <div className="text-right">
                    <p className="text-sm text-gray-500 dark:text-gray-400">Total da Venda</p>
                    <p className="text-lg font-medium text-gray-700 dark:text-gray-300">
                      {formatCurrency(showPaymentModal.total)}
                    </p>
                  </div>
                </div>
              </div>

              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Valor do Pagamento *
                  </label>
                  <input
                    type="text"
                    value={paymentAmount}
                    onChange={(e) => handleCurrencyInput(e.target.value, setPaymentAmount)}
                    placeholder="R$ 0,00"
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl text-lg font-medium focus:ring-2 focus:ring-green-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                    autoFocus
                  />
                  <button
                    onClick={() => setPaymentAmount(formatCurrency(showPaymentModal.remaining_balance))}
                    className="mt-2 text-sm text-blue-600 dark:text-blue-400 hover:underline"
                  >
                    Quitar total ({formatCurrency(showPaymentModal.remaining_balance)})
                  </button>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Forma de Pagamento *
                  </label>
                  <div className="grid grid-cols-3 gap-2">
                    {Object.entries(paymentMethodLabels).map(([value, label]) => (
                      <button
                        key={value}
                        onClick={() => setPaymentMethod(value)}
                        className={`p-3 rounded-xl border transition-all flex flex-col items-center gap-1 ${
                          paymentMethod === value
                            ? 'border-green-500 bg-green-50 dark:bg-green-900/30 text-green-700 dark:text-green-400'
                            : 'border-gray-200 dark:border-gray-600 hover:border-gray-300 dark:hover:border-gray-500'
                        }`}
                      >
                        {paymentMethodIcons[value]}
                        <span className="text-xs font-medium">{label}</span>
                      </button>
                    ))}
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Observações
                  </label>
                  <input
                    type="text"
                    value={paymentNotes}
                    onChange={(e) => setPaymentNotes(e.target.value)}
                    placeholder="Observações opcionais..."
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                  />
                </div>
              </div>

              {paymentMutation.error && (
                <div className="mt-4 p-3 bg-red-50 dark:bg-red-900/30 text-red-600 dark:text-red-400 rounded-lg text-sm flex items-center gap-2">
                  <XCircle className="w-4 h-4" />
                  {(paymentMutation.error as Error).message}
                </div>
              )}

              <div className="flex gap-3 mt-6">
                <button
                  onClick={() => {
                    setShowPaymentModal(null);
                    setPaymentAmount('');
                    setPaymentMethod('cash');
                    setPaymentNotes('');
                  }}
                  className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={() => {
                    const cents = parseCurrency(paymentAmount);
                    paymentMutation.mutate({
                      sale_id: showPaymentModal.id,
                      amount: cents,
                      payment_method: paymentMethod,
                      notes: paymentNotes || undefined,
                    });
                  }}
                  disabled={paymentMutation.isPending || !paymentAmount || parseCurrency(paymentAmount) <= 0}
                  className="flex-1 px-4 py-3 bg-green-600 text-white rounded-xl hover:bg-green-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
                >
                  {paymentMutation.isPending ? (
                    <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  ) : (
                    <>
                      <CheckCircle className="w-5 h-5" />
                      Registrar
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
