/**
 * Provider de Sincronização Automática
 *
 * Inicializa o serviço de sincronização e mantém o estado de conexão atualizado.
 * Deve ser colocado no layout principal da aplicação.
 */

'use client';

import { useEffect, useRef, useCallback } from 'react';
import { useConnectionStore } from '@/lib/stores/connection-store';
import { startAutoSync, getSyncStatus, onSyncStatusChange, syncAll, initOfflineData } from '@/lib/services/sync-service';

// Controle global para evitar múltiplas inicializações
let isInitialized = false;

export function SyncProvider({ children }: { children: React.ReactNode }) {
  const mountedRef = useRef(true);
  const initRef = useRef(false);

  const {
    setPendingSyncCount,
    setSyncing,
    setLastSync,
    status: connectionStatus,
  } = useConnectionStore();

  /**
   * Atualiza o estado da store com o status do sync
   */
  const updateSyncState = useCallback(async () => {
    if (!mountedRef.current) return;

    try {
      const syncStatus = await getSyncStatus();
      setPendingSyncCount(syncStatus.pendingCount);
      setSyncing(syncStatus.isSyncing);

      if (syncStatus.lastSync) {
        setLastSync(new Date(syncStatus.lastSync), syncStatus.lastError || undefined);
      }
    } catch (error) {
      console.error('[SyncProvider] Erro ao atualizar estado:', error);
    }
  }, [setPendingSyncCount, setSyncing, setLastSync]);

  /**
   * Inicializa sincronização quando online
   */
  const handleOnlineSync = useCallback(async () => {
    if (!mountedRef.current) return;

    console.log('[SyncProvider] Conexão online detectada, iniciando sync...');

    try {
      // Primeiro sincroniza dados pendentes
      const result = await syncAll();
      console.log('[SyncProvider] Sync completado:', result);

      // Depois baixa dados atualizados do servidor
      await initOfflineData();

      // Atualiza estado
      await updateSyncState();
    } catch (error) {
      console.error('[SyncProvider] Erro no sync automático:', error);
    }
  }, [updateSyncState]);

  // Inicialização única
  useEffect(() => {
    if (initRef.current || typeof window === 'undefined') return;
    initRef.current = true;

    const init = async () => {
      if (isInitialized) return;
      isInitialized = true;

      console.log('[SyncProvider] Inicializando...');

      // Inicia auto-sync (listeners de online/offline)
      startAutoSync();

      // Registra listener para mudanças de status
      const unsubscribe = onSyncStatusChange((status) => {
        if (!mountedRef.current) return;
        setPendingSyncCount(status.pendingCount);
        setSyncing(status.isSyncing);
        if (status.lastSync) {
          setLastSync(new Date(status.lastSync), status.lastError || undefined);
        }
      });

      // Atualiza estado inicial
      await updateSyncState();

      // Se estiver online, baixa dados iniciais
      if (navigator.onLine) {
        setTimeout(async () => {
          try {
            await initOfflineData();
            console.log('[SyncProvider] Dados offline inicializados');
          } catch (error) {
            console.warn('[SyncProvider] Erro ao inicializar dados offline:', error);
          }
        }, 2000);
      }

      return unsubscribe;
    };

    let unsubscribe: (() => void) | undefined;
    init().then((unsub) => {
      unsubscribe = unsub;
    });

    return () => {
      mountedRef.current = false;
      if (unsubscribe) unsubscribe();
    };
  }, [updateSyncState, setPendingSyncCount, setSyncing, setLastSync]);

  // Listener para mudanças de status de conexão
  useEffect(() => {
    if (connectionStatus === 'online') {
      // Pequeno delay para garantir que a conexão está estável
      const timeoutId = setTimeout(() => {
        handleOnlineSync();
      }, 1000);

      return () => clearTimeout(timeoutId);
    }
  }, [connectionStatus, handleOnlineSync]);

  // Atualiza contagem de pendentes periodicamente (a cada 10s)
  useEffect(() => {
    const intervalId = setInterval(() => {
      if (mountedRef.current) {
        updateSyncState();
      }
    }, 10000);

    return () => clearInterval(intervalId);
  }, [updateSyncState]);

  return <>{children}</>;
}
