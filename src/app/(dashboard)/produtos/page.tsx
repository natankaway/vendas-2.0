/**
 * Página de Gestão de Produtos
 *
 * CRUD completo de produtos com categorias e controle de estoque.
 * Layout responsivo: cards em mobile, tabela em desktop.
 * Suporte offline com IndexedDB.
 */

'use client';

import { useState, useMemo, useCallback } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Plus,
  Search,
  Edit,
  Trash2,
  Package,
  AlertTriangle,
  X,
  ChevronLeft,
  ChevronRight,
  BarChart3,
  Filter,
  CheckCircle,
  XCircle,
  WifiOff,
} from 'lucide-react';
import { fetchProducts, fetchCategories, createProduct, updateProduct, deleteProduct } from '@/lib/services/offline-data-service';
import { useConnectionStore } from '@/lib/stores/connection-store';

// Tipos
interface Product {
  id: string;
  name: string;
  description: string | null;
  sku: string;
  barcode: string | null;
  category_id: string | null;
  price: number;
  cost_price: number;
  stock_quantity: number;
  min_stock_quantity: number;
  max_stock_quantity: number | null;
  unit: string;
  is_active: boolean;
  is_weighable: boolean;
  allow_decimal_quantity: boolean;
  tax_rate: number;
  image_url: string | null;
  expiration_date: string | null;
  created_at: string;
  updated_at: string;
}

interface Category {
  id: string;
  name: string;
  color: string | null;
}

interface ProductFormData {
  name: string;
  description: string;
  sku: string;
  barcode: string;
  category_id: string;
  price: string;
  cost_price: string;
  stock_quantity: string;
  min_stock_quantity: string;
  max_stock_quantity: string;
  unit: string;
  is_active: boolean;
  is_weighable: boolean;
  allow_decimal_quantity: boolean;
  tax_rate: string;
  expiration_date: string;
}

const initialFormData: ProductFormData = {
  name: '',
  description: '',
  sku: '',
  barcode: '',
  category_id: '',
  price: '',
  cost_price: '',
  stock_quantity: '0',
  min_stock_quantity: '0',
  max_stock_quantity: '',
  unit: 'UN',
  is_active: true,
  is_weighable: false,
  allow_decimal_quantity: false,
  tax_rate: '0',
  expiration_date: '',
};

const UNITS = ['UN', 'KG', 'G', 'L', 'ML', 'M', 'CM', 'CX', 'PCT', 'DZ'];

