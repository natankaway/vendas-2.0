/**
 * Store de Estado de Conexão
 *
 * Gerencia o estado global de conexão usando Zustand.
 * Permite que qualquer componente acesse o status de conexão.
 */

import { create } from 'zustand';
import { persist } from 'zustand/middleware';

export type ConnectionStatus = 'online' | 'offline' | 'checking';

interface ConnectionState {
  /**
   * Status atual da conexão com internet
   */
  status: ConnectionStatus;

  /**
   * Se o Supabase está acessível
   */
  isSupabaseConnected: boolean;

  /**
   * Timestamp da última verificação
   */
  lastCheckedAt: Date | null;

  /**
   * Número de itens pendentes na fila de sincronização
   */
  pendingSyncCount: number;

  /**
   * Se uma sincronização está em andamento
   */
  isSyncing: boolean;

  /**
   * Última sincronização bem-sucedida
   */
  lastSyncAt: Date | null;

  /**
   * Erro da última sincronização
   */
  lastSyncError: string | null;

  // Actions
  setOnline: () => void;
  setOffline: () => void;
  setChecking: () => void;
  setSupabaseConnected: (connected: boolean) => void;
  setPendingSyncCount: (count: number) => void;
  setSyncing: (syncing: boolean) => void;
  setLastSync: (date: Date, error?: string) => void;
  reset: () => void;
}

const initialState = {
  status: 'checking' as ConnectionStatus,
  isSupabaseConnected: false,
  lastCheckedAt: null,
  pendingSyncCount: 0,
  isSyncing: false,
  lastSyncAt: null,
  lastSyncError: null,
};

export const useConnectionStore = create<ConnectionState>()(
  persist(
    (set) => ({
      ...initialState,

      setOnline: () =>
        set({
          status: 'online',
          lastCheckedAt: new Date(),
        }),

      setOffline: () =>
        set({
          status: 'offline',
          lastCheckedAt: new Date(),
          isSupabaseConnected: false,
        }),

      setChecking: () =>
        set({
          status: 'checking',
        }),

      setSupabaseConnected: (connected: boolean) =>
        set({
          isSupabaseConnected: connected,
        }),

      setPendingSyncCount: (count: number) =>
        set({
          pendingSyncCount: count,
        }),

      setSyncing: (syncing: boolean) =>
        set({
          isSyncing: syncing,
        }),

      setLastSync: (date: Date, error?: string) =>
        set({
          lastSyncAt: date,
          lastSyncError: error || null,
          isSyncing: false,
        }),

      reset: () => set(initialState),
    }),
    {
      name: 'connection-store',
      // Apenas persiste alguns campos
      partialize: (state) => ({
        lastSyncAt: state.lastSyncAt,
        lastSyncError: state.lastSyncError,
      }),
    }
  )
);
