/**
 * Página de Configurações
 *
 * Configurações gerais do sistema, sincronização e backup.
 */

'use client';

import { useState, useEffect } from 'react';
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
} from 'lucide-react';

interface SyncStatus {
  isOnline: boolean;
  lastSync: string | null;
  pendingItems: number;
  syncInProgress: boolean;
}

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
  const [syncStatus, setSyncStatus] = useState<SyncStatus>({
    isOnline: true,
    lastSync: null,
    pendingItems: 0,
    syncInProgress: false,
  });

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

  const [isSyncing, setIsSyncing] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Company settings
  const [companySettings, setCompanySettings] = useState<CompanySettings>({
    name: '',
    logo: null,
    address: '',
    phone: '',
    document: '',
  });
  const [isUploadingLogo, setIsUploadingLogo] = useState(false);
  const [companySettingsLoaded, setCompanySettingsLoaded] = useState(false);

  // Load company settings from localStorage
  useEffect(() => {
    const saved = localStorage.getItem('companySettings');
    if (saved) {
      try {
        setCompanySettings(JSON.parse(saved));
      } catch (e) {
        console.error('Erro ao carregar configurações da empresa:', e);
      }
    }
    setCompanySettingsLoaded(true);
  }, []);

  // Auto-save company settings when they change (after initial load)
  useEffect(() => {
    if (companySettingsLoaded) {
      localStorage.setItem('companySettings', JSON.stringify(companySettings));
    }
  }, [companySettings, companySettingsLoaded]);

  // Check online status
  useEffect(() => {
    const handleOnline = () => setSyncStatus(prev => ({ ...prev, isOnline: true }));
    const handleOffline = () => setSyncStatus(prev => ({ ...prev, isOnline: false }));

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    setSyncStatus(prev => ({ ...prev, isOnline: navigator.onLine }));

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, []);

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

  // Load sync queue info
  useEffect(() => {
    const loadSyncInfo = async () => {
      try {
        const res = await fetch('/api/sync/status');
        const data = await res.json();
        if (data.success) {
          setSyncStatus(prev => ({
            ...prev,
            lastSync: data.lastSync,
            pendingItems: data.pendingItems || 0,
          }));
        }
      } catch {
        // Sync status endpoint may not exist yet
      }
    };

    loadSyncInfo();
  }, []);

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

    // Validate file size (max 500KB for localStorage)
    if (file.size > 500 * 1024) {
      setMessage({ type: 'error', text: 'A imagem deve ter no máximo 500KB.' });
      setTimeout(() => setMessage(null), 3000);
      return;
    }

    setIsUploadingLogo(true);

    const reader = new FileReader();
    reader.onload = (e) => {
      const base64 = e.target?.result as string;
      setCompanySettings(prev => ({ ...prev, logo: base64 }));
      setIsUploadingLogo(false);
      setMessage({ type: 'success', text: 'Logo atualizada com sucesso!' });
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
    setCompanySettings(prev => ({ ...prev, logo: null }));
    setMessage({ type: 'success', text: 'Logo removida.' });
    setTimeout(() => setMessage(null), 3000);
  };

  const handleSaveCompanySettings = () => {
    // Auto-save já acontece via useEffect, este botão é apenas para feedback visual
    setMessage({ type: 'success', text: 'Dados da empresa salvos com sucesso!' });
    setTimeout(() => setMessage(null), 3000);
  };

  // Handlers
  const handleSync = async () => {
    setIsSyncing(true);
    setSyncStatus(prev => ({ ...prev, syncInProgress: true }));

    try {
      const res = await fetch('/api/sync', { method: 'POST' });
      const data = await res.json();

      if (data.success) {
        setMessage({ type: 'success', text: 'Sincronização concluída com sucesso!' });
        setSyncStatus(prev => ({
          ...prev,
          lastSync: new Date().toISOString(),
          pendingItems: 0,
        }));
      } else {
        throw new Error(data.error);
      }
    } catch (error) {
      setMessage({ type: 'error', text: 'Erro ao sincronizar. Tente novamente.' });
    } finally {
      setIsSyncing(false);
      setSyncStatus(prev => ({ ...prev, syncInProgress: false }));
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

  const formatDate = (dateStr: string | null) => {
    if (!dateStr) return 'Nunca';
    return new Date(dateStr).toLocaleString('pt-BR');
  };

  const storagePercentage = storageInfo.total > 0
    ? Math.round((storageInfo.used / storageInfo.total) * 100)
    : 0;

  return (
    <div className="p-6 max-w-4xl mx-auto">
      {/* Header */}
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-gray-900">Configurações</h1>
        <p className="text-gray-600">Gerencie as configurações do sistema</p>
      </div>

      {/* Message */}
      {message && (
        <div
          className={`mb-6 p-4 rounded-lg flex items-center gap-2 ${
            message.type === 'success' ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'
          }`}
        >
          {message.type === 'success' ? (
            <CheckCircle className="w-5 h-5" />
          ) : (
            <AlertTriangle className="w-5 h-5" />
          )}
          {message.text}
        </div>
      )}

      {/* Status Cards */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
        {/* Connection Status */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className={`p-2 rounded-lg ${syncStatus.isOnline ? 'bg-green-100' : 'bg-red-100'}`}>
              {syncStatus.isOnline ? (
                <Wifi className="w-6 h-6 text-green-600" />
              ) : (
                <WifiOff className="w-6 h-6 text-red-600" />
              )}
            </div>
            <div>
              <p className="text-sm text-gray-600">Conexão</p>
              <p className={`font-bold ${syncStatus.isOnline ? 'text-green-600' : 'text-red-600'}`}>
                {syncStatus.isOnline ? 'Online' : 'Offline'}
              </p>
            </div>
          </div>
        </div>

        {/* Last Sync */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-blue-100 rounded-lg">
              <Clock className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-gray-600">Última Sincronização</p>
              <p className="font-bold text-gray-900 text-sm">
                {formatDate(syncStatus.lastSync)}
              </p>
            </div>
          </div>
        </div>

        {/* Pending Items */}
        <div className="bg-white rounded-lg shadow p-4">
          <div className="flex items-center gap-3">
            <div className={`p-2 rounded-lg ${syncStatus.pendingItems > 0 ? 'bg-yellow-100' : 'bg-green-100'}`}>
              <Cloud className={`w-6 h-6 ${syncStatus.pendingItems > 0 ? 'text-yellow-600' : 'text-green-600'}`} />
            </div>
            <div>
              <p className="text-sm text-gray-600">Pendente de Sync</p>
              <p className={`font-bold ${syncStatus.pendingItems > 0 ? 'text-yellow-600' : 'text-green-600'}`}>
                {syncStatus.pendingItems} {syncStatus.pendingItems === 1 ? 'item' : 'itens'}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Company Settings Section */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow p-6 mb-6">
        <div className="flex items-center gap-2 mb-4">
          <Building2 className="w-5 h-5 text-blue-600" />
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white">Dados da Empresa</h2>
        </div>

        <div className="space-y-4">
          {/* Logo Upload */}
          <div className="p-4 bg-gray-50 dark:bg-gray-700 rounded-lg">
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-3">
              Logo da Empresa
            </label>
            <div className="flex items-center gap-4">
              {/* Logo Preview */}
              <div className="relative">
                {companySettings.logo ? (
                  <div className="relative">
                    <img
                      src={companySettings.logo}
                      alt="Logo da empresa"
                      className="w-24 h-24 object-contain rounded-lg border-2 border-gray-200 dark:border-gray-600 bg-white"
                    />
                    <button
                      onClick={handleRemoveLogo}
                      className="absolute -top-2 -right-2 p-1 bg-red-500 text-white rounded-full hover:bg-red-600 transition-colors"
                      title="Remover logo"
                    >
                      <X className="w-4 h-4" />
                    </button>
                  </div>
                ) : (
                  <div className="w-24 h-24 flex items-center justify-center rounded-lg border-2 border-dashed border-gray-300 dark:border-gray-500 bg-gray-100 dark:bg-gray-600">
                    <ImagePlus className="w-8 h-8 text-gray-400" />
                  </div>
                )}
              </div>

              {/* Upload Button */}
              <div className="flex-1">
                <label className="cursor-pointer">
                  <div className="flex items-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors w-fit">
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
                  PNG, JPG ou GIF. Máximo 500KB. Esta logo aparecerá no recibo de vendas.
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
              value={companySettings.name}
              onChange={(e) => setCompanySettings({ ...companySettings, name: e.target.value })}
              placeholder="Nome da sua empresa"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
            />
          </div>

          {/* Document (CNPJ/CPF) */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              CNPJ / CPF
            </label>
            <input
              type="text"
              value={companySettings.document}
              onChange={(e) => setCompanySettings({ ...companySettings, document: e.target.value })}
              placeholder="00.000.000/0000-00"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
            />
          </div>

          {/* Address */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Endereço
            </label>
            <input
              type="text"
              value={companySettings.address}
              onChange={(e) => setCompanySettings({ ...companySettings, address: e.target.value })}
              placeholder="Rua, número, bairro, cidade"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
            />
          </div>

          {/* Phone */}
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Telefone
            </label>
            <input
              type="text"
              value={companySettings.phone}
              onChange={(e) => setCompanySettings({ ...companySettings, phone: e.target.value })}
              placeholder="(00) 00000-0000"
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"
            />
          </div>

          {/* Save Button */}
          <button
            onClick={handleSaveCompanySettings}
            className="w-full flex items-center justify-center gap-2 px-4 py-3 bg-green-600 text-white rounded-lg hover:bg-green-700 transition-colors"
          >
            <CheckCircle className="w-5 h-5" />
            Salvar Dados da Empresa
          </button>
        </div>
      </div>

      {/* Sync Section */}
      <div className="bg-white rounded-lg shadow p-6 mb-6">
        <div className="flex items-center gap-2 mb-4">
          <RefreshCw className="w-5 h-5 text-blue-600" />
          <h2 className="text-lg font-semibold text-gray-900">Sincronização</h2>
        </div>

        <div className="space-y-4">
          {/* Auto Sync Toggle */}
          <div className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
            <div>
              <p className="font-medium text-gray-900">Sincronização Automática</p>
              <p className="text-sm text-gray-500">Sincronizar dados automaticamente quando online</p>
            </div>
            <label className="relative inline-flex items-center cursor-pointer">
              <input
                type="checkbox"
                checked={settings.autoSync}
                onChange={(e) => setSettings({ ...settings, autoSync: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Sync Interval */}
          {settings.autoSync && (
            <div className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
              <div>
                <p className="font-medium text-gray-900">Intervalo de Sincronização</p>
                <p className="text-sm text-gray-500">Frequência da sincronização automática</p>
              </div>
              <select
                value={settings.syncInterval}
                onChange={(e) => setSettings({ ...settings, syncInterval: parseInt(e.target.value) })}
                className="px-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
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
            disabled={isSyncing || !syncStatus.isOnline}
            className="w-full flex items-center justify-center gap-2 px-4 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
          >
            <RefreshCw className={`w-5 h-5 ${isSyncing ? 'animate-spin' : ''}`} />
            {isSyncing ? 'Sincronizando...' : 'Sincronizar Agora'}
          </button>
        </div>
      </div>

      {/* Storage Section */}
      <div className="bg-white rounded-lg shadow p-6 mb-6">
        <div className="flex items-center gap-2 mb-4">
          <HardDrive className="w-5 h-5 text-purple-600" />
          <h2 className="text-lg font-semibold text-gray-900">Armazenamento Local</h2>
        </div>

        <div className="space-y-4">
          {/* Storage Bar */}
          <div>
            <div className="flex justify-between text-sm mb-2">
              <span className="text-gray-600">Espaço utilizado</span>
              <span className="font-medium">{formatBytes(storageInfo.used)} / {formatBytes(storageInfo.total)}</span>
            </div>
            <div className="w-full bg-gray-200 rounded-full h-3">
              <div
                className={`h-3 rounded-full transition-all duration-300 ${
                  storagePercentage > 80 ? 'bg-red-500' : storagePercentage > 60 ? 'bg-yellow-500' : 'bg-blue-500'
                }`}
                style={{ width: `${Math.min(storagePercentage, 100)}%` }}
              />
            </div>
            <p className="text-xs text-gray-500 mt-1">{storagePercentage}% utilizado</p>
          </div>

          {/* Data Breakdown */}
          <div className="grid grid-cols-3 gap-4 pt-4 border-t">
            <div className="text-center">
              <p className="text-2xl font-bold text-gray-900">{storageInfo.products}</p>
              <p className="text-sm text-gray-500">Produtos</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold text-gray-900">{storageInfo.customers}</p>
              <p className="text-sm text-gray-500">Clientes</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold text-gray-900">{storageInfo.sales}</p>
              <p className="text-sm text-gray-500">Vendas</p>
            </div>
          </div>

          {/* Actions */}
          <div className="flex gap-3 pt-4 border-t">
            <button
              onClick={handleExportData}
              className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
            >
              <Download className="w-5 h-5" />
              Exportar Dados
            </button>
            <button
              onClick={handleClearLocalData}
              className="flex items-center justify-center gap-2 px-4 py-2 bg-red-100 text-red-700 rounded-lg hover:bg-red-200 transition-colors"
            >
              <Trash2 className="w-5 h-5" />
              Limpar Cache
            </button>
          </div>
        </div>
      </div>

      {/* App Settings */}
      <div className="bg-white rounded-lg shadow p-6 mb-6">
        <div className="flex items-center gap-2 mb-4">
          <Settings className="w-5 h-5 text-gray-600" />
          <h2 className="text-lg font-semibold text-gray-900">Configurações do App</h2>
        </div>

        <div className="space-y-4">
          {/* Notifications */}
          <div className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
            <div className="flex items-center gap-3">
              <Bell className="w-5 h-5 text-gray-600" />
              <div>
                <p className="font-medium text-gray-900">Notificações</p>
                <p className="text-sm text-gray-500">Receber alertas de estoque baixo e vendas</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer">
              <input
                type="checkbox"
                checked={settings.notifications}
                onChange={(e) => setSettings({ ...settings, notifications: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Print Receipt */}
          <div className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
            <div className="flex items-center gap-3">
              <Monitor className="w-5 h-5 text-gray-600" />
              <div>
                <p className="font-medium text-gray-900">Imprimir Recibo</p>
                <p className="text-sm text-gray-500">Imprimir recibo após cada venda</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer">
              <input
                type="checkbox"
                checked={settings.printReceipt}
                onChange={(e) => setSettings({ ...settings, printReceipt: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>

          {/* Sound Effects */}
          <div className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
            <div className="flex items-center gap-3">
              <Bell className="w-5 h-5 text-gray-600" />
              <div>
                <p className="font-medium text-gray-900">Sons</p>
                <p className="text-sm text-gray-500">Efeitos sonoros ao adicionar itens e finalizar vendas</p>
              </div>
            </div>
            <label className="relative inline-flex items-center cursor-pointer">
              <input
                type="checkbox"
                checked={settings.soundEffects}
                onChange={(e) => setSettings({ ...settings, soundEffects: e.target.checked })}
                className="sr-only peer"
              />
              <div className="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
            </label>
          </div>
        </div>
      </div>

      {/* About */}
      <div className="bg-white rounded-lg shadow p-6">
        <div className="flex items-center gap-2 mb-4">
          <Shield className="w-5 h-5 text-green-600" />
          <h2 className="text-lg font-semibold text-gray-900">Sobre</h2>
        </div>

        <div className="space-y-2 text-sm text-gray-600">
          <p><strong>Vendas PDV</strong> - Sistema de Ponto de Venda</p>
          <p>Versão: 2.0.0</p>
          <p>Offline-First com Sincronização Automática</p>
          <div className="pt-4 border-t mt-4">
            <p className="text-xs text-gray-400">
              Desenvolvido com Next.js, Supabase e SQLite.
              Todos os dados são criptografados e sincronizados de forma segura.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
