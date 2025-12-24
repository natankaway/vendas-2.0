/**
 * Componente de Status de Conexão
 *
 * Mostra o estado atual da conexão e pendências de sincronização.
 */

'use client';

import { useState } from 'react';
import { Wifi, WifiOff, Cloud, CloudOff, RefreshCw, AlertCircle } from 'lucide-react';
import { useOnlineStatus } from '@/lib/hooks/use-online-status';
import { fullSync } from '@/lib/services/sync-service';

interface ConnectionStatusProps {
  /**
   * Mostra versão compacta (apenas ícone)
   */
  compact?: boolean;
  /**
   * Classe CSS adicional
   */
  className?: string;
}

export function ConnectionStatus({ compact = false, className = '' }: ConnectionStatusProps) {
  const {
    isOnline,
    isOffline,
    isChecking,
    pendingSyncCount,
    isSyncing,
    checkConnection,
  } = useOnlineStatus();

  const [showDetails, setShowDetails] = useState(false);

  const handleSync = async () => {
    if (isSyncing || !isOnline) return;
    await fullSync();
  };

  const handleRefresh = async () => {
    await checkConnection();
  };

  // Versão compacta - apenas indicador
  if (compact) {
    return (
      <div
        className={`flex items-center gap-1 cursor-pointer ${className}`}
        onClick={() => setShowDetails(!showDetails)}
        title={isOnline ? 'Online' : 'Offline'}
      >
        {isOffline ? (
          <WifiOff className="w-4 h-4 text-red-500" />
        ) : isChecking ? (
          <Wifi className="w-4 h-4 text-yellow-500 animate-pulse" />
        ) : (
          <Wifi className="w-4 h-4 text-green-500" />
        )}

        {pendingSyncCount > 0 && (
          <span className="flex items-center justify-center w-4 h-4 bg-orange-500 text-white text-[10px] font-bold rounded-full">
            {pendingSyncCount > 9 ? '9+' : pendingSyncCount}
          </span>
        )}

        {/* Popup de detalhes */}
        {showDetails && (
          <div className="absolute top-full right-0 mt-2 w-64 bg-white rounded-xl shadow-lg border border-gray-200 p-3 z-50">
            <ConnectionStatusDetails
              isOnline={isOnline}
              isOffline={isOffline}
              isChecking={isChecking}
              pendingSyncCount={pendingSyncCount}
              isSyncing={isSyncing}
              onSync={handleSync}
              onRefresh={handleRefresh}
            />
          </div>
        )}
      </div>
    );
  }

  // Versão completa
  return (
    <div className={`bg-white rounded-xl shadow-sm border border-gray-100 p-3 ${className}`}>
      <ConnectionStatusDetails
        isOnline={isOnline}
        isOffline={isOffline}
        isChecking={isChecking}
        pendingSyncCount={pendingSyncCount}
        isSyncing={isSyncing}
        onSync={handleSync}
        onRefresh={handleRefresh}
      />
    </div>
  );
}

interface ConnectionStatusDetailsProps {
  isOnline: boolean;
  isOffline: boolean;
  isChecking: boolean;
  pendingSyncCount: number;
  isSyncing: boolean;
  onSync: () => void;
  onRefresh: () => void;
}

function ConnectionStatusDetails({
  isOnline,
  isOffline,
  isChecking,
  pendingSyncCount,
  isSyncing,
  onSync,
  onRefresh,
}: ConnectionStatusDetailsProps) {
  return (
    <div className="space-y-2">
      {/* Status da conexão */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2">
          {isOffline ? (
            <>
              <WifiOff className="w-5 h-5 text-red-500" />
              <span className="text-sm font-medium text-red-600">Offline</span>
            </>
          ) : isChecking ? (
            <>
              <Wifi className="w-5 h-5 text-yellow-500 animate-pulse" />
              <span className="text-sm font-medium text-yellow-600">Verificando...</span>
            </>
          ) : (
            <>
              <Wifi className="w-5 h-5 text-green-500" />
              <span className="text-sm font-medium text-green-600">Online</span>
            </>
          )}
        </div>

        <button
          onClick={onRefresh}
          className="p-1.5 hover:bg-gray-100 rounded-lg transition-colors"
          title="Verificar conexão"
        >
          <RefreshCw className={`w-4 h-4 text-gray-500 ${isChecking ? 'animate-spin' : ''}`} />
        </button>
      </div>

      {/* Pendências de sincronização */}
      {pendingSyncCount > 0 && (
        <div className="flex items-center justify-between py-2 px-3 bg-orange-50 rounded-lg">
          <div className="flex items-center gap-2">
            <AlertCircle className="w-4 h-4 text-orange-500" />
            <span className="text-sm text-orange-700">
              {pendingSyncCount} {pendingSyncCount === 1 ? 'item pendente' : 'itens pendentes'}
            </span>
          </div>

          {isOnline && (
            <button
              onClick={onSync}
              disabled={isSyncing}
              className="flex items-center gap-1 text-xs font-medium text-orange-600 hover:text-orange-700 disabled:opacity-50"
            >
              {isSyncing ? (
                <>
                  <RefreshCw className="w-3 h-3 animate-spin" />
                  Sincronizando...
                </>
              ) : (
                <>
                  <Cloud className="w-3 h-3" />
                  Sincronizar
                </>
              )}
            </button>
          )}
        </div>
      )}

      {/* Status do servidor */}
      <div className="flex items-center gap-2 text-xs text-gray-500">
        {isOnline ? (
          <>
            <Cloud className="w-3 h-3" />
            <span>Conectado ao servidor</span>
          </>
        ) : (
          <>
            <CloudOff className="w-3 h-3" />
            <span>Modo offline - dados salvos localmente</span>
          </>
        )}
      </div>
    </div>
  );
}

/**
 * Indicador minimalista para o header
 */
export function ConnectionIndicator({ className = '' }: { className?: string }) {
  const { isOnline, isOffline, pendingSyncCount, isSyncing } = useOnlineStatus();

  return (
    <div className={`flex items-center gap-1.5 ${className}`}>
      {isOffline ? (
        <div className="flex items-center gap-1 px-2 py-1 bg-red-100 rounded-full">
          <WifiOff className="w-3 h-3 text-red-600" />
          <span className="text-[10px] font-medium text-red-600">Offline</span>
        </div>
      ) : pendingSyncCount > 0 ? (
        <div className="flex items-center gap-1 px-2 py-1 bg-orange-100 rounded-full">
          {isSyncing ? (
            <RefreshCw className="w-3 h-3 text-orange-600 animate-spin" />
          ) : (
            <Cloud className="w-3 h-3 text-orange-600" />
          )}
          <span className="text-[10px] font-medium text-orange-600">
            {pendingSyncCount} pendente{pendingSyncCount > 1 ? 's' : ''}
          </span>
        </div>
      ) : (
        <div className="flex items-center gap-1 px-2 py-1 bg-green-100 rounded-full">
          <Wifi className="w-3 h-3 text-green-600" />
          <span className="text-[10px] font-medium text-green-600">Online</span>
        </div>
      )}
    </div>
  );
}
