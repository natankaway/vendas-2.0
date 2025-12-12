/**
 * Página de Gestão de Categorias
 *
 * CRUD completo de categorias de produtos.
 * Layout responsivo para desktop, tablet e mobile.
 */

'use client';

import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Plus,
  Search,
  Edit,
  Trash2,
  FolderTree,
  X,
  ChevronLeft,
  ChevronRight,
  Palette,
  Tag,
  MoreVertical,
  Hash,
} from 'lucide-react';
import { toast } from '@/components/ui/use-toast';

// Tipos
interface Category {
  id: string;
  name: string;
  description: string | null;
  color: string;
  icon: string | null;
  parent_id: string | null;
  sort_order: number;
  created_at: string;
  updated_at: string;
}

interface CategoryFormData {
  name: string;
  description: string;
  color: string;
  parent_id: string;
  sort_order: number;
}

const initialFormData: CategoryFormData = {
  name: '',
  description: '',
  color: '#3B82F6',
  parent_id: '',
  sort_order: 0,
};

const colorOptions = [
  '#3B82F6', // Blue
  '#10B981', // Green
  '#F59E0B', // Yellow
  '#EF4444', // Red
  '#8B5CF6', // Purple
  '#EC4899', // Pink
  '#06B6D4', // Cyan
  '#F97316', // Orange
  '#6366F1', // Indigo
  '#84CC16', // Lime
];

