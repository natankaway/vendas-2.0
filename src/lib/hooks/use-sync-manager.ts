/**
 * Hook de Gerenciamento de Sincronização
 *
 * Fornece acesso ao estado de sincronização e métodos para controle manual.
 * Integra com o ciclo de vida da aplicação para garantir sincronização robusta.
 */

'use client';

import { useState, useEffect, useCallback, useRef } from 'react';
import { useConnectionStore } from '@/lib/stores/connection-store';
import {
  syncAll,
  getSyncStatus,
  initOfflineData,
  fullSync,
  getPendingConflicts,
  autoResolveAllConflicts,
  onSyncStatusChange,
  SyncResult,
  SyncStatus,
} from '@/lib/services/sync-service';
import { SyncConflict } from '@/lib/db/offline-db';

export interface UseSyncManagerOptions {
  /**
   * Sincroniza automaticamente quando a aba fica visível
   */
  syncOnVisibilityChange?: boolean;
  /**
   * Sincroniza periodicamente em background (em ms, 0 = desativado)
   */
  backgroundSyncInterval?: number;
  /**
   * Tenta sincronizar antes de fechar a página
   */
  syncOnBeforeUnload?: boolean;
  /**
   * Callback quando sincronização é concluída
   */
  onSyncComplete?: (result: SyncResult) => void;
  /**
   * Callback quando conflitos são detectados
   */
  onConflictsDetected?: (conflicts: SyncConflict[]) => void;
}

export interface SyncManagerState {
  isSyncing: boolean;
  pendingCount: number;
  conflictsCount: number;
  lastSync: Date | null;
  lastError: string | null;
  isOnline: boolean;
}

export interface SyncManagerActions {
  /**
   * Sincroniza todos os dados pendentes
   */
  sync: () => Promise<SyncResult>;
  /**
   * Baixa dados do servidor e depois envia pendentes
   */
  fullSync: () => Promise<{ download: { success: boolean; errors: string[] }; upload: SyncResult }>;
  /**
   * Apenas baixa dados do servidor para cache local
   */
  refreshFromServer: () => Promise<void>;
  /**
   * Obtém conflitos pendentes
   */
  getConflicts: () => Promise<SyncConflict[]>;
  /**
   * Resolve todos os conflitos automaticamente
   */
  autoResolveConflicts: () => Promise<number>;
  /**
   * Atualiza o estado de sincronização
   */
  refreshStatus: () => Promise<void>;
}