export default function ProdutosPage() {
  const queryClient = useQueryClient();
  const { status: connectionStatus } = useConnectionStore();
  const isOffline = connectionStatus === 'offline';

  const [search, setSearch] = useState('');
  const [categoryFilter, setCategoryFilter] = useState('');
  const [stockFilter, setStockFilter] = useState<'all' | 'low' | 'out'>('all');
  const [activeFilter, setActiveFilter] = useState<'all' | 'active' | 'inactive'>('all');
  const [showFilters, setShowFilters] = useState(false);
  const [page, setPage] = useState(1);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingProduct, setEditingProduct] = useState<Product | null>(null);
  const [formData, setFormData] = useState<ProductFormData>(initialFormData);
  const [formErrors, setFormErrors] = useState<Record<string, string>>({});
  const [toast, setToast] = useState<{ type: 'success' | 'error'; message: string } | null>(null);

  const perPage = 20;

  // Função para mostrar notificação
  const showToast = useCallback((type: 'success' | 'error', message: string) => {
    setToast({ type, message });
    setTimeout(() => setToast(null), 4000);
  }, []);

  // Formata valor para moeda brasileira (entrada)
  const formatCurrencyInput = useCallback((value: string): string => {
    // Remove tudo que não é número
    const numbers = value.replace(/\D/g, '');
    if (!numbers) return '';
    // Converte para número e divide por 100 para ter 2 casas decimais
    const amount = parseInt(numbers, 10) / 100;
    return amount.toFixed(2);
  }, []);

  // Handler para campos de dinheiro
  const handleMoneyChange = useCallback((field: 'price' | 'cost_price', value: string) => {
    // Permite apenas números e ponto
    const cleanValue = value.replace(/[^\d.]/g, '');
    // Garante apenas um ponto decimal
    const parts = cleanValue.split('.');
    let formatted = parts[0];
    if (parts.length > 1) {
      formatted += '.' + parts[1].slice(0, 2);
    }
    setFormData(prev => ({ ...prev, [field]: formatted }));
  }, []);

  // Handler para campos numéricos (estoque)
  const handleNumberChange = useCallback((field: string, value: string, allowDecimal: boolean) => {
    // Remove letras, permite apenas números e ponto (se decimal permitido)
    let cleanValue = allowDecimal
      ? value.replace(/[^\d.]/g, '')
      : value.replace(/\D/g, '');
    // Garante apenas um ponto decimal
    if (allowDecimal) {
      const parts = cleanValue.split('.');
      cleanValue = parts[0] + (parts.length > 1 ? '.' + parts[1] : '');
    }
    setFormData(prev => ({ ...prev, [field]: cleanValue }));
  }, []);

  // Busca produtos - usa IndexedDB quando offline
  const { data: productsData, isLoading: loadingProducts } = useQuery({
    queryKey: ['products', search, categoryFilter, page, connectionStatus],
    queryFn: () => fetchProducts({
      search: search || undefined,
      category: categoryFilter || undefined,
      page,
      limit: perPage,
    }),
  });

  // Busca categorias - usa IndexedDB quando offline
  const { data: categoriesData } = useQuery({
    queryKey: ['categories', connectionStatus],
    queryFn: () => fetchCategories(),
  });

  const products: Product[] = productsData?.data || [];
  const categories: Category[] = categoriesData?.data || [];
  const totalProducts = productsData?.total || 0;
  const totalPages = Math.ceil(totalProducts / perPage);

  // Detecta se os dados vieram do IndexedDB
  const isDataOffline = productsData?._offline === true;
  // Considera offline se a conexão está offline OU se os dados vieram do IndexedDB
  const showOfflineBanner = isOffline || isDataOffline;

  const filteredProducts = useMemo(() => {
    let result = [...products];
    if (stockFilter === 'low') {
      result = result.filter(p => p.stock_quantity <= p.min_stock_quantity && p.stock_quantity > 0);
    } else if (stockFilter === 'out') {
      result = result.filter(p => p.stock_quantity <= 0);
    }
    if (activeFilter === 'active') {
      result = result.filter(p => p.is_active);
    } else if (activeFilter === 'inactive') {
      result = result.filter(p => !p.is_active);
    }
    return result;
  }, [products, stockFilter, activeFilter]);

  // Use stats from API (calculated from ALL products, not just current page)
  const stats = productsData?.stats || { total: 0, lowStock: 0, outOfStock: 0, totalValue: 0 };

  const saveMutation = useMutation({
    mutationFn: async (data: ProductFormData) => {
      const payload = {
        name: data.name,
        description: data.description || null,
        sku: data.sku || null,
        barcode: data.barcode || null,
        category_id: data.category_id || null,
        price: Math.round(parseFloat(data.price || '0') * 100),
        cost_price: Math.round(parseFloat(data.cost_price || '0') * 100),
        stock_quantity: parseFloat(data.stock_quantity || '0'),
        min_stock_quantity: parseFloat(data.min_stock_quantity || '0'),
        max_stock_quantity: data.max_stock_quantity ? parseFloat(data.max_stock_quantity) : null,
        unit: data.unit,
        is_active: data.is_active,
        is_weighable: data.is_weighable,
        allow_decimal_quantity: data.allow_decimal_quantity,
        tax_rate: parseFloat(data.tax_rate || '0'),
        expiration_date: data.expiration_date || null,
      };

      // Usa funções com suporte offline
      let result;
      if (editingProduct) {
        result = await updateProduct(editingProduct.id, payload);
      } else {
        result = await createProduct(payload);
      }

      if (!result.success) {
        throw new Error(result.error || 'Erro ao salvar produto');
      }

      return result;
    },
    onSuccess: (result) => {
      queryClient.invalidateQueries({ queryKey: ['products'] });
      const offlineMsg = result._offline ? ' (salvo offline)' : '';
      showToast('success', editingProduct ? `Produto atualizado${offlineMsg}!` : `Produto cadastrado${offlineMsg}!`);
      closeModal();
    },
    onError: (error: Error) => {
      showToast('error', error.message || 'Erro ao salvar produto');
    },
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const result = await deleteProduct(id);
      if (!result.success) {
        throw new Error(result.error || 'Erro ao excluir produto');
      }
      return result;
    },
    onSuccess: (result) => {
      queryClient.invalidateQueries({ queryKey: ['products'] });
      const offlineMsg = result._offline ? ' (será sincronizado)' : '';
      showToast('success', `Produto excluído${offlineMsg}!`);
    },
    onError: (error: Error) => {
      showToast('error', error.message || 'Erro ao excluir produto');
    },
  });

  const openModal = (product?: Product) => {
    if (product) {
      setEditingProduct(product);
      setFormData({
        name: product.name,
        description: product.description || '',
        sku: product.sku,
        barcode: product.barcode || '',
        category_id: product.category_id || '',
        price: (product.price / 100).toFixed(2),
        cost_price: (product.cost_price / 100).toFixed(2),
        stock_quantity: String(product.stock_quantity),
        min_stock_quantity: String(product.min_stock_quantity),
        max_stock_quantity: product.max_stock_quantity ? String(product.max_stock_quantity) : '',
        unit: product.unit,
        is_active: product.is_active,
        is_weighable: product.is_weighable,
        allow_decimal_quantity: product.allow_decimal_quantity,
        tax_rate: String(product.tax_rate),
        expiration_date: product.expiration_date || '',
      });
    } else {
      setEditingProduct(null);
      setFormData(initialFormData);
    }
    setFormErrors({});
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingProduct(null);
    setFormData(initialFormData);
    setFormErrors({});
  };

  const validateForm = (): boolean => {
    const errors: Record<string, string> = {};
    if (!formData.name.trim()) errors.name = 'Nome é obrigatório';
    if (!formData.price || parseFloat(formData.price) <= 0) errors.price = 'Preço deve ser maior que zero';
    setFormErrors(errors);
    return Object.keys(errors).length === 0;
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (validateForm()) saveMutation.mutate(formData);
  };

  const handleDelete = (product: Product) => {
    if (confirm(`Excluir produto "${product.name}"?`)) {
      deleteMutation.mutate(product.id);
    }
  };

  const formatCurrency = (cents: number) => {
    return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(cents / 100);
  };

  const getCategoryName = (categoryId: string | null) => {
    if (!categoryId) return '-';
    return categories.find(c => c.id === categoryId)?.name || '-';
  };

  const hasActiveFilters = categoryFilter || stockFilter !== 'all' || activeFilter !== 'all';

  return (
    <div className="w-full max-w-7xl mx-auto overflow-x-hidden">
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
      <div className="flex items-center justify-between mb-4">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900 dark:text-white">Produtos</h1>
          <p className="text-sm text-gray-500 dark:text-gray-400">Gerencie seu catálogo</p>
        </div>
        <button
          onClick={() => openModal()}
          className="hidden sm:flex items-center gap-2 bg-blue-600 text-white px-4 py-2 rounded-xl hover:bg-blue-700 transition-colors font-medium text-sm"
        >
          <Plus className="w-4 h-4" />
          Novo
        </button>
      </div>

      {/* Stats Cards */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-2 sm:gap-3 mb-4">
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-blue-50 rounded-lg">
              <Package className="w-4 h-4 sm:w-5 sm:h-5 text-blue-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Total</p>
              <p className="text-base sm:text-lg font-bold">{stats.total}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-yellow-50 rounded-lg">
              <AlertTriangle className="w-4 h-4 sm:w-5 sm:h-5 text-yellow-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Baixo</p>
              <p className="text-base sm:text-lg font-bold text-yellow-600">{stats.lowStock}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-red-50 rounded-lg">
              <AlertTriangle className="w-4 h-4 sm:w-5 sm:h-5 text-red-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Zerado</p>
              <p className="text-base sm:text-lg font-bold text-red-600">{stats.outOfStock}</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl shadow-sm p-3 border border-gray-100">
          <div className="flex items-center gap-2">
            <div className="p-1.5 sm:p-2 bg-green-50 rounded-lg">
              <BarChart3 className="w-4 h-4 sm:w-5 sm:h-5 text-green-600" />
            </div>
            <div className="min-w-0">
              <p className="text-[10px] sm:text-xs text-gray-500">Valor</p>
              <p className="text-sm sm:text-lg font-bold text-green-600 truncate">{formatCurrency(stats.totalValue)}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Search and Filters */}
      <div className="bg-white rounded-xl shadow-sm p-3 mb-4 border border-gray-100">
        <div className="flex gap-2">
          <div className="flex-1 relative min-w-0">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
            <input
              type="text"
              placeholder="Buscar produto..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full pl-8 pr-2 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            />
          </div>
          <button
            onClick={() => setShowFilters(!showFilters)}
            className={`flex items-center justify-center gap-1 px-2.5 py-2 rounded-lg border text-sm ${
              hasActiveFilters ? 'bg-blue-50 border-blue-200 text-blue-700' : 'border-gray-200 text-gray-600'
            }`}
          >
            <Filter className="w-4 h-4" />
            {hasActiveFilters && (
              <span className="bg-blue-600 text-white text-[10px] w-4 h-4 rounded-full flex items-center justify-center">
                {[categoryFilter, stockFilter !== 'all' ? 1 : 0, activeFilter !== 'all' ? 1 : 0].filter(Boolean).length}
              </span>
            )}
          </button>
        </div>

        {showFilters && (
          <div className="mt-3 pt-3 border-t grid grid-cols-3 gap-2">
            <select
              value={categoryFilter}
              onChange={(e) => setCategoryFilter(e.target.value)}
              className="px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
            >
              <option value="">Categoria</option>
              {categories.map((cat) => (
                <option key={cat.id} value={cat.id}>{cat.name}</option>
              ))}
            </select>
            <select
              value={stockFilter}
              onChange={(e) => setStockFilter(e.target.value as 'all' | 'low' | 'out')}
              className="px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
            >
              <option value="all">Estoque</option>
              <option value="low">Baixo</option>
              <option value="out">Zerado</option>
            </select>
            <select
              value={activeFilter}
              onChange={(e) => setActiveFilter(e.target.value as 'all' | 'active' | 'inactive')}
              className="px-2 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
            >
              <option value="all">Status</option>
              <option value="active">Ativos</option>
              <option value="inactive">Inativos</option>
            </select>
          </div>
        )}
      </div>

      {/* Products List */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
        {/* Desktop Table */}
        <div className="hidden md:block overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Produto</th>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">SKU</th>
                <th className="px-3 py-3 text-left text-xs font-medium text-gray-500 uppercase">Categoria</th>
                <th className="px-3 py-3 text-right text-xs font-medium text-gray-500 uppercase">Preço</th>
                <th className="px-3 py-3 text-right text-xs font-medium text-gray-500 uppercase">Estoque</th>
                <th className="px-3 py-3 text-center text-xs font-medium text-gray-500 uppercase">Status</th>
                <th className="px-3 py-3 text-center text-xs font-medium text-gray-500 uppercase">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-100">
              {loadingProducts ? (
                <tr>
                  <td colSpan={7} className="px-4 py-12 text-center">
                    <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div>
                  </td>
                </tr>
              ) : filteredProducts.length === 0 ? (
                <tr>
                  <td colSpan={7} className="px-4 py-12 text-center text-gray-400">
                    <Package className="w-10 h-10 mx-auto mb-2 opacity-50" />
                    <p>Nenhum produto encontrado</p>
                  </td>
                </tr>
              ) : (
                filteredProducts.map((product) => (
                  <tr key={product.id} className="hover:bg-gray-50">
                    <td className="px-3 py-3">
                      <p className="font-medium text-gray-900 text-sm">{product.name}</p>
                      {product.barcode && <p className="text-[10px] text-gray-400">{product.barcode}</p>}
                    </td>
                    <td className="px-3 py-3 text-sm text-gray-600">{product.sku}</td>
                    <td className="px-3 py-3 text-sm text-gray-600">{getCategoryName(product.category_id)}</td>
                    <td className="px-3 py-3 text-right font-medium text-sm">{formatCurrency(product.price)}</td>
                    <td className="px-3 py-3 text-right">
                      <span className={`text-sm font-medium ${
                        product.stock_quantity <= 0 ? 'text-red-600' :
                        product.stock_quantity <= product.min_stock_quantity ? 'text-yellow-600' : 'text-gray-900'
                      }`}>
                        {product.stock_quantity} {product.unit}
                      </span>
                    </td>
                    <td className="px-3 py-3 text-center">
                      <span className={`inline-flex px-2 py-0.5 text-xs font-medium rounded-full ${
                        product.is_active ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-600'
                      }`}>
                        {product.is_active ? 'Ativo' : 'Inativo'}
                      </span>
                    </td>
                    <td className="px-3 py-3">
                      <div className="flex items-center justify-center gap-1">
                        <button onClick={() => openModal(product)} className="p-1.5 text-gray-500 hover:text-blue-600 hover:bg-blue-50 rounded-lg" title="Editar">
                          <Edit className="w-4 h-4" />
                        </button>
                        <button onClick={() => handleDelete(product)} className="p-1.5 text-gray-500 hover:text-red-600 hover:bg-red-50 rounded-lg" title="Excluir">
                          <Trash2 className="w-4 h-4" />
                        </button>
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
          {loadingProducts ? (
            <div className="p-8 text-center">
              <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600 mx-auto"></div>
            </div>
          ) : filteredProducts.length === 0 ? (
            <div className="p-8 text-center text-gray-400">
              <Package className="w-10 h-10 mx-auto mb-2 opacity-50" />
              <p>Nenhum produto encontrado</p>
            </div>
          ) : (
            filteredProducts.map((product) => (
              <div key={product.id} className="p-3">
                <div className="flex items-start justify-between gap-2 mb-1.5">
                  <div className="min-w-0 flex-1">
                    <p className="font-medium text-gray-900 text-sm truncate">{product.name}</p>
                    <p className="text-[10px] text-gray-500">SKU: {product.sku}</p>
                  </div>
                  <span className={`flex-shrink-0 px-2 py-0.5 text-[10px] font-medium rounded-full ${
                    product.is_active ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-600'
                  }`}>
                    {product.is_active ? 'Ativo' : 'Inativo'}
                  </span>
                </div>
                <div className="flex items-center justify-between gap-2 mb-1.5">
                  <p className="text-base font-bold text-blue-600">{formatCurrency(product.price)}</p>
                  <span className={`text-sm font-medium ${
                    product.stock_quantity <= 0 ? 'text-red-600' :
                    product.stock_quantity <= product.min_stock_quantity ? 'text-yellow-600' : 'text-gray-600'
                  }`}>
                    {product.stock_quantity} {product.unit}
                  </span>
                </div>
                <div className="flex items-center justify-between">
                  <span className="text-[10px] text-gray-500">{getCategoryName(product.category_id)}</span>
                  <div className="flex gap-1">
                    <button onClick={() => openModal(product)} className="p-1.5 text-blue-600 hover:bg-blue-50 rounded-lg">
                      <Edit className="w-4 h-4" />
                    </button>
                    <button onClick={() => handleDelete(product)} className="p-1.5 text-red-600 hover:bg-red-50 rounded-lg">
                      <Trash2 className="w-4 h-4" />
                    </button>
                  </div>
                </div>
              </div>
            ))
          )}
        </div>

        {/* Pagination */}
        {totalPages > 1 && (
          <div className="flex items-center justify-between px-3 py-2.5 border-t bg-gray-50">
            <p className="text-[10px] sm:text-xs text-gray-500">
              {((page - 1) * perPage) + 1}-{Math.min(page * perPage, totalProducts)} de {totalProducts}
            </p>
            <div className="flex items-center gap-1">
              <button onClick={() => setPage(p => Math.max(1, p - 1))} disabled={page === 1} className="p-1.5 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30">
                <ChevronLeft className="w-4 h-4" />
              </button>
              <span className="text-xs text-gray-600 px-1.5">{page}/{totalPages}</span>
              <button onClick={() => setPage(p => Math.min(totalPages, p + 1))} disabled={page === totalPages} className="p-1.5 text-gray-600 hover:bg-gray-200 rounded-lg disabled:opacity-30">
                <ChevronRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Mobile FAB */}
      <button
        onClick={() => openModal()}
        className="sm:hidden fixed bottom-20 right-4 w-12 h-12 bg-blue-600 text-white rounded-full shadow-lg flex items-center justify-center z-30"
      >
        <Plus className="w-5 h-5" />
      </button>

      {/* Toast Notification */}
      {toast && (
        <div className={`fixed bottom-24 left-1/2 -translate-x-1/2 z-50 flex items-center gap-2 px-4 py-3 rounded-xl shadow-lg transition-all duration-300 ${
          toast.type === 'success' ? 'bg-green-600 text-white' : 'bg-red-600 text-white'
        }`}>
          {toast.type === 'success' ? (
            <CheckCircle className="w-5 h-5 flex-shrink-0" />
          ) : (
            <XCircle className="w-5 h-5 flex-shrink-0" />
          )}
          <span className="text-sm font-medium">{toast.message}</span>
        </div>
      )}

      {/* Modal */}
      {isModalOpen && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center z-50 p-0 sm:p-4">
          <div className="bg-white w-full max-w-lg sm:rounded-2xl h-[90vh] sm:h-auto sm:max-h-[85vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-3 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold">{editingProduct ? 'Editar Produto' : 'Novo Produto'}</h2>
              <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="w-5 h-5" />
              </button>
            </div>

            <form onSubmit={handleSubmit} className="flex-1 overflow-y-auto p-3 pb-4 space-y-3">
              <div>
                <label className="block text-xs font-medium text-gray-700 mb-1">Nome *</label>
                <input
                  type="text"
                  value={formData.name}
                  onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-blue-500 ${formErrors.name ? 'border-red-500' : 'border-gray-200'}`}
                />
                {formErrors.name && <p className="text-red-500 text-[10px] mt-0.5">{formErrors.name}</p>}
              </div>

              <div>
                <label className="block text-xs font-medium text-gray-700 mb-1">Descrição</label>
                <textarea
                  value={formData.description}
                  onChange={(e) => setFormData({ ...formData, description: e.target.value })}
                  rows={2}
                  className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                />
              </div>

              <div className="grid grid-cols-2 gap-2">
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">SKU</label>
                  <input
                    type="text"
                    value={formData.sku}
                    onChange={(e) => setFormData({ ...formData, sku: e.target.value })}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                    placeholder="Opcional"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Cód. Barras</label>
                  <input
                    type="text"
                    value={formData.barcode}
                    onChange={(e) => setFormData({ ...formData, barcode: e.target.value })}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  />
                </div>
              </div>

              <div className="grid grid-cols-2 gap-2">
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Categoria</label>
                  <select
                    value={formData.category_id}
                    onChange={(e) => setFormData({ ...formData, category_id: e.target.value })}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  >
                    <option value="">Sem categoria</option>
                    {categories.map((cat) => (
                      <option key={cat.id} value={cat.id}>{cat.name}</option>
                    ))}
                  </select>
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Unidade</label>
                  <select
                    value={formData.unit}
                    onChange={(e) => setFormData({ ...formData, unit: e.target.value })}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  >
                    {UNITS.map((unit) => (
                      <option key={unit} value={unit}>{unit}</option>
                    ))}
                  </select>
                </div>
              </div>

              <div className="grid grid-cols-2 gap-2">
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Preço Venda *</label>
                  <div className="relative">
                    <span className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-500 text-sm">R$</span>
                    <input
                      type="text"
                      inputMode="decimal"
                      value={formData.price}
                      onChange={(e) => handleMoneyChange('price', e.target.value)}
                      onKeyPress={(e) => {
                        if (!/[\d.]/.test(e.key)) e.preventDefault();
                      }}
                      placeholder="0.00"
                      className={`w-full pl-10 pr-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-blue-500 ${formErrors.price ? 'border-red-500' : 'border-gray-200'}`}
                    />
                  </div>
                  {formErrors.price && <p className="text-red-500 text-[10px] mt-0.5">{formErrors.price}</p>}
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Preço Custo</label>
                  <div className="relative">
                    <span className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-500 text-sm">R$</span>
                    <input
                      type="text"
                      inputMode="decimal"
                      value={formData.cost_price}
                      onChange={(e) => handleMoneyChange('cost_price', e.target.value)}
                      onKeyPress={(e) => {
                        if (!/[\d.]/.test(e.key)) e.preventDefault();
                      }}
                      placeholder="0.00"
                      className="w-full pl-10 pr-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                    />
                  </div>
                </div>
              </div>

              <div className="grid grid-cols-3 gap-2">
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Estoque</label>
                  <input
                    type="text"
                    inputMode="numeric"
                    value={formData.stock_quantity}
                    onChange={(e) => handleNumberChange('stock_quantity', e.target.value, formData.allow_decimal_quantity)}
                    onKeyPress={(e) => {
                      const allowedChars = formData.allow_decimal_quantity ? /[\d.]/ : /\d/;
                      if (!allowedChars.test(e.key)) e.preventDefault();
                    }}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Mínimo</label>
                  <input
                    type="text"
                    inputMode="numeric"
                    value={formData.min_stock_quantity}
                    onChange={(e) => handleNumberChange('min_stock_quantity', e.target.value, formData.allow_decimal_quantity)}
                    onKeyPress={(e) => {
                      const allowedChars = formData.allow_decimal_quantity ? /[\d.]/ : /\d/;
                      if (!allowedChars.test(e.key)) e.preventDefault();
                    }}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 mb-1">Máximo</label>
                  <input
                    type="text"
                    inputMode="numeric"
                    value={formData.max_stock_quantity}
                    onChange={(e) => handleNumberChange('max_stock_quantity', e.target.value, formData.allow_decimal_quantity)}
                    onKeyPress={(e) => {
                      const allowedChars = formData.allow_decimal_quantity ? /[\d.]/ : /\d/;
                      if (!allowedChars.test(e.key)) e.preventDefault();
                    }}
                    className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                    placeholder="-"
                  />
                </div>
              </div>

              <div>
                <label className="block text-xs font-medium text-gray-700 mb-1">Data de Validade</label>
                <input
                  type="date"
                  value={formData.expiration_date}
                  onChange={(e) => setFormData({ ...formData, expiration_date: e.target.value })}
                  className="w-full px-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                />
              </div>

              <div className="space-y-2 pt-2">
                <label className="flex items-center gap-2">
                  <input
                    type="checkbox"
                    checked={formData.is_active}
                    onChange={(e) => setFormData({ ...formData, is_active: e.target.checked })}
                    className="w-4 h-4 rounded border-gray-300 text-blue-600"
                  />
                  <span className="text-xs text-gray-700">Produto ativo</span>
                </label>
                <label className="flex items-center gap-2">
                  <input
                    type="checkbox"
                    checked={formData.is_weighable}
                    onChange={(e) => setFormData({ ...formData, is_weighable: e.target.checked })}
                    className="w-4 h-4 rounded border-gray-300 text-blue-600"
                  />
                  <span className="text-xs text-gray-700">Produto pesável</span>
                </label>
                <label className="flex items-center gap-2">
                  <input
                    type="checkbox"
                    checked={formData.allow_decimal_quantity}
                    onChange={(e) => setFormData({ ...formData, allow_decimal_quantity: e.target.checked })}
                    className="w-4 h-4 rounded border-gray-300 text-blue-600"
                  />
                  <span className="text-xs text-gray-700">Qtd. decimal</span>
                </label>
              </div>
            </form>

            <div className="flex gap-2 p-3 border-t bg-gray-50 dark:bg-gray-800 dark:border-gray-700 flex-shrink-0">
              <button type="button" onClick={closeModal} className="flex-1 py-2.5 bg-gray-200 dark:bg-gray-600 text-gray-700 dark:text-white rounded-xl font-medium text-sm">
                Cancelar
              </button>
              <button
                onClick={handleSubmit}
                disabled={saveMutation.isPending}
                className="flex-1 py-2.5 bg-blue-600 text-white rounded-xl font-medium text-sm disabled:opacity-50"
              >
                {saveMutation.isPending ? 'Salvando...' : 'Salvar'}
              </button>
            </div>

            {saveMutation.isError && (
              <p className="px-3 pb-3 text-red-500 text-xs text-center">{saveMutation.error?.message}</p>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
