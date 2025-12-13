/**
 * Página de Gestão de Caixa
 *
 * Permite abertura, fechamento, sangria e suprimento de caixa.
 */

'use client';

import { useState, useEffect } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Wallet,
  ArrowDownCircle,
  ArrowUpCircle,
  Clock,
  DollarSign,
  TrendingUp,
  TrendingDown,
  Calculator,
  History,
  Lock,
  Unlock,
  AlertCircle,
  CheckCircle,
  XCircle,
  Plus,
  Minus,
  RefreshCw,
  Receipt,
} from 'lucide-react';
import { CashRegister, CashMovement } from '@/lib/types';

interface CashRegisterWithSummary extends CashRegister {
  user_name?: string;
  movements?: CashMovement[];
  total_sales: number;
  total_withdrawals: number;
  total_supplies: number;
  sales_count: number;
  expected_balance: number;
}

export default function CaixaPage() {
  const queryClient = useQueryClient();
  const [userId] = useState('admin-001'); // TODO: Get from auth context

  // Modal states
  const [showOpenModal, setShowOpenModal] = useState(false);
  const [showCloseModal, setShowCloseModal] = useState(false);
  const [showMovementModal, setShowMovementModal] = useState<'withdrawal' | 'supply' | null>(null);

  // Form states
  const [openingBalance, setOpeningBalance] = useState('');
  const [closingBalance, setClosingBalance] = useState('');
  const [movementAmount, setMovementAmount] = useState('');
  const [movementDescription, setMovementDescription] = useState('');
  const [notes, setNotes] = useState('');

  // Fetch current open cash register
  const { data: currentCashRegister, isLoading, refetch } = useQuery({
    queryKey: ['current-cash-register', userId],
    queryFn: async () => {
      const res = await fetch(`/api/caixa?current=true&user_id=${userId}`);
      const data = await res.json();
      return data.data as CashRegisterWithSummary | null;
    },
    refetchInterval: 30000, // Refresh every 30s
  });

  // Fetch cash register history
  const { data: historyData } = useQuery({
    queryKey: ['cash-register-history', userId],
    queryFn: async () => {
      const res = await fetch(`/api/caixa?user_id=${userId}&status=closed&limit=10`);
      return res.json();
    },
  });

  // Open cash register mutation
  const openMutation = useMutation({
    mutationFn: async (data: { opening_balance: number; notes?: string }) => {
      const res = await fetch('/api/caixa', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, ...data }),
      });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao abrir caixa');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['current-cash-register'] });
      setShowOpenModal(false);
      setOpeningBalance('');
      setNotes('');
    },
  });

  // Close cash register mutation
  const closeMutation = useMutation({
    mutationFn: async (data: { closing_balance: number; notes?: string }) => {
      const res = await fetch(`/api/caixa/${currentCashRegister?.id}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, ...data }),
      });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao fechar caixa');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['current-cash-register'] });
      queryClient.invalidateQueries({ queryKey: ['cash-register-history'] });
      setShowCloseModal(false);
      setClosingBalance('');
      setNotes('');
    },
  });

  // Add movement mutation
  const movementMutation = useMutation({
    mutationFn: async (data: { type: 'withdrawal' | 'supply'; amount: number; description?: string }) => {
      const res = await fetch(`/api/caixa/${currentCashRegister?.id}/movimentacoes`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, ...data }),
      });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao registrar movimentação');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['current-cash-register'] });
      setShowMovementModal(null);
      setMovementAmount('');
      setMovementDescription('');
    },
  });

  // Format helpers
  const formatCurrency = (cents: number) => {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL',
    }).format(cents / 100);
  };

  const formatDateTime = (dateStr: string) => {
    return new Date(dateStr).toLocaleString('pt-BR');
  };

  const formatTime = (dateStr: string) => {
    return new Date(dateStr).toLocaleTimeString('pt-BR', { hour: '2-digit', minute: '2-digit' });
  };

  const parseCurrency = (value: string): number => {
    const cleaned = value.replace(/\D/g, '');
    return parseInt(cleaned) || 0;
  };

  const handleCurrencyInput = (value: string, setter: (v: string) => void) => {
    const cents = parseCurrency(value);
    setter(formatCurrency(cents));
  };

  // Movement type labels and icons
  const movementTypeConfig: Record<string, { label: string; icon: React.ReactNode; color: string }> = {
    opening: { label: 'Abertura', icon: <Unlock className="w-4 h-4" />, color: 'text-blue-600 bg-blue-100 dark:text-blue-400 dark:bg-blue-900/30' },
    sale: { label: 'Venda', icon: <Receipt className="w-4 h-4" />, color: 'text-green-600 bg-green-100 dark:text-green-400 dark:bg-green-900/30' },
    supply: { label: 'Suprimento', icon: <ArrowDownCircle className="w-4 h-4" />, color: 'text-purple-600 bg-purple-100 dark:text-purple-400 dark:bg-purple-900/30' },
    withdrawal: { label: 'Sangria', icon: <ArrowUpCircle className="w-4 h-4" />, color: 'text-orange-600 bg-orange-100 dark:text-orange-400 dark:bg-orange-900/30' },
    closing: { label: 'Fechamento', icon: <Lock className="w-4 h-4" />, color: 'text-red-600 bg-red-100 dark:text-red-400 dark:bg-red-900/30' },
  };

  const history = historyData?.data || [];

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 dark:from-gray-900 dark:to-gray-800 p-6">
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 mb-8">
          <div>
            <h1 className="text-3xl font-bold bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
              Gestão de Caixa
            </h1>
            <p className="text-gray-500 dark:text-gray-400 mt-1">Abertura, fechamento e movimentações</p>
          </div>

          <button
            onClick={() => refetch()}
            className="flex items-center gap-2 px-4 py-2 text-gray-600 dark:text-gray-300 hover:bg-white dark:hover:bg-gray-800 rounded-xl transition-colors"
          >
            <RefreshCw className="w-4 h-4" />
            Atualizar
          </button>
        </div>

        {isLoading ? (
          <div className="flex items-center justify-center h-64">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div>
          </div>
        ) : !currentCashRegister ? (
          /* Cash Register Closed State */
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-8 text-center">
            <div className="w-20 h-20 mx-auto mb-6 bg-gray-100 dark:bg-gray-700 rounded-full flex items-center justify-center">
              <Lock className="w-10 h-10 text-gray-400 dark:text-gray-500" />
            </div>
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">Caixa Fechado</h2>
            <p className="text-gray-500 dark:text-gray-400 mb-6">
              Abra o caixa para começar a registrar vendas
            </p>
            <button
              onClick={() => setShowOpenModal(true)}
              className="inline-flex items-center gap-2 px-6 py-3 bg-gradient-to-r from-green-600 to-emerald-600 text-white rounded-xl hover:from-green-700 hover:to-emerald-700 transition-all shadow-lg font-medium"
            >
              <Unlock className="w-5 h-5" />
              Abrir Caixa
            </button>
          </div>
        ) : (
          /* Cash Register Open State */
          <>
            {/* Status Card */}
            <div className="bg-gradient-to-r from-green-600 to-emerald-600 rounded-2xl shadow-lg p-6 mb-6 text-white">
              <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
                <div className="flex items-center gap-4">
                  <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
                    <Wallet className="w-8 h-8" />
                  </div>
                  <div>
                    <div className="flex items-center gap-2">
                      <span className="w-2 h-2 bg-green-300 rounded-full animate-pulse"></span>
                      <span className="text-green-100 text-sm font-medium">Caixa Aberto</span>
                    </div>
                    <p className="text-2xl font-bold mt-1">
                      {formatCurrency(currentCashRegister.expected_balance)}
                    </p>
                    <p className="text-green-100 text-sm">Saldo esperado</p>
                  </div>
                </div>

                <div className="flex flex-wrap gap-3">
                  <button
                    onClick={() => setShowMovementModal('supply')}
                    className="flex items-center gap-2 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl transition-colors"
                  >
                    <Plus className="w-4 h-4" />
                    Suprimento
                  </button>
                  <button
                    onClick={() => setShowMovementModal('withdrawal')}
                    className="flex items-center gap-2 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl transition-colors"
                  >
                    <Minus className="w-4 h-4" />
                    Sangria
                  </button>
                  <button
                    onClick={() => setShowCloseModal(true)}
                    className="flex items-center gap-2 px-4 py-2 bg-red-500 hover:bg-red-600 rounded-xl transition-colors"
                  >
                    <Lock className="w-4 h-4" />
                    Fechar Caixa
                  </button>
                </div>
              </div>
            </div>

            {/* Stats Grid */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
              <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm">
                <div className="flex items-center gap-2 text-blue-600 dark:text-blue-400 mb-2">
                  <DollarSign className="w-4 h-4" />
                  <span className="text-sm font-medium">Abertura</span>
                </div>
                <p className="text-xl font-bold text-gray-900 dark:text-white">
                  {formatCurrency(currentCashRegister.opening_balance)}
                </p>
                <p className="text-xs text-gray-500 dark:text-gray-400">
                  {formatTime(currentCashRegister.opened_at)}
                </p>
              </div>

              <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm">
                <div className="flex items-center gap-2 text-green-600 dark:text-green-400 mb-2">
                  <TrendingUp className="w-4 h-4" />
                  <span className="text-sm font-medium">Vendas</span>
                </div>
                <p className="text-xl font-bold text-gray-900 dark:text-white">
                  {formatCurrency(currentCashRegister.total_sales)}
                </p>
                <p className="text-xs text-gray-500 dark:text-gray-400">
                  {currentCashRegister.sales_count} vendas
                </p>
              </div>

              <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm">
                <div className="flex items-center gap-2 text-purple-600 dark:text-purple-400 mb-2">
                  <ArrowDownCircle className="w-4 h-4" />
                  <span className="text-sm font-medium">Suprimentos</span>
                </div>
                <p className="text-xl font-bold text-gray-900 dark:text-white">
                  {formatCurrency(currentCashRegister.total_supplies)}
                </p>
              </div>

              <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm">
                <div className="flex items-center gap-2 text-orange-600 dark:text-orange-400 mb-2">
                  <ArrowUpCircle className="w-4 h-4" />
                  <span className="text-sm font-medium">Sangrias</span>
                </div>
                <p className="text-xl font-bold text-gray-900 dark:text-white">
                  {formatCurrency(currentCashRegister.total_withdrawals)}
                </p>
              </div>
            </div>

            {/* Movements List */}
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6 mb-6">
              <div className="flex items-center gap-2 mb-6">
                <History className="w-5 h-5 text-blue-600 dark:text-blue-400" />
                <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                  Movimentações do Dia
                </h3>
              </div>

              {currentCashRegister.movements && currentCashRegister.movements.length > 0 ? (
                <div className="space-y-3">
                  {currentCashRegister.movements.map((movement) => {
                    const config = movementTypeConfig[movement.type] || movementTypeConfig.opening;
                    const isNegative = movement.type === 'withdrawal';

                    return (
                      <div
                        key={movement.id}
                        className="flex items-center justify-between p-4 bg-gray-50 dark:bg-gray-700/50 rounded-xl"
                      >
                        <div className="flex items-center gap-3">
                          <div className={`p-2 rounded-lg ${config.color}`}>
                            {config.icon}
                          </div>
                          <div>
                            <p className="font-medium text-gray-900 dark:text-white">
                              {config.label}
                            </p>
                            <p className="text-sm text-gray-500 dark:text-gray-400">
                              {movement.description || config.label}
                            </p>
                          </div>
                        </div>
                        <div className="text-right">
                          <p className={`font-bold ${
                            isNegative
                              ? 'text-red-600 dark:text-red-400'
                              : 'text-green-600 dark:text-green-400'
                          }`}>
                            {isNegative ? '-' : '+'}{formatCurrency(movement.amount)}
                          </p>
                          <p className="text-xs text-gray-500 dark:text-gray-400">
                            {formatTime(movement.created_at)}
                          </p>
                        </div>
                      </div>
                    );
                  })}
                </div>
              ) : (
                <div className="text-center py-8 text-gray-500 dark:text-gray-400">
                  <History className="w-12 h-12 mx-auto mb-2 opacity-50" />
                  <p>Nenhuma movimentação registrada</p>
                </div>
              )}
            </div>
          </>
        )}

        {/* History Section */}
        {history.length > 0 && (
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-lg p-6">
            <div className="flex items-center gap-2 mb-6">
              <Clock className="w-5 h-5 text-purple-600 dark:text-purple-400" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                Histórico de Caixas
              </h3>
            </div>

            <div className="overflow-x-auto">
              <table className="w-full">
                <thead>
                  <tr className="text-left text-sm text-gray-500 dark:text-gray-400">
                    <th className="pb-3 font-medium">Data</th>
                    <th className="pb-3 font-medium">Abertura</th>
                    <th className="pb-3 font-medium">Fechamento</th>
                    <th className="pb-3 font-medium">Diferença</th>
                    <th className="pb-3 font-medium">Status</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-100 dark:divide-gray-700">
                  {history.map((register: CashRegisterWithSummary) => (
                    <tr key={register.id} className="text-sm">
                      <td className="py-3 text-gray-900 dark:text-white">
                        {formatDateTime(register.opened_at)}
                      </td>
                      <td className="py-3 text-gray-600 dark:text-gray-300">
                        {formatCurrency(register.opening_balance)}
                      </td>
                      <td className="py-3 text-gray-600 dark:text-gray-300">
                        {register.closing_balance ? formatCurrency(register.closing_balance) : '-'}
                      </td>
                      <td className="py-3">
                        {register.difference !== null && register.difference !== undefined ? (
                          <span className={`font-medium ${
                            register.difference === 0
                              ? 'text-green-600 dark:text-green-400'
                              : register.difference > 0
                              ? 'text-blue-600 dark:text-blue-400'
                              : 'text-red-600 dark:text-red-400'
                          }`}>
                            {register.difference === 0 ? 'Correto' :
                             register.difference > 0 ? `+${formatCurrency(register.difference)}` :
                             formatCurrency(register.difference)}
                          </span>
                        ) : '-'}
                      </td>
                      <td className="py-3">
                        <span className={`inline-flex items-center gap-1 px-2 py-1 rounded-full text-xs font-medium ${
                          register.status === 'closed'
                            ? 'bg-gray-100 text-gray-600 dark:bg-gray-700 dark:text-gray-300'
                            : 'bg-green-100 text-green-600 dark:bg-green-900/30 dark:text-green-400'
                        }`}>
                          {register.status === 'closed' ? (
                            <>
                              <CheckCircle className="w-3 h-3" />
                              Fechado
                            </>
                          ) : (
                            <>
                              <AlertCircle className="w-3 h-3" />
                              Aberto
                            </>
                          )}
                        </span>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        )}

        {/* Open Cash Register Modal */}
        {showOpenModal && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-md p-6">
              <div className="flex items-center gap-3 mb-6">
                <div className="p-3 bg-green-100 dark:bg-green-900/30 rounded-xl">
                  <Unlock className="w-6 h-6 text-green-600 dark:text-green-400" />
                </div>
                <div>
                  <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                    Abrir Caixa
                  </h3>
                  <p className="text-sm text-gray-500 dark:text-gray-400">
                    Informe o valor inicial do caixa
                  </p>
                </div>
              </div>

              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Valor de Abertura *
                  </label>
                  <input
                    type="text"
                    value={openingBalance}
                    onChange={(e) => handleCurrencyInput(e.target.value, setOpeningBalance)}
                    placeholder="R$ 0,00"
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl text-lg font-medium focus:ring-2 focus:ring-green-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                    autoFocus
                  />
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Observações
                  </label>
                  <textarea
                    value={notes}
                    onChange={(e) => setNotes(e.target.value)}
                    placeholder="Observações opcionais..."
                    rows={3}
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                  />
                </div>
              </div>

              {openMutation.error && (
                <div className="mt-4 p-3 bg-red-50 dark:bg-red-900/30 text-red-600 dark:text-red-400 rounded-lg text-sm flex items-center gap-2">
                  <XCircle className="w-4 h-4" />
                  {(openMutation.error as Error).message}
                </div>
              )}

              <div className="flex gap-3 mt-6">
                <button
                  onClick={() => {
                    setShowOpenModal(false);
                    setOpeningBalance('');
                    setNotes('');
                  }}
                  className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={() => {
                    const cents = parseCurrency(openingBalance);
                    openMutation.mutate({ opening_balance: cents, notes: notes || undefined });
                  }}
                  disabled={openMutation.isPending}
                  className="flex-1 px-4 py-3 bg-green-600 text-white rounded-xl hover:bg-green-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
                >
                  {openMutation.isPending ? (
                    <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  ) : (
                    <>
                      <CheckCircle className="w-5 h-5" />
                      Abrir Caixa
                    </>
                  )}
                </button>
              </div>
            </div>
          </div>
        )}

        {/* Close Cash Register Modal */}
        {showCloseModal && currentCashRegister && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-md p-6">
              <div className="flex items-center gap-3 mb-6">
                <div className="p-3 bg-red-100 dark:bg-red-900/30 rounded-xl">
                  <Lock className="w-6 h-6 text-red-600 dark:text-red-400" />
                </div>
                <div>
                  <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                    Fechar Caixa
                  </h3>
                  <p className="text-sm text-gray-500 dark:text-gray-400">
                    Informe o valor em caixa para fechamento
                  </p>
                </div>
              </div>

              {/* Expected Balance Info */}
              <div className="bg-blue-50 dark:bg-blue-900/30 rounded-xl p-4 mb-4">
                <p className="text-sm text-blue-600 dark:text-blue-400 mb-1">Saldo Esperado</p>
                <p className="text-2xl font-bold text-blue-700 dark:text-blue-300">
                  {formatCurrency(currentCashRegister.expected_balance)}
                </p>
              </div>

              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Valor em Caixa *
                  </label>
                  <input
                    type="text"
                    value={closingBalance}
                    onChange={(e) => handleCurrencyInput(e.target.value, setClosingBalance)}
                    placeholder="R$ 0,00"
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl text-lg font-medium focus:ring-2 focus:ring-red-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                    autoFocus
                  />
                </div>

                {/* Difference Preview */}
                {closingBalance && (
                  <div className={`rounded-xl p-4 ${
                    parseCurrency(closingBalance) === currentCashRegister.expected_balance
                      ? 'bg-green-50 dark:bg-green-900/30'
                      : parseCurrency(closingBalance) > currentCashRegister.expected_balance
                      ? 'bg-blue-50 dark:bg-blue-900/30'
                      : 'bg-red-50 dark:bg-red-900/30'
                  }`}>
                    <p className={`text-sm mb-1 ${
                      parseCurrency(closingBalance) === currentCashRegister.expected_balance
                        ? 'text-green-600 dark:text-green-400'
                        : parseCurrency(closingBalance) > currentCashRegister.expected_balance
                        ? 'text-blue-600 dark:text-blue-400'
                        : 'text-red-600 dark:text-red-400'
                    }`}>
                      {parseCurrency(closingBalance) === currentCashRegister.expected_balance
                        ? 'Caixa correto!'
                        : parseCurrency(closingBalance) > currentCashRegister.expected_balance
                        ? 'Sobra'
                        : 'Falta'}
                    </p>
                    <p className={`text-xl font-bold ${
                      parseCurrency(closingBalance) === currentCashRegister.expected_balance
                        ? 'text-green-700 dark:text-green-300'
                        : parseCurrency(closingBalance) > currentCashRegister.expected_balance
                        ? 'text-blue-700 dark:text-blue-300'
                        : 'text-red-700 dark:text-red-300'
                    }`}>
                      {formatCurrency(Math.abs(parseCurrency(closingBalance) - currentCashRegister.expected_balance))}
                    </p>
                  </div>
                )}

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Observações
                  </label>
                  <textarea
                    value={notes}
                    onChange={(e) => setNotes(e.target.value)}
                    placeholder="Observações do fechamento..."
                    rows={3}
                    className="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl focus:ring-2 focus:ring-red-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
                  />
                </div>
              </div>

              {closeMutation.error && (
                <div className="mt-4 p-3 bg-red-50 dark:bg-red-900/30 text-red-600 dark:text-red-400 rounded-lg text-sm flex items-center gap-2">
                  <XCircle className="w-4 h-4" />
                  {(closeMutation.error as Error).message}
                </div>
              )}

              <div className="flex gap-3 mt-6">
                <button
                  onClick={() => {
                    setShowCloseModal(false);
                    setClosingBalance('');
                    setNotes('');
                  }}
                  className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={() => {
                    const cents = parseCurrency(closingBalance);
                    closeMutation.mutate({ closing_balance: cents, notes: notes || undefined });
                  }}
                  disabled={closeMutation.isPending || !closingBalance}
                  className="flex-1 px-4 py-3 bg-red-600 text-white rounded-xl hover:bg-red-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
                >
                  {closeMutation.isPending ? (
                    <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  ) : (
                    <>
                      <Lock className="w-5 h-5" />
                      Fechar Caixa
                    </>
                  )}
                </button>
              </div>
            </div>
          </div>
        )}

        {/* Movement Modal */}
        {showMovementModal && currentCashRegister && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-md p-6">
              <div className="flex items-center gap-3 mb-6">
                <div className={`p-3 rounded-xl ${
                  showMovementModal === 'supply'
                    ? 'bg-purple-100 dark:bg-purple-900/30'
                    : 'bg-orange-100 dark:bg-orange-900/30'
                }`}>
                  {showMovementModal === 'supply' ? (
                    <ArrowDownCircle className="w-6 h-6 text-purple-600 dark:text-purple-400" />
                  ) : (
                    <ArrowUpCircle className="w-6 h-6 text-orange-600 dark:text-orange-400" />
                  )}
                </div>
                <div>
                  <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                    {showMovementModal === 'supply' ? 'Suprimento' : 'Sangria'}
                  </h3>
                  <p className="text-sm text-gray-500 dark:text-gray-400">
                    {showMovementModal === 'supply'
                      ? 'Adicionar dinheiro ao caixa'
                      : 'Retirar dinheiro do caixa'}
                  </p>
                </div>
              </div>

              {/* Current Balance Info */}
              <div className="bg-gray-50 dark:bg-gray-700/50 rounded-xl p-4 mb-4">
                <p className="text-sm text-gray-600 dark:text-gray-400 mb-1">Saldo Atual</p>
                <p className="text-xl font-bold text-gray-900 dark:text-white">
                  {formatCurrency(currentCashRegister.expected_balance)}
                </p>
              </div>

              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Valor *
                  </label>
                  <input
                    type="text"
                    value={movementAmount}
                    onChange={(e) => handleCurrencyInput(e.target.value, setMovementAmount)}
                    placeholder="R$ 0,00"
                    className={`w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-xl text-lg font-medium focus:ring-2 focus:border-transparent dark:bg-gray-700 dark:text-white ${
                      showMovementModal === 'supply'
                        ? 'focus:ring-purple-500'
                        : 'focus:ring-orange-500'
                    }`}
                    autoFocus
                  />
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                    Descrição
                  </label>
                  <input
                    type="text"
                    value={movementDescription}
                    onChange={(e) => setMovementDescription(e.target.value)}
                    placeholder={showMovementModal === 'supply' ? 'Ex: Troco adicional' : 'Ex: Pagamento de fornecedor'}
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
                    setMovementAmount('');
                    setMovementDescription('');
                  }}
                  className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={() => {
                    const cents = parseCurrency(movementAmount);
                    movementMutation.mutate({
                      type: showMovementModal,
                      amount: cents,
                      description: movementDescription || undefined,
                    });
                  }}
                  disabled={movementMutation.isPending || !movementAmount}
                  className={`flex-1 px-4 py-3 text-white rounded-xl transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2 ${
                    showMovementModal === 'supply'
                      ? 'bg-purple-600 hover:bg-purple-700'
                      : 'bg-orange-600 hover:bg-orange-700'
                  }`}
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