export function useSyncManager(options: UseSyncManagerOptions = {}): SyncManagerState & SyncManagerActions {
  const {
    syncOnVisibilityChange = true,
    backgroundSyncInterval = 0,
    syncOnBeforeUnload = true,
    onSyncComplete,
    onConflictsDetected,
  } = options;

  const {
    status,
    pendingSyncCount,
    conflictsCount,
    isSyncing,
    lastSyncAt,
    lastSyncError,
    setPendingSyncCount,
    setConflictsCount,
    setSyncing,
    setLastSync,
  } = useConnectionStore();

  const [isInitialized, setIsInitialized] = useState(false);
  const lastVisibilitySync = useRef<number>(0);
  const backgroundSyncRef = useRef<NodeJS.Timeout | null>(null);

  /**
   * Atualiza o estado a partir do sync service
   */
  const refreshStatus = useCallback(async () => {
    try {
      const syncStatus = await getSyncStatus();
      setPendingSyncCount(syncStatus.pendingCount);
      setConflictsCount(syncStatus.conflictsCount);
      setSyncing(syncStatus.isSyncing);
      if (syncStatus.lastSync) {
        setLastSync(new Date(syncStatus.lastSync), syncStatus.lastError || undefined);
      }
    } catch (error) {
      console.error('[useSyncManager] Erro ao atualizar status:', error);
    }
  }, [setPendingSyncCount, setConflictsCount, setSyncing, setLastSync]);

  /**
   * Executa sincronização
   */
  const sync = useCallback(async (): Promise<SyncResult> => {
    setSyncing(true);
    try {
      const result = await syncAll();
      await refreshStatus();

      if (onSyncComplete) {
        onSyncComplete(result);
      }

      if (result.conflicts > 0 && onConflictsDetected) {
        const conflicts = await getPendingConflicts();
        onConflictsDetected(conflicts);
      }

      return result;
    } finally {
      setSyncing(false);
    }
  }, [setSyncing, refreshStatus, onSyncComplete, onConflictsDetected]);

  /**
   * Executa sincronização completa (download + upload)
   */
  const doFullSync = useCallback(async () => {
    setSyncing(true);
    try {
      const result = await fullSync();
      await refreshStatus();

      if (onSyncComplete) {
        onSyncComplete(result.upload);
      }

      return result;
    } finally {
      setSyncing(false);
    }
  }, [setSyncing, refreshStatus, onSyncComplete]);

  /**
   * Baixa dados do servidor
   */
  const refreshFromServer = useCallback(async () => {
    setSyncing(true);
    try {
      await initOfflineData();
      await refreshStatus();
    } finally {
      setSyncing(false);
    }
  }, [setSyncing, refreshStatus]);

  /**
   * Obtém conflitos pendentes
   */
  const getConflicts = useCallback(async (): Promise<SyncConflict[]> => {
    return getPendingConflicts();
  }, []);

  /**
   * Resolve conflitos automaticamente
   */
  const autoResolve = useCallback(async (): Promise<number> => {
    const resolved = await autoResolveAllConflicts();
    await refreshStatus();
    return resolved;
  }, [refreshStatus]);

  // Inicialização
  useEffect(() => {
    if (!isInitialized) {
      setIsInitialized(true);
      refreshStatus();
    }
  }, [isInitialized, refreshStatus]);

  // Listener de mudanças de status do sync service
  useEffect(() => {
    const unsubscribe = onSyncStatusChange((newStatus: SyncStatus) => {
      setPendingSyncCount(newStatus.pendingCount);
      setConflictsCount(newStatus.conflictsCount);
      setSyncing(newStatus.isSyncing);
      if (newStatus.lastSync) {
        setLastSync(new Date(newStatus.lastSync), newStatus.lastError || undefined);
      }
    });

    return unsubscribe;
  }, [setPendingSyncCount, setConflictsCount, setSyncing, setLastSync]);

  // Sincronização quando aba fica visível
  useEffect(() => {
    if (!syncOnVisibilityChange) return;

    const handleVisibilityChange = async () => {
      if (document.visibilityState === 'visible') {
        const now = Date.now();
        // Evita sincronizar múltiplas vezes em sequência rápida (mínimo 30 segundos)
        if (now - lastVisibilitySync.current < 30000) {
          return;
        }
        lastVisibilitySync.current = now;

        // Só sincroniza se estiver online e tiver itens pendentes
        if (navigator.onLine) {
          console.log('[useSyncManager] Aba visível, verificando pendências...');
          const currentStatus = await getSyncStatus();
          if (currentStatus.pendingCount > 0) {
            console.log(`[useSyncManager] ${currentStatus.pendingCount} itens pendentes, sincronizando...`);
            await sync();
          }
        }
      }
    };

    document.addEventListener('visibilitychange', handleVisibilityChange);
    return () => document.removeEventListener('visibilitychange', handleVisibilityChange);
  }, [syncOnVisibilityChange, sync]);

  // Sincronização periódica em background
  useEffect(() => {
    if (backgroundSyncInterval <= 0) return;

    const doBackgroundSync = async () => {
      if (!navigator.onLine || isSyncing) return;

      const currentStatus = await getSyncStatus();
      if (currentStatus.pendingCount > 0) {
        console.log('[useSyncManager] Background sync iniciando...');
        await sync();
      }
    };

    backgroundSyncRef.current = setInterval(doBackgroundSync, backgroundSyncInterval);

    return () => {
      if (backgroundSyncRef.current) {
        clearInterval(backgroundSyncRef.current);
      }
    };
  }, [backgroundSyncInterval, isSyncing, sync]);

  // Sincronização antes de fechar página
  useEffect(() => {
    if (!syncOnBeforeUnload) return;

    const handleBeforeUnload = (event: BeforeUnloadEvent) => {
      // Verifica se há dados pendentes
      if (pendingSyncCount > 0 && navigator.onLine) {
        // Tenta sincronizar usando sendBeacon para requisições críticas
        // Nota: sincronização completa não é possível aqui, apenas aviso
        console.log('[useSyncManager] Página fechando com dados pendentes');

        // Persiste flag para sincronizar na próxima abertura
        try {
          localStorage.setItem('pendingSyncOnLoad', 'true');
        } catch {
          // Ignora erros de localStorage
        }

        // Mostra aviso ao usuário
        event.preventDefault();
        event.returnValue = 'Existem dados não sincronizados. Deseja sair mesmo assim?';
        return event.returnValue;
      }
    };

    window.addEventListener('beforeunload', handleBeforeUnload);
    return () => window.removeEventListener('beforeunload', handleBeforeUnload);
  }, [syncOnBeforeUnload, pendingSyncCount]);

  // Sincronização na inicialização se havia pendências
  useEffect(() => {
    const checkPendingOnLoad = async () => {
      try {
        const hadPending = localStorage.getItem('pendingSyncOnLoad');
        if (hadPending === 'true') {
          localStorage.removeItem('pendingSyncOnLoad');
          if (navigator.onLine) {
            console.log('[useSyncManager] Sincronizando pendências da sessão anterior...');
            await sync();
          }
        }
      } catch {
        // Ignora erros de localStorage
      }
    };

    checkPendingOnLoad();
  }, [sync]);

  return {
    // Estado
    isSyncing,
    pendingCount: pendingSyncCount,
    conflictsCount,
    lastSync: lastSyncAt,
    lastError: lastSyncError,
    isOnline: status === 'online',

    // Ações
    sync,
    fullSync: doFullSync,
    refreshFromServer,
    getConflicts,
    autoResolveConflicts: autoResolve,
    refreshStatus,
  };
}