export default function CategoriasPage() {
  const queryClient = useQueryClient();

  // State
  const [search, setSearch] = useState('');
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingCategory, setEditingCategory] = useState<Category | null>(null);
  const [formData, setFormData] = useState<CategoryFormData>(initialFormData);
  const [formErrors, setFormErrors] = useState<Record<string, string>>({});
  const [selectedCategory, setSelectedCategory] = useState<Category | null>(null);

  // Fetch categories
  const { data: categoriesData, isLoading } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const res = await fetch('/api/categorias');
      return res.json();
    },
  });

  const categories: Category[] = categoriesData?.data || [];
  const filteredCategories = categories.filter(
    (c) =>
      c.name.toLowerCase().includes(search.toLowerCase()) ||
      c.description?.toLowerCase().includes(search.toLowerCase())
  );

  // Create/Update mutation
  const saveMutation = useMutation({
    mutationFn: async (data: CategoryFormData) => {
      const url = editingCategory
        ? `/api/categorias/${editingCategory.id}`
        : '/api/categorias';
      const method = editingCategory ? 'PUT' : 'POST';

      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ...data,
          parent_id: data.parent_id || null,
        }),
      });

      const result = await res.json();

      if (!res.ok) {
        throw new Error(result.error || 'Erro ao salvar categoria');
      }

      return result;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['categories'] });
      closeModal();
      toast({
        title: editingCategory ? 'Categoria atualizada' : 'Categoria criada',
        description: 'As alterações foram salvas com sucesso.',
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

  // Delete mutation
  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch(`/api/categorias/${id}`, { method: 'DELETE' });
      const result = await res.json();

      if (!res.ok) {
        throw new Error(result.error || 'Erro ao excluir categoria');
      }

      return result;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['categories'] });
      setSelectedCategory(null);
      toast({
        title: 'Categoria excluída',
        description: 'A categoria foi removida com sucesso.',
      });
    },
    onError: (error: Error) => {
      toast({
        title: 'Erro ao excluir',
        description: error.message,
        variant: 'destructive',
      });
    },
  });

  // Handlers
  const openModal = (category?: Category) => {
    if (category) {
      setEditingCategory(category);
      setFormData({
        name: category.name,
        description: category.description || '',
        color: category.color || '#3B82F6',
        parent_id: category.parent_id || '',
        sort_order: category.sort_order || 0,
      });
    } else {
      setEditingCategory(null);
      setFormData(initialFormData);
    }
    setFormErrors({});
    setIsModalOpen(true);
    setSelectedCategory(null);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingCategory(null);
    setFormData(initialFormData);
    setFormErrors({});
  };

  const validateForm = (): boolean => {
    const errors: Record<string, string> = {};

    if (!formData.name.trim()) {
      errors.name = 'Nome é obrigatório';
    }

    setFormErrors(errors);
    return Object.keys(errors).length === 0;
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (validateForm()) {
      saveMutation.mutate(formData);
    }
  };

  const handleDelete = (category: Category) => {
    if (confirm(`Excluir categoria "${category.name}"?`)) {
      deleteMutation.mutate(category.id);
    }
  };

  // Get parent category name
  const getParentName = (parentId: string | null) => {
    if (!parentId) return null;
    const parent = categories.find((c) => c.id === parentId);
    return parent?.name || null;
  };

  return (
    <div className="min-h-screen bg-gray-50 overflow-x-hidden">
      <div className="p-3 sm:p-6 max-w-7xl mx-auto">
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mb-4 sm:mb-6">
          <div className="min-w-0">
            <h1 className="text-xl sm:text-2xl font-bold text-gray-900 truncate">Categorias</h1>
            <p className="text-sm text-gray-600">Gerencie as categorias de produtos</p>
          </div>
          {/* Desktop Button */}
          <button
            onClick={() => openModal()}
            className="hidden sm:flex items-center gap-2 bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors flex-shrink-0"
          >
            <Plus className="w-5 h-5" />
            Nova Categoria
          </button>
        </div>

        {/* Stats Cards */}
        <div className="grid grid-cols-2 sm:grid-cols-3 gap-2 sm:gap-4 mb-4 sm:mb-6">
          <div className="bg-white rounded-lg shadow p-3 sm:p-4">
            <div className="flex items-center gap-2 sm:gap-3">
              <div className="p-1.5 sm:p-2 bg-blue-100 rounded-lg flex-shrink-0">
                <FolderTree className="w-4 h-4 sm:w-6 sm:h-6 text-blue-600" />
              </div>
              <div className="min-w-0">
                <p className="text-xs sm:text-sm text-gray-600 truncate">Total</p>
                <p className="text-lg sm:text-xl font-bold">{categories.length}</p>
              </div>
            </div>
          </div>
          <div className="bg-white rounded-lg shadow p-3 sm:p-4">
            <div className="flex items-center gap-2 sm:gap-3">
              <div className="p-1.5 sm:p-2 bg-green-100 rounded-lg flex-shrink-0">
                <Tag className="w-4 h-4 sm:w-6 sm:h-6 text-green-600" />
              </div>
              <div className="min-w-0">
                <p className="text-xs sm:text-sm text-gray-600 truncate">Principais</p>
                <p className="text-lg sm:text-xl font-bold text-green-600">
                  {categories.filter((c) => !c.parent_id).length}
                </p>
              </div>
            </div>
          </div>
          <div className="bg-white rounded-lg shadow p-3 sm:p-4 col-span-2 sm:col-span-1">
            <div className="flex items-center gap-2 sm:gap-3">
              <div className="p-1.5 sm:p-2 bg-purple-100 rounded-lg flex-shrink-0">
                <Hash className="w-4 h-4 sm:w-6 sm:h-6 text-purple-600" />
              </div>
              <div className="min-w-0">
                <p className="text-xs sm:text-sm text-gray-600 truncate">Subcategorias</p>
                <p className="text-lg sm:text-xl font-bold text-purple-600">
                  {categories.filter((c) => c.parent_id).length}
                </p>
              </div>
            </div>
          </div>
        </div>

        {/* Search */}
        <div className="bg-white rounded-lg shadow p-3 sm:p-4 mb-4 sm:mb-6">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 sm:w-5 sm:h-5 text-gray-400" />
            <input
              type="text"
              placeholder="Buscar categoria..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full pl-9 sm:pl-10 pr-4 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            />
          </div>
        </div>

        {/* Categories Table - Desktop */}
        <div className="hidden md:block bg-white rounded-lg shadow overflow-hidden">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Categoria</th>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Descrição</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Cor</th>
                <th className="px-4 py-3 text-left text-sm font-medium text-gray-600">Categoria Pai</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Ordem</th>
                <th className="px-4 py-3 text-center text-sm font-medium text-gray-600">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200">
              {isLoading ? (
                <tr>
                  <td colSpan={6} className="px-4 py-8 text-center text-gray-500">
                    <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mx-auto mb-2" />
                    Carregando categorias...
                  </td>
                </tr>
              ) : filteredCategories.length === 0 ? (
                <tr>
                  <td colSpan={6} className="px-4 py-8 text-center text-gray-500">
                    <FolderTree className="w-12 h-12 mx-auto mb-2 text-gray-300" />
                    Nenhuma categoria encontrada
                  </td>
                </tr>
              ) : (
                filteredCategories.map((category) => (
                  <tr key={category.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3">
                      <div className="flex items-center gap-3">
                        <div
                          className="w-10 h-10 rounded-lg flex items-center justify-center flex-shrink-0"
                          style={{ backgroundColor: category.color + '20' }}
                        >
                          <FolderTree className="w-5 h-5" style={{ color: category.color }} />
                        </div>
                        <span className="font-medium text-gray-900">{category.name}</span>
                      </div>
                    </td>
                    <td className="px-4 py-3 text-gray-600 truncate max-w-[200px]">
                      {category.description || '-'}
                    </td>
                    <td className="px-4 py-3">
                      <div className="flex justify-center">
                        <div
                          className="w-8 h-8 rounded-full border-2 border-white shadow"
                          style={{ backgroundColor: category.color }}
                        />
                      </div>
                    </td>
                    <td className="px-4 py-3 text-gray-600">
                      {getParentName(category.parent_id) || '-'}
                    </td>
                    <td className="px-4 py-3 text-center text-gray-600">{category.sort_order}</td>
                    <td className="px-4 py-3">
                      <div className="flex items-center justify-center gap-2">
                        <button
                          onClick={() => openModal(category)}
                          className="p-1 text-blue-600 hover:bg-blue-50 rounded"
                          title="Editar"
                        >
                          <Edit className="w-5 h-5" />
                        </button>
                        <button
                          onClick={() => handleDelete(category)}
                          className="p-1 text-red-600 hover:bg-red-50 rounded"
                          title="Excluir"
                        >
                          <Trash2 className="w-5 h-5" />
                        </button>
                      </div>
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>

        {/* Categories Cards - Mobile */}
        <div className="md:hidden space-y-3">
          {isLoading ? (
            <div className="bg-white rounded-lg shadow p-8 text-center text-gray-500">
              <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mx-auto mb-2" />
              Carregando categorias...
            </div>
          ) : filteredCategories.length === 0 ? (
            <div className="bg-white rounded-lg shadow p-8 text-center text-gray-500">
              <FolderTree className="w-12 h-12 mx-auto mb-2 text-gray-300" />
              Nenhuma categoria encontrada
            </div>
          ) : (
            filteredCategories.map((category) => (
              <div
                key={category.id}
                className="bg-white rounded-lg shadow p-4"
                onClick={() => setSelectedCategory(category)}
              >
                <div className="flex items-start gap-3">
                  <div
                    className="w-12 h-12 rounded-lg flex items-center justify-center flex-shrink-0"
                    style={{ backgroundColor: category.color + '20' }}
                  >
                    <FolderTree className="w-6 h-6" style={{ color: category.color }} />
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="flex items-start justify-between gap-2">
                      <div className="min-w-0">
                        <h3 className="font-semibold text-gray-900 truncate">{category.name}</h3>
                        {category.description && (
                          <p className="text-sm text-gray-500 truncate mt-0.5">
                            {category.description}
                          </p>
                        )}
                      </div>
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          setSelectedCategory(category);
                        }}
                        className="p-1 hover:bg-gray-100 rounded flex-shrink-0"
                      >
                        <MoreVertical className="w-5 h-5 text-gray-400" />
                      </button>
                    </div>

                    <div className="flex items-center gap-3 mt-2">
                      <div
                        className="w-5 h-5 rounded-full border border-gray-200"
                        style={{ backgroundColor: category.color }}
                      />
                      {getParentName(category.parent_id) && (
                        <span className="text-xs text-gray-500">
                          Em: {getParentName(category.parent_id)}
                        </span>
                      )}
                      <span className="text-xs text-gray-400">Ordem: {category.sort_order}</span>
                    </div>
                  </div>
                </div>
              </div>
            ))
          )}
        </div>

        {/* FAB - Mobile */}
        <button
          onClick={() => openModal()}
          className="sm:hidden fixed bottom-4 right-4 z-30 w-14 h-14 bg-blue-600 text-white rounded-full shadow-lg hover:bg-blue-700 flex items-center justify-center"
        >
          <Plus className="w-6 h-6" />
        </button>

        {/* Category Actions Bottom Sheet - Mobile */}
        {selectedCategory && (
          <div className="md:hidden fixed inset-0 z-50">
            <div className="absolute inset-0 bg-black/50" onClick={() => setSelectedCategory(null)} />
            <div className="absolute bottom-0 left-0 right-0 bg-white rounded-t-2xl shadow-xl max-h-[80vh] overflow-hidden">
              <div className="p-4 border-b">
                <div className="flex items-center gap-3">
                  <div
                    className="w-12 h-12 rounded-lg flex items-center justify-center"
                    style={{ backgroundColor: selectedCategory.color + '20' }}
                  >
                    <FolderTree className="w-6 h-6" style={{ color: selectedCategory.color }} />
                  </div>
                  <div className="flex-1 min-w-0">
                    <h3 className="font-semibold text-gray-900 truncate">{selectedCategory.name}</h3>
                    <p className="text-sm text-gray-500 truncate">
                      {selectedCategory.description || 'Sem descrição'}
                    </p>
                  </div>
                  <button
                    onClick={() => setSelectedCategory(null)}
                    className="p-2 hover:bg-gray-100 rounded-full"
                  >
                    <X className="w-5 h-5 text-gray-500" />
                  </button>
                </div>
              </div>

              <div className="p-2">
                <button
                  onClick={() => openModal(selectedCategory)}
                  className="w-full flex items-center gap-3 p-3 hover:bg-gray-50 rounded-lg text-left"
                >
                  <div className="p-2 bg-blue-100 rounded-lg">
                    <Edit className="w-5 h-5 text-blue-600" />
                  </div>
                  <div>
                    <p className="font-medium text-gray-900">Editar categoria</p>
                    <p className="text-sm text-gray-500">Alterar nome, cor e descrição</p>
                  </div>
                </button>

                <button
                  onClick={() => handleDelete(selectedCategory)}
                  className="w-full flex items-center gap-3 p-3 hover:bg-red-50 rounded-lg text-left"
                >
                  <div className="p-2 bg-red-100 rounded-lg">
                    <Trash2 className="w-5 h-5 text-red-600" />
                  </div>
                  <div>
                    <p className="font-medium text-red-600">Excluir categoria</p>
                    <p className="text-sm text-gray-500">Remover permanentemente</p>
                  </div>
                </button>
              </div>

              <div className="p-4 border-t bg-gray-50">
                <button
                  onClick={() => setSelectedCategory(null)}
                  className="w-full py-3 text-center font-medium text-gray-700 bg-white border rounded-lg hover:bg-gray-50"
                >
                  Cancelar
                </button>
              </div>
            </div>
          </div>
        )}

        {/* Modal */}
        {isModalOpen && (
          <div className="fixed inset-0 z-50 flex items-end sm:items-center justify-center">
            <div className="absolute inset-0 bg-black/50" onClick={closeModal} />
            <div className="relative bg-white w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
              <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
                <h2 className="text-lg font-semibold">
                  {editingCategory ? 'Editar Categoria' : 'Nova Categoria'}
                </h2>
                <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-full">
                  <X className="w-5 h-5" />
                </button>
              </div>

              <form onSubmit={handleSubmit} className="flex-1 overflow-y-auto p-4 space-y-4">
                {/* Nome */}
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Nome *</label>
                  <input
                    type="text"
                    value={formData.name}
                    onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                    className={`w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent ${
                      formErrors.name ? 'border-red-500' : 'border-gray-300'
                    }`}
                    placeholder="Ex: Bebidas"
                  />
                  {formErrors.name && <p className="text-red-500 text-sm mt-1">{formErrors.name}</p>}
                </div>

                {/* Descrição */}
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Descrição</label>
                  <textarea
                    value={formData.description}
                    onChange={(e) => setFormData({ ...formData, description: e.target.value })}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                    rows={2}
                    placeholder="Descrição opcional da categoria"
                  />
                </div>

                {/* Cor */}
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Cor</label>
                  <div className="flex flex-wrap gap-2">
                    {colorOptions.map((color) => (
                      <button
                        key={color}
                        type="button"
                        onClick={() => setFormData({ ...formData, color })}
                        className={`w-10 h-10 rounded-lg border-2 transition-all ${
                          formData.color === color
                            ? 'border-gray-800 scale-110 shadow-lg'
                            : 'border-transparent hover:scale-105'
                        }`}
                        style={{ backgroundColor: color }}
                      />
                    ))}
                  </div>
                </div>

                {/* Categoria Pai */}
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">
                    Categoria Pai (opcional)
                  </label>
                  <select
                    value={formData.parent_id}
                    onChange={(e) => setFormData({ ...formData, parent_id: e.target.value })}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                  >
                    <option value="">Nenhuma (categoria principal)</option>
                    {categories
                      .filter((c) => !c.parent_id && c.id !== editingCategory?.id)
                      .map((c) => (
                        <option key={c.id} value={c.id}>
                          {c.name}
                        </option>
                      ))}
                  </select>
                </div>

                {/* Ordem */}
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">
                    Ordem de exibição
                  </label>
                  <input
                    type="number"
                    value={formData.sort_order}
                    onChange={(e) =>
                      setFormData({ ...formData, sort_order: parseInt(e.target.value) || 0 })
                    }
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                    min="0"
                  />
                  <p className="text-xs text-gray-500 mt-1">
                    Categorias com menor número aparecem primeiro
                  </p>
                </div>

                {saveMutation.isError && (
                  <p className="text-red-500 text-sm text-center">
                    {saveMutation.error?.message || 'Erro ao salvar categoria'}
                  </p>
                )}
              </form>

              {/* Actions */}
              <div className="flex gap-3 p-4 border-t bg-gray-50 flex-shrink-0">
                <button
                  type="button"
                  onClick={closeModal}
                  className="flex-1 py-3 text-gray-700 bg-gray-200 rounded-xl font-medium hover:bg-gray-300 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  type="submit"
                  onClick={handleSubmit}
                  disabled={saveMutation.isPending}
                  className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium hover:bg-blue-700 transition-colors disabled:opacity-50"
                >
                  {saveMutation.isPending ? 'Salvando...' : 'Salvar'}
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
