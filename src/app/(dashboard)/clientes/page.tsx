/**
 * Página de Gestão de Clientes
 *
 * CRUD completo de clientes com histórico de compras.
 * Layout responsivo: cards em mobile, tabela em desktop.
 */

'use client';

import { useState, useMemo } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Plus,
  Search,
  Edit,
  Trash2,
  Users,
  X,
  ChevronLeft,
  ChevronRight,
  Phone,
  Mail,
  MapPin,
  ShoppingBag,
  DollarSign,
} from 'lucide-react';

// Tipos
interface Customer {
  id: string;
  name: string;
  email: string | null;
  phone: string | null;
  document: string | null;
  document_type: 'cpf' | 'cnpj' | null;
  address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  notes: string | null;
  credit_limit: number;
  current_balance: number;
  total_purchases: number;
  last_purchase_at: string | null;
  created_at: string;
  updated_at: string;
}

interface CustomerFormData {
  name: string;
  email: string;
  phone: string;
  document: string;
  document_type: 'cpf' | 'cnpj' | '';
  address: string;
  city: string;
  state: string;
  zip_code: string;
  notes: string;
  credit_limit: string;
}

const initialFormData: CustomerFormData = {
  name: '', email: '', phone: '', document: '', document_type: '',
  address: '', city: '', state: '', zip_code: '', notes: '', credit_limit: '0',
};

const STATES = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];

// Formatters
const formatCPF = (value: string): string => {
  const digits = value.replace(/\D/g, '').slice(0, 11);
  return digits.replace(/(\d{3})(\d)/, '$1.$2').replace(/(\d{3})(\d)/, '$1.$2').replace(/(\d{3})(\d{1,2})$/, '$1-$2');
};

const formatCNPJ = (value: string): string => {
  const digits = value.replace(/\D/g, '').slice(0, 14);
  return digits.replace(/(\d{2})(\d)/, '$1.$2').replace(/(\d{3})(\d)/, '$1.$2').replace(/(\d{3})(\d)/, '$1/$2').replace(/(\d{4})(\d{1,2})$/, '$1-$2');
};

const formatPhone = (value: string): string => {
  const digits = value.replace(/\D/g, '').slice(0, 11);
  if (digits.length <= 10) {
    return digits.replace(/(\d{2})(\d)/, '($1) $2').replace(/(\d{4})(\d)/, '$1-$2');
  }
  return digits.replace(/(\d{2})(\d)/, '($1) $2').replace(/(\d{5})(\d)/, '$1-$2');
};

const formatZipCode = (value: string): string => {
  const digits = value.replace(/\D/g, '').slice(0, 8);
  return digits.replace(/(\d{5})(\d)/, '$1-$2');
};

const formatCurrency = (cents: number) => {
  return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(cents / 100);
};

const formatDate = (dateStr: string | null) => {
  if (!dateStr) return '-';
  return new Date(dateStr).toLocaleDateString('pt-BR');
};

