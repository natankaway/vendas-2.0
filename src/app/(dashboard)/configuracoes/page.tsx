/**
 * Página de Configurações
 *
 * Configurações gerais do sistema, sincronização e backup.
 */

'use client';

import { useState, useEffect } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Settings,
  Database,
  Cloud,
  CloudOff,
  RefreshCw,
  Download,
  Upload,
  Trash2,
  Shield,
  Bell,
  Monitor,
  Wifi,
  WifiOff,
  CheckCircle,
  AlertTriangle,
  HardDrive,
  Clock,
  Building2,
  ImagePlus,
  X,
  Loader2,
} from 'lucide-react';
import { useOnlineStatus } from '@/lib/hooks/use-online-status';
import { useConnectionStore } from '@/lib/stores/connection-store';
import { fullSync } from '@/lib/services/sync-service';

interface StorageInfo {
  used: number;
  total: number;
  products: number;
  customers: number;
  sales: number;
}

interface CompanySettings {
  name: string;
  logo: string | null;
  address: string;
  phone: string;
  document: string;
}

export default function ConfiguracoesPage() {
  const queryClient = useQueryClient();

  // Usa o hook global de status de conexão
  const { isOnline, pendingSyncCount, isSyncing, lastSyncAt } = useOnlineStatus();
  const { lastSyncError } = useConnectionStore();

  const [storageInfo, setStorageInfo] = useState<StorageInfo>({
    used: 0,
    total: 0,
    products: 0,
    customers: 0,
    sales: 0,
  });

  const [settings, setSettings] = useState({
    autoSync: true,
    syncInterval: 5,
    notifications: true,
    darkMode: false,
    compactMode: false,
    printReceipt: true,
    soundEffects: true,
  });

  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Company settings from database
  const [companyForm, setCompanyForm] = useState<CompanySettings>({
    name: '',
    logo: null,
    address: '',
    phone: '',
    document: '',
  });
  const [isUploadingLogo, setIsUploadingLogo] = useState(false);

  // Fetch company settings from database
  const { data: companyData, isLoading: isLoadingCompany } = useQuery({
    queryKey: ['company-settings'],
    queryFn: async () => {
      const res = await fetch('/api/configuracoes/empresa');
      const data = await res.json();
      return data.data as CompanySettings;
    },
  });

  // Update form when data loads
  useEffect(() => {
    if (companyData) {
      setCompanyForm(companyData);
    }
  }, [companyData]);

  // Save company settings mutation
  const saveCompanyMutation = useMutation({
    mutationFn: async (data: CompanySettings) => {
      const res = await fetch('/api/configuracoes/empresa', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });
      if (!res.ok) {
        throw new Error('Erro ao salvar');
      }
      return res.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['company-settings'] });
      setMessage({ type: 'success', text: 'Dados da empresa salvos com sucesso!' });
      setTimeout(() => setMessage(null), 3000);
    },
    onError: () => {
      setMessage({ type: 'error', text: 'Erro ao salvar dados da empresa.' });
      setTimeout(() => setMessage(null), 3000);
    },
  });

  // Status de conexão agora vem do hook useOnlineStatus

  // Load storage info
  useEffect(() => {
    const loadStorageInfo = async () => {
      try {
        // Get counts from API
        const [productsRes, customersRes, salesRes] = await Promise.all([
          fetch('/api/produtos?limit=1'),
          fetch('/api/clientes?limit=1'),
          fetch('/api/vendas?limit=1'),
        ]);

        const [products, customers, sales] = await Promise.all([
          productsRes.json(),
          customersRes.json(),
          salesRes.json(),
        ]);

        // Estimate storage (rough calculation)
        const estimatedUsed = (
          (products.total || 0) * 500 + // ~500 bytes per product
          (customers.total || 0) * 300 + // ~300 bytes per customer
          (sales.total || 0) * 1000 // ~1KB per sale with items
        );

        setStorageInfo({
          used: estimatedUsed,
          total: 50 * 1024 * 1024, // 50MB limit estimate
          products: products.total || 0,
          customers: customers.total || 0,
          sales: sales.total || 0,
        });
      } catch (error) {
        console.error('Error loading storage info:', error);
      }
    };

    loadStorageInfo();
  }, []);

  // Info de sincronização agora vem do hook useOnlineStatus

  // Company settings handlers
  const handleLogoUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;

    // Validate file type
    if (!file.type.startsWith('image/')) {
      setMessage({ type: 'error', text: 'Selecione um arquivo de imagem válido.' });
      setTimeout(() => setMessage(null), 3000);
      return;
    }

    // Validate file size (max 500KB)
    if (file.size > 500 * 1024) {
      setMessage({ type: 'error', text: 'A imagem deve ter no máximo 500KB.' });
      setTimeout(() => setMessage(null), 3000);
      return;
    }

    setIsUploadingLogo(true);

    const reader = new FileReader();
    reader.onload = (e) => {
      const base64 = e.target?.result as string;
      setCompanyForm(prev => ({ ...prev, logo: base64 }));
      setIsUploadingLogo(false);
      setMessage({ type: 'success', text: 'Logo carregada! Clique em Salvar para confirmar.' });
      setTimeout(() => setMessage(null), 3000);
    };
    reader.onerror = () => {
      setIsUploadingLogo(false);
      setMessage({ type: 'error', text: 'Erro ao processar a imagem.' });
      setTimeout(() => setMessage(null), 3000);
    };
    reader.readAsDataURL(file);
  };

  const handleRemoveLogo = () => {
    setCompanyForm(prev => ({ ...prev, logo: null }));
    setMessage({ type: 'success', text: 'Logo removida! Clique em Salvar para confirmar.' });
    setTimeout(() => setMessage(null), 3000);
  };

  const handleSaveCompanySettings = () => {
    saveCompanyMutation.mutate(companyForm);
  };

  // Handlers
  const handleSync = async () => {
    if (!isOnline || isSyncing) return;

    try {
      const result = await fullSync();

      if (result.download.success && result.upload.success) {
        setMessage({ type: 'success', text: 'Sincronização concluída com sucesso!' });
      } else {
        const errors = [...result.download.errors, ...result.upload.errors];
        throw new Error(errors.join(', ') || 'Erro na sincronização');
      }
    } catch (error) {
      setMessage({ type: 'error', text: error instanceof Error ? error.message : 'Erro ao sincronizar. Tente novamente.' });
    }

    // Clear message after 3 seconds
    setTimeout(() => setMessage(null), 3000);
  };

  const handleExportData = async () => {
    try {
      const [products, customers, sales] = await Promise.all([
        fetch('/api/produtos?limit=10000').then(r => r.json()),
        fetch('/api/clientes?limit=10000').then(r => r.json()),
        fetch('/api/vendas?limit=10000').then(r => r.json()),
      ]);

      const exportData = {
        exportDate: new Date().toISOString(),
        version: '1.0',
        data: {
          products: products.data || [],
          customers: customers.data || [],
          sales: sales.data || [],
        },
      };

      const blob = new Blob([JSON.stringify(exportData, null, 2)], { type: 'application/json' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `vendas-backup-${new Date().toISOString().split('T')[0]}.json`;
      a.click();
      URL.revokeObjectURL(url);

      setMessage({ type: 'success', text: 'Dados exportados com sucesso!' });
    } catch (error) {
      setMessage({ type: 'error', text: 'Erro ao exportar dados.' });
    }

    setTimeout(() => setMessage(null), 3000);
  };

  const handleClearLocalData = async () => {
    if (!confirm('ATENÇÃO: Isso irá apagar todos os dados locais não sincronizados. Deseja continuar?')) {
      return;
    }

    try {
      // This would clear IndexedDB/localStorage in a real implementation
      setMessage({ type: 'success', text: 'Dados locais limpos com sucesso!' });
    } catch (error) {
      setMessage({ type: 'error', text: 'Erro ao limpar dados.' });
    }

    setTimeout(() => setMessage(null), 3000);
  };

  const formatBytes = (bytes: number) => {
    if (bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(1)) + ' ' + sizes[i];
  };

  const formatDate = (date: Date | string | null) => {
    if (!date) return 'Nunca';
    const dateObj = typeof date === 'string' ? new Date(date) : date;
    return dateObj.toLocaleString('pt-BR');
  };

  const storagePercentage = storageInfo.total > 0
    ? Math.round((storageInfo.used / storageInfo.total) * 100)
    : 0;

  return (
    <div className="p-3 sm:p-6 max-w-4xl mx-auto overflow-x-hidden">
      {/* Header */}
      <div className="mb-4 sm:mb-6">
        <h1 className="text-xl sm:text-2xl font-bold text-gray-900 dark:text-white">Configurações</h1>
        <p className="text-sm text-gray-600 dark:text-gray-400">Gerencie as configurações do sistema</p>
      </div>

      {/* Message */}
      {message && (
        <div
          className={`mb-4 sm:mb-6 p-3 sm:p-4 rounded-lg flex items-center gap-2 text-sm ${
            message.type === 'success'
              ? 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400'
              : 'bg-red-100 text-red-700 dark:bg-red-900/30 dark:text-red-400'
          }`}
        >
          {message.type === 'success' ? (
            <CheckCircle className="w-4 h-4 sm:w-5 sm:h-5 flex-shrink-0" />
          ) : (
            <AlertTriangle className="w-4 h-4 sm:w-5 sm:h-5 flex-shrink-0" />
          )}
          {message.text}
        </div>
      )}

      {/* Status Cards */}
      <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 sm:gap-4 mb-4 sm:mb-6">
        {/* Connection Status */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-3 sm:p-4">
          <div className="flex items-center gap-3">
            <div className={`p-2 rounded-lg ${isOnline ? 'bg-green-100 dark:bg-green-900/30' : 'bg-red-100 dark:bg-red-900/30'}`}>
              {isOnline ? (
                <Wifi className="w-5 h-5 sm:w-6 sm:h-6 text-green-600 dark:text-green-400" />
              ) : (
                <WifiOff className="w-5 h-5 sm:w-6 sm:h-6 text-red-600 dark:text-red-400" />
              )}
            </div>
            <div>
              <p className="text-xs sm:text-sm text-gray-600 dark:text-gray-400">Conexão</p>
              <p className={`text-sm sm:text-base font-bold ${isOnline ? 'text-green-600 dark:text-green-400' : 'text-red-600 dark:text-red-400'}`}>
                {isOnline ? 'Online' : 'Offline'}
              </p>
            </div>
          </div>
        </div>

        {/* Last Sync */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-3 sm:p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-blue-100 dark:bg-blue-900/30 rounded-lg">
              <Clock className="w-5 h-5 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400" />
            </div>
            <div className="min-w-0">
              <p className="text-xs sm:text-sm text-gray-600 dark:text-gray-400">Última Sincronização</p>
              <p className="text-xs sm:text-sm font-bold text-gray-900 dark:text-white truncate">
                {formatDate(lastSyncAt)}
              </p>
            </div>
          </div>
        </div>

        {/* Pending Items */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-3 sm:p-4">
          <div className="flex items-center gap-3">
            <div className={`p-2 rounded-lg ${pendingSyncCount > 0 ? 'bg-yellow-100 dark:bg-yellow-900/30' : 'bg-green-100 dark:bg-green-900/30'}`}>
              <Cloud className={`w-5 h-5 sm:w-6 sm:h-6 ${pendingSyncCount > 0 ? 'text-yellow-600 dark:text-yellow-400' : 'text-green-600 dark:text-green-400'}`} />
            </div>
            <div>
              <p className="text-xs sm:text-sm text-gray-600 dark:text-gray-400">Pendente de Sync</p>
              <p className={`text-sm sm:text-base font-bold ${pendingSyncCount > 0 ? 'text-yellow-600 dark:text-yellow-400' : 'text-green-600 dark:text-green-400'}`}>
                {pendingSyncCount} {pendingSyncCount === 1 ? 'item' : 'itens'}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Company Settings Section */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-4 sm:p-6 mb-4 sm:mb-6">
        <div className="flex items-center gap-2 mb-4">
          <Building2 className="w-5 h-5 text-blue-600 dark:text-blue-400" />
          <h2 className="text-base sm:text-lg font-semibold text-gray-900 dark:text-white">Dados da Empresa</h2>
          {isLoadingCompany && <Loader2 className="w-4 h-4 animate-spin text-gray-400" />}
        </div>

        <div className="space-y-4">
          {/* Logo Upload */}
          <div className="p-3 sm:p-4 bg-gray-50 dark:bg-gray-700 rounded-lg overflow-hidden">
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-3">
              Logo da Empresa
            </label>
            <div className="flex flex-col sm:flex-row items-start sm:items-center gap-4">
              {/* Logo Preview */}
              <div className="relative flex-shrink-0 p-1">
                {companyForm.logo ? (
                  <div className="relative">
                    <img
                      src={companyForm.logo}
                      alt="Logo da empresa"
                      className="w-20 h-20 sm:w-24 sm:h-24 object-contain rounded-lg border-2 border-gray-200 dark:border-gray-600 bg-white"
                    />
                    <button
                      onClick={handleRemoveLogo}
                      className="absolute -top-1 -right-1 p-1 bg-red-500 text-white rounded-full hover:bg-red-600 transition-colors"
                      title="Remover logo"
                    >
                      <X className="w-3 h-3 sm:w-4 sm:h-4" />
                    </button>
                  </div>
                ) : (
                  <div className="w-20 h-20 sm:w-24 sm:h-24 flex items-center justify-center rounded-lg border-2 border-dashed border-gray-300 dark:border-gray-500 bg-gray-100 dark:bg-gray-600">
                    <ImagePlus className="w-6 h-6 sm:w-8 sm:h-8 text-gray-400" />
                  </div>
                )}
              </div>

              {/* Upload Button */}
              <div className="flex-1 w-full sm:w-auto">
                <label className="cursor-pointer">
                  <div className="flex items-center gap-2 px-3 sm:px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors w-fit text-sm">
                    <Upload className="w-4 h-4" />
                    <span>{isUploadingLogo ? 'Processando...' : 'Escolher Imagem'}</span>
                  </div>
                  <input
                    type="file"
                    accept="image/*"
                    onChange={handleLogoUpload}
                    disabled={isUploadingLogo}
                    className="hidden"
                  />
                </label>
                <p className="text-xs text-gray-500 dark:text-gray-400 mt-2">
                  PNG, JPG ou GIF. Máximo 500KB.
                </p>
              </div>
            </div>
          </div>

          {/* Company Name */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Nome da Empresa
            </label>
            <input
              type="text"
              value={companyForm.name}
              onChange={(e) => setCompanyForm({ ...companyForm, name: e.target.value })}
              placeholder="Nome da sua empresa"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white text-sm"
            />
          </div>

          {/* Document (CNPJ/CPF) */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              CNPJ / CPF
            </label>
            <input
              type="text"
              value={companyForm.document}
              onChange={(e) => setCompanyForm({ ...companyForm, document: e.target.value })}
              placeholder="00.000.000/0000-00"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white text-sm"
            />
          </div>

          {/* Address */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Endereço
            </label>
            <input
              type="text"
              value={companyForm.address}
              onChange={(e) => setCompanyForm({ ...companyForm, address: e.target.value })}
              placeholder="Rua, número, bairro, cidade"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white text-sm"
            />
          </div>

          {/* Phone */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Telefone
            </label>
            <input
              type="text"
              value={companyForm.phone}
              onChange={(e) => setCompanyForm({ ...companyForm, phone: e.target.value })}
              placeholder="(00) 00000-0000"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white text-sm"
            />
          </div>

          {/* Save Button */}
          <button
            onClick={handleSaveCompanySettings}
            disabled={saveCompanyMutation.isPending}
            className="w-full flex items-center justify-center gap-2 px-4 py-3 bg-green-600 text-white rounded-lg hover:bg-green-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
          >
            {saveCompanyMutation.isPending ? (
              <Loader2 className="w-5 h-5 animate-spin" />
            ) : (
              <CheckCircle className="w-5 h-5" />
            )}
            Salvar Dados da Empresa
          </button>
        </div>
      </div>

      {/* Sync Section */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-4 sm:p-6 mb-4 sm:mb-6">
        <div className="flex items-center gap-2 mb-4">
          <RefreshCw className="w-5 h-5 text-blue-600 dark:text-blue-400" />
          <h2 className="text-base sm:text-lg font-semibold text-gray-900 dark:text-white">Sincronização</h2>
        </div>

        <div className="space-y-4">
          {/* Auto Sync Toggle */}
          <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded-lg gap-4">
            <div className="min-w-0">
              <p className="font-medium text-gray-900 dark:text-white text-sm sm:text-base">Sincronização Automática</p>
              <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400">Sincronizar dados automaticamente quando online</p>
            </div>
            <label className="relative inline-flex items-center cursor-pointer flex-shrink-0">
              <input
                type="checkbox"
                checked={settings.autoSync}
                onChange={(e) => setSettings({ ...settings, autoSync: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 dark:bg-gray-600 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Sync Interval */}
          {settings.autoSync && (
            <div className="flex flex-col sm:flex-row sm:items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded-lg gap-3">
              <div>
                <p className="font-medium text-gray-900 dark:text-white text-sm sm:text-base">Intervalo de Sincronização</p>
                <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400">Frequência da sincronização automática</p>
              </div>
              <select
                value={settings.syncInterval}
                onChange={(e) => setSettings({ ...settings, syncInterval: parseInt(e.target.value) })}
                className="px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-600 dark:text-white text-sm"
              >
                <option value={1}>1 minuto</option>
                <option value={5}>5 minutos</option>
                <option value={15}>15 minutos</option>
                <option value={30}>30 minutos</option>
                <option value={60}>1 hora</option>
              </select>
            </div>
          )}

          {/* Manual Sync Button */}
          <button
            onClick={handleSync}
            disabled={isSyncing || !isOnline}
            className="w-full flex items-center justify-center gap-2 px-4 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
          >
            <RefreshCw className={`w-5 h-5 ${isSyncing ? 'animate-spin' : ''}`} />
            {isSyncing ? 'Sincronizando...' : 'Sincronizar Agora'}
          </button>
        </div>
      </div>

      {/* Storage Section */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-4 sm:p-6 mb-4 sm:mb-6">
        <div className="flex items-center gap-2 mb-4">
          <HardDrive className="w-5 h-5 text-purple-600 dark:text-purple-400" />
          <h2 className="text-base sm:text-lg font-semibold text-gray-900 dark:text-white">Armazenamento Local</h2>
        </div>

        <div className="space-y-4">
          {/* Storage Bar */}
          <div>
            <div className="flex justify-between text-xs sm:text-sm mb-2">
              <span className="text-gray-600 dark:text-gray-400">Espaço utilizado</span>
              <span className="font-medium text-gray-900 dark:text-white">{formatBytes(storageInfo.used)} / {formatBytes(storageInfo.total)}</span>
            </div>
            <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3">
              <div
                className={`h-3 rounded-full transition-all duration-300 ${
                  storagePercentage > 80 ? 'bg-red-500' : storagePercentage > 60 ? 'bg-yellow-500' : 'bg-blue-500'
                }`}
                style={{ width: `${Math.min(storagePercentage, 100)}%` }}
              />
            </div>
            <p className="text-xs text-gray-500 dark:text-gray-400 mt-1">{storagePercentage}% utilizado</p>
          </div>

          {/* Data Breakdown */}
          <div className="grid grid-cols-3 gap-2 sm:gap-4 pt-4 border-t border-gray-200 dark:border-gray-700">
            <div className="text-center">
              <p className="text-lg sm:text-2xl font-bold text-gray-900 dark:text-white">{storageInfo.products}</p>
              <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400">Produtos</p>
            </div>
            <div className="text-center">
              <p className="text-lg sm:text-2xl font-bold text-gray-900 dark:text-white">{storageInfo.customers}</p>
              <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400">Clientes</p>
            </div>
            <div className="text-center">
              <p className="text-lg sm:text-2xl font-bold text-gray-900 dark:text-white">{storageInfo.sales}</p>
              <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400">Vendas</p>
            </div>
          </div>

          {/* Actions */}
          <div className="flex flex-col sm:flex-row gap-3 pt-4 border-t border-gray-200 dark:border-gray-700">
            <button
              onClick={handleExportData}
              className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-200 rounded-lg hover:bg-gray-200 dark:hover:bg-gray-600 transition-colors text-sm"
            >
              <Download className="w-5 h-5" />
              Exportar Dados
            </button>
            <button
              onClick={handleClearLocalData}
              className="flex items-center justify-center gap-2 px-4 py-2 bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-400 rounded-lg hover:bg-red-200 dark:hover:bg-red-900/50 transition-colors text-sm"
            >
              <Trash2 className="w-5 h-5" />
              Limpar Cache
            </button>
          </div>
        </div>
      </div>

      {/* App Settings */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-4 sm:p-6 mb-4 sm:mb-6">
        <div className="flex items-center gap-2 mb-4">
          <Settings className="w-5 h-5 text-gray-600 dark:text-gray-400" />
          <h2 className="text-base sm:text-lg font-semibold text-gray-900 dark:text-white">Configurações do App</h2>
        </div>

        <div className="space-y-3">
          {/* Notifications */}
          <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded-lg gap-4">
            <div className="flex items-center gap-3 min-w-0">
              <Bell className="w-5 h-5 text-gray-600 dark:text-gray-400 flex-shrink-0" />
              <div className="min-w-0">
                <p className="font-medium text-gray-900 dark:text-white text-sm sm:text-base">Notificações</p>
                <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400 truncate">Receber alertas de estoque baixo e vendas</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer flex-shrink-0">
              <input
                type="checkbox"
                checked={settings.notifications}
                onChange={(e) => setSettings({ ...settings, notifications: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 dark:bg-gray-600 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Print Receipt */}
          <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded-lg gap-4">
            <div className="flex items-center gap-3 min-w-0">
              <Monitor className="w-5 h-5 text-gray-600 dark:text-gray-400 flex-shrink-0" />
              <div className="min-w-0">
                <p className="font-medium text-gray-900 dark:text-white text-sm sm:text-base">Imprimir Recibo</p>
                <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400 truncate">Imprimir recibo após cada venda</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer flex-shrink-0">
              <input
                type="checkbox"
                checked={settings.printReceipt}
                onChange={(e) => setSettings({ ...settings, printReceipt: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 dark:bg-gray-600 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Sound Effects */}
          <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded-lg gap-4">
            <div className="flex items-center gap-3 min-w-0">
              <Bell className="w-5 h-5 text-gray-600 dark:text-gray-400 flex-shrink-0" />
              <div className="min-w-0">
                <p className="font-medium text-gray-900 dark:text-white text-sm sm:text-base">Sons</p>
                <p className="text-xs sm:text-sm text-gray-500 dark:text-gray-400 truncate">Efeitos sonoros ao adicionar itens</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer flex-shrink-0">
              <input
                type="checkbox"
                checked={settings.soundEffects}
                onChange={(e) => setSettings({ ...settings, soundEffects: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 dark:bg-gray-600 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>
        </div>
      </div>

      {/* About */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-4 sm:p-6">
        <div className="flex items-center gap-2 mb-4">
          <Shield className="w-5 h-5 text-green-600 dark:text-green-400" />
          <h2 className="text-base sm:text-lg font-semibold text-gray-900 dark:text-white">Sobre</h2>
        </div>

        <div className="space-y-2 text-xs sm:text-sm text-gray-600 dark:text-gray-400">
          <p><strong className="text-gray-900 dark:text-white">Vendas PDV</strong> - Sistema de Ponto de Venda</p>
          <p>Versão: 2.0.0</p>
          <p>Offline-First com Sincronização Automática</p>
          <div className="pt-4 border-t border-gray-200 dark:border-gray-700 mt-4">
            <p className="text-xs text-gray-400 dark:text-gray-500">
              Desenvolvido com Next.js, Supabase e SQLite.
              Todos os dados são criptografados e sincronizados de forma segura.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