export default function ClientesPage() {
  const queryClient = useQueryClient();
  const [search, setSearch] = useState('');
  const [page, setPage] = useState(1);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isDetailOpen, setIsDetailOpen] = useState(false);
  const [editingCustomer, setEditingCustomer] = useState<Customer | null>(null);
  const [selectedCustomer, setSelectedCustomer] = useState<Customer | null>(null);
  const [formData, setFormData] = useState<CustomerFormData>(initialFormData);
  const [formErrors, setFormErrors] = useState<Record<string, string>>({});

  const perPage = 20;

  const { data: customersData, isLoading } = useQuery({
    queryKey: ['customers', search, page],
    queryFn: async () => {
      const params = new URLSearchParams({ page: String(page), limit: String(perPage) });
      if (search) params.append('search', search);
      const res = await fetch(`/api/clientes?${params}`);
      return res.json();
    },
  });

  const customers: Customer[] = customersData?.data || [];
  const totalCustomers = customersData?.total || 0;
  const totalPages = Math.ceil(totalCustomers / perPage);

  const stats = useMemo(() => {
    const total = customers.length;
    const withCredit = customers.filter(c => c.credit_limit > 0).length;
    const totalCredit = customers.reduce((sum, c) => sum + c.credit_limit, 0);
    const totalPurchases = customers.reduce((sum, c) => sum + c.total_purchases, 0);
    return { total, withCredit, totalCredit, totalPurchases };
  }, [customers]);

  const saveMutation = useMutation({
    mutationFn: async (data: CustomerFormData) => {
      const payload = {
        name: data.name,
        email: data.email || null,
        phone: data.phone.replace(/\D/g, '') || null,
        document: data.document.replace(/\D/g, '') || null,
        document_type: data.document_type || null,
        address: data.address || null,
        city: data.city || null,
        state: data.state || null,
        zip_code: data.zip_code.replace(/\D/g, '') || null,
        notes: data.notes || null,
        credit_limit: Math.round(parseFloat(data.credit_limit || '0') * 100),
      };
      const url = editingCustomer ? `/api/clientes/${editingCustomer.id}` : '/api/clientes';
      const method = editingCustomer ? 'PUT' : 'POST';
      const res = await fetch(url, { method, headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(payload) });
      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Erro ao salvar cliente');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['customers'] });
      closeModal();
    },
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch(`/api/clientes/${id}`, { method: 'DELETE' });
      if (!res.ok) throw new Error('Erro ao excluir cliente');
      return res.json();
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['customers'] }),
  });

  const openModal = (customer?: Customer) => {
    if (customer) {
      setEditingCustomer(customer);
      setFormData({
        name: customer.name,
        email: customer.email || '',
        phone: customer.phone ? formatPhone(customer.phone) : '',
        document: customer.document ? (customer.document_type === 'cpf' ? formatCPF(customer.document) : formatCNPJ(customer.document)) : '',
        document_type: customer.document_type || '',
        address: customer.address || '',
        city: customer.city || '',
        state: customer.state || '',
        zip_code: customer.zip_code ? formatZipCode(customer.zip_code) : '',
        notes: customer.notes || '',
        credit_limit: (customer.credit_limit / 100).toFixed(2),
      });
    } else {
      setEditingCustomer(null);
      setFormData(initialFormData);
    }
    setFormErrors({});
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingCustomer(null);
    setFormData(initialFormData);
    setFormErrors({});
  };

  const openDetail = (customer: Customer) => {
    setSelectedCustomer(customer);
    setIsDetailOpen(true);
  };

  const closeDetail = () => {
    setIsDetailOpen(false);
    setSelectedCustomer(null);
  };

  const validateForm = (): boolean => {
    const errors: Record<string, string> = {};
    if (!formData.name.trim()) errors.name = 'Nome é obrigatório';
    if (formData.email && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(formData.email)) errors.email = 'E-mail inválido';
    setFormErrors(errors);
    return Object.keys(errors).length === 0;
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (validateForm()) saveMutation.mutate(formData);
  };

  const handleDelete = (customer: Customer) => {
    if (confirm(`Excluir cliente "${customer.name}"?`)) deleteMutation.mutate(customer.id);
  };

  const handleDocumentChange = (value: string) => {
    const digits = value.replace(/\D/g, '');
    if (digits.length <= 11) {
      setFormData({ ...formData, document: formatCPF(value), document_type: digits.length > 0 ? 'cpf' : '' });
    } else {
      setFormData({ ...formData, document: formatCNPJ(value), document_type: 'cnpj' });
    }
  };

  return (
    <div className="max-w-7xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-4 sm:mb-6">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Clientes</h1>
          <p className="text-sm text-gray-500">Gerencie sua base de clientes</p>
        </div>
        <button
          onClick={() => openModal()}
          className="hidden sm:flex items-center gap-2 bg-blue-600 text-white px-4 py-2 rounded-xl hover:bg-blue-700 transition-colors font-medium"
        >
          <Plus className="w-5 h-5" />
          Novo Cliente
        </button>
      </div>

      {/* Stats Cards */}
      <div className="flex gap-3 overflow-x-auto pb-2 mb-4 sm:mb-6 -mx-4 px-4 sm:mx-0 sm:px-0 sm:grid sm:grid-cols-4">
        <div className="flex-shrink-0 w-36 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-blue-50 rounded-lg">
              <Users className="w-5 h-5 text-blue-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Total</p>
              <p className="text-lg font-bold">{stats.total}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-36 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-green-50 rounded-lg">
              <DollarSign className="w-5 h-5 text-green-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Com Crédito</p>
              <p className="text-lg font-bold">{stats.withCredit}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-40 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-purple-50 rounded-lg">
              <DollarSign className="w-5 h-5 text-purple-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Limite Total</p>
              <p className="text-lg font-bold text-purple-600">{formatCurrency(stats.totalCredit)}</p>
            </div>
          </div>
        </div>
        <div className="flex-shrink-0 w-40 sm:w-auto bg-white rounded-xl shadow-sm p-3 sm:p-4 border border-gray-100">
          <div className="flex items-center gap-2 sm:gap-3">
            <div className="p-2 bg-orange-50 rounded-lg">
              <ShoppingBag className="w-5 h-5 text-orange-600" />
            </div>
            <div>
              <p className="text-xs text-gray-500">Total Compras</p>
              <p className="text-lg font-bold text-orange-600">{formatCurrency(stats.totalPurchases)}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Search */}
      <div className="bg-white rounded-xl shadow-sm p-3 sm:p-4 mb-4 sm:mb-6 border border-gray-100">
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
          <input
            type="text"
            placeholder="Buscar por nome, telefone, CPF/CNPJ..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          />
        </div>
      </div>

      {/* Customers List */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
        {/* Desktop Table */}
        <div className="hidden md:block overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Cliente</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Contato</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Documento</th>
                <th className="px-4 py-3 text-right text-xs font-medium text-gray-500 uppercase">Limite</th>
                <th className="px-4 py-3 text-right text-xs font-medium text-gray-500 uppercase">Compras</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-100">
              {isLoading ? (
                <tr><td colSpan={6} className="px-4 py-12 text-center"><div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div></td></tr>
              ) : customers.length === 0 ? (
                <tr><td colSpan={6} className="px-4 py-12 text-center text-gray-400"><Users className="w-10 h-10 mx-auto mb-2 opacity-50" /><p>Nenhum cliente encontrado</p></td></tr>
              ) : (
                customers.map((customer) => (
                  <tr key={customer.id} className="hover:bg-gray-50 cursor-pointer" onClick={() => openDetail(customer)}>
                    <td className="px-4 py-3">
                      <p className="font-medium text-gray-900 text-sm">{customer.name}</p>
                      {customer.city && customer.state && <p className="text-xs text-gray-400">{customer.city}, {customer.state}</p>}
                    </td>
                    <td className="px-4 py-3">
                      {customer.phone && <p className="text-xs text-gray-600 flex items-center gap-1"><Phone className="w-3 h-3" />{formatPhone(customer.phone)}</p>}
                      {customer.email && <p className="text-xs text-gray-600 flex items-center gap-1 truncate max-w-[180px]"><Mail className="w-3 h-3" />{customer.email}</p>}
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">
                      {customer.document ? (customer.document_type === 'cpf' ? formatCPF(customer.document) : formatCNPJ(customer.document)) : '-'}
                    </td>
                    <td className="px-4 py-3 text-right font-medium text-sm">{formatCurrency(customer.credit_limit)}</td>
                    <td className="px-4 py-3 text-right font-medium text-sm text-green-600">{formatCurrency(customer.total_purchases)}</td>
                    <td className="px-4 py-3" onClick={(e) => e.stopPropagation()}>
                      <div className="flex items-center justify-center gap-1">
                        <button onClick={() => openModal(customer)} className="p-2 text-gray-500 hover:text-blue-600 hover:bg-blue-50 rounded-lg"><Edit className="w-4 h-4" /></button>
                        <button onClick={() => handleDelete(customer)} className="p-2 text-gray-500 hover:text-red-600 hover:bg-red-50 rounded-lg"><Trash2 className="w-4 h-4" /></button>
                      </div>
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>

        {/* Mobile Cards */}
        <div className="md:hidden divide-y divide-gray-100">
          {isLoading ? (
            <div className="p-8 text-center"><div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div></div>
          ) : customers.length === 0 ? (
            <div className="p-8 text-center text-gray-400"><Users className="w-10 h-10 mx-auto mb-2 opacity-50" /><p>Nenhum cliente encontrado</p></div>
          ) : (
            customers.map((customer) => (
              <div key={customer.id} className="p-4 hover:bg-gray-50 active:bg-gray-100" onClick={() => openDetail(customer)}>
                <div className="flex items-start justify-between mb-2">
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-gray-900 truncate">{customer.name}</p>
                    {customer.phone && <p className="text-xs text-gray-500">{formatPhone(customer.phone)}</p>}
                  </div>
                  <p className="text-lg font-bold text-green-600 ml-2">{formatCurrency(customer.total_purchases)}</p>
                </div>
                <div className="flex items-center justify-between">
                  <span className="text-xs text-gray-400">
                    {customer.city && customer.state ? `${customer.city}, ${customer.state}` : customer.email || '-'}
                  </span>
                  <div className="flex gap-1" onClick={(e) => e.stopPropagation()}>
                    <button onClick={() => openModal(customer)} className="p-2 text-blue-600 hover:bg-blue-50 rounded-lg"><Edit className="w-4 h-4" /></button>
                    <button onClick={() => handleDelete(customer)} className="p-2 text-red-600 hover:bg-red-50 rounded-lg"><Trash2 className="w-4 h-4" /></button>
                  </div>
                </div>
              </div>
            ))
          )}
        </div>

        {/* Pagination */}
        {totalPages > 1 && (
          <div className="flex items-center justify-between px-4 py-3 border-t bg-gray-50">
            <p className="text-xs sm:text-sm text-gray-500">{((page - 1) * perPage) + 1}-{Math.min(page * perPage, totalCustomers)} de {totalCustomers}</p>
            <div className="flex items-center gap-1">
              <button onClick={() => setPage(p => Math.max(1, p - 1))} disabled={page === 1} className="p-2 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"><ChevronLeft className="w-4 h-4" /></button>
              <span className="text-sm text-gray-600 px-2">{page}/{totalPages}</span>
              <button onClick={() => setPage(p => Math.min(totalPages, p + 1))} disabled={page === totalPages} className="p-2 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30"><ChevronRight className="w-4 h-4" /></button>
            </div>
          </div>
        )}
      </div>

      {/* Mobile FAB */}
      <button onClick={() => openModal()} className="sm:hidden fixed bottom-20 right-4 w-14 h-14 bg-blue-600 text-white rounded-full shadow-lg flex items-center justify-center z-30 hover:bg-blue-700 active:bg-blue-800">
        <Plus className="w-6 h-6" />
      </button>

      {/* Create/Edit Modal */}
      {isModalOpen && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center z-50">
          <div className="bg-white w-full sm:max-w-2xl sm:rounded-2xl sm:m-4 max-h-[95vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold">{editingCustomer ? 'Editar Cliente' : 'Novo Cliente'}</h2>
              <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-full"><X className="w-5 h-5" /></button>
            </div>

            <form onSubmit={handleSubmit} className="flex-1 overflow-y-auto p-4 space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Nome *</label>
                <input type="text" value={formData.name} onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  className={`w-full px-3 py-2 text-base border rounded-lg focus:ring-2 focus:ring-blue-500 ${formErrors.name ? 'border-red-500' : 'border-gray-200'}`} />
                {formErrors.name && <p className="text-red-500 text-xs mt-1">{formErrors.name}</p>}
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">E-mail</label>
                  <input type="email" value={formData.email} onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                    className={`w-full px-3 py-2 text-base border rounded-lg focus:ring-2 focus:ring-blue-500 ${formErrors.email ? 'border-red-500' : 'border-gray-200'}`} />
                  {formErrors.email && <p className="text-red-500 text-xs mt-1">{formErrors.email}</p>}
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Telefone</label>
                  <input type="text" inputMode="tel" value={formData.phone} onChange={(e) => setFormData({ ...formData, phone: formatPhone(e.target.value) })}
                    className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" placeholder="(00) 00000-0000" />
                </div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">CPF ou CNPJ</label>
                <input type="text" inputMode="numeric" value={formData.document} onChange={(e) => handleDocumentChange(e.target.value)}
                  className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" placeholder="000.000.000-00" />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Endereço</label>
                <input type="text" value={formData.address} onChange={(e) => setFormData({ ...formData, address: e.target.value })}
                  className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" />
              </div>

              <div className="grid grid-cols-3 gap-3">
                <div className="col-span-2 sm:col-span-1">
                  <label className="block text-sm font-medium text-gray-700 mb-1">Cidade</label>
                  <input type="text" value={formData.city} onChange={(e) => setFormData({ ...formData, city: e.target.value })}
                    className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">UF</label>
                  <select value={formData.state} onChange={(e) => setFormData({ ...formData, state: e.target.value })}
                    className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500">
                    <option value="">-</option>
                    {STATES.map((state) => (<option key={state} value={state}>{state}</option>))}
                  </select>
                </div>
                <div className="col-span-3 sm:col-span-1">
                  <label className="block text-sm font-medium text-gray-700 mb-1">CEP</label>
                  <input type="text" inputMode="numeric" value={formData.zip_code} onChange={(e) => setFormData({ ...formData, zip_code: formatZipCode(e.target.value) })}
                    className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" placeholder="00000-000" />
                </div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Limite de Crédito</label>
                <input type="number" step="0.01" min="0" inputMode="decimal" value={formData.credit_limit} onChange={(e) => setFormData({ ...formData, credit_limit: e.target.value })}
                  className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Observações</label>
                <textarea value={formData.notes} onChange={(e) => setFormData({ ...formData, notes: e.target.value })} rows={2}
                  className="w-full px-3 py-2 text-base border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500" />
              </div>
            </form>

            <div className="flex gap-3 p-4 border-t bg-gray-50 flex-shrink-0">
              <button type="button" onClick={closeModal} className="flex-1 py-3 bg-gray-200 text-gray-700 rounded-xl font-medium hover:bg-gray-300 transition-colors">Cancelar</button>
              <button onClick={handleSubmit} disabled={saveMutation.isPending} className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium hover:bg-blue-700 transition-colors disabled:opacity-50">
                {saveMutation.isPending ? 'Salvando...' : 'Salvar'}
              </button>
            </div>
            {saveMutation.isError && <p className="px-4 pb-4 text-red-500 text-sm text-center">{saveMutation.error?.message}</p>}
          </div>
        </div>
      )}

      {/* Detail Modal */}
      {isDetailOpen && selectedCustomer && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center z-50">
          <div className="bg-white w-full sm:max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="text-lg font-semibold">Detalhes</h2>
              <button onClick={closeDetail} className="p-2 hover:bg-gray-100 rounded-full"><X className="w-5 h-5" /></button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-4">
              <div className="text-center pb-4 border-b">
                <div className="w-16 h-16 bg-gradient-to-br from-blue-500 to-purple-500 rounded-full flex items-center justify-center mx-auto mb-3 shadow-lg">
                  <span className="text-2xl font-bold text-white">{selectedCustomer.name.charAt(0).toUpperCase()}</span>
                </div>
                <h3 className="text-xl font-bold text-gray-900">{selectedCustomer.name}</h3>
                {selectedCustomer.document && <p className="text-gray-500 text-sm">{selectedCustomer.document_type === 'cpf' ? formatCPF(selectedCustomer.document) : formatCNPJ(selectedCustomer.document)}</p>}
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div className="bg-green-50 p-3 rounded-xl">
                  <p className="text-xs text-green-600">Total em Compras</p>
                  <p className="text-lg font-bold text-green-700">{formatCurrency(selectedCustomer.total_purchases)}</p>
                </div>
                <div className="bg-blue-50 p-3 rounded-xl">
                  <p className="text-xs text-blue-600">Limite de Crédito</p>
                  <p className="text-lg font-bold text-blue-700">{formatCurrency(selectedCustomer.credit_limit)}</p>
                </div>
              </div>

              <div className="space-y-3">
                {selectedCustomer.phone && <div className="flex items-center gap-3 text-gray-600"><Phone className="w-5 h-5 text-gray-400" /><span>{formatPhone(selectedCustomer.phone)}</span></div>}
                {selectedCustomer.email && <div className="flex items-center gap-3 text-gray-600"><Mail className="w-5 h-5 text-gray-400" /><span className="truncate">{selectedCustomer.email}</span></div>}
                {selectedCustomer.address && <div className="flex items-start gap-3 text-gray-600"><MapPin className="w-5 h-5 text-gray-400 flex-shrink-0 mt-0.5" /><span>{selectedCustomer.address}{selectedCustomer.city && `, ${selectedCustomer.city}`}{selectedCustomer.state && ` - ${selectedCustomer.state}`}</span></div>}
              </div>

              {selectedCustomer.notes && (
                <div className="bg-gray-50 p-3 rounded-xl">
                  <p className="text-xs text-gray-500 mb-1">Observações</p>
                  <p className="text-gray-700 text-sm">{selectedCustomer.notes}</p>
                </div>
              )}

              <div className="text-xs text-gray-400 pt-4 border-t">
                <p>Cliente desde: {formatDate(selectedCustomer.created_at)}</p>
                <p>Última compra: {formatDate(selectedCustomer.last_purchase_at)}</p>
              </div>
            </div>

            <div className="flex gap-3 p-4 border-t bg-gray-50">
              <button onClick={() => { closeDetail(); openModal(selectedCustomer); }} className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium hover:bg-blue-700 transition-colors">Editar</button>
              <button onClick={closeDetail} className="flex-1 py-3 bg-gray-200 text-gray-700 rounded-xl font-medium hover:bg-gray-300 transition-colors">Fechar</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
