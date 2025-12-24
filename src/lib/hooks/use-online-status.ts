/**
 * Hook de Status Online/Offline
 *
 * Detecta mudanças de conectividade e verifica conexão real com o servidor.
 * Usa navigator.onLine como primeira verificação rápida.
 */

'use client';

import { useEffect, useRef, useCallback } from 'react';
import { useConnectionStore } from '../stores/connection-store';

interface UseOnlineStatusOptions {
  /**
   * Intervalo de verificação em ms (padrão: 30s)
   */
  checkInterval?: number;
  /**
   * URL para verificar conectividade (padrão: /api/health)
   */
  healthCheckUrl?: string;
}

// Controle global para evitar múltiplas verificações
let globalCheckInProgress = false;

export function useOnlineStatus(options: UseOnlineStatusOptions = {}) {
  const {
    checkInterval = 30000,
    healthCheckUrl = '/api/health',
  } = options;

  const {
    status,
    isSupabaseConnected,
    pendingSyncCount,
    isSyncing,
    lastSyncAt,
    setOnline,
    setOffline,
    setChecking,
    setSupabaseConnected,
  } = useConnectionStore();

  const mountedRef = useRef(true);
  const initialCheckDoneRef = useRef(false);

  /**
   * Verifica conectividade real com o servidor
   */
  const checkConnection = useCallback(async (isInitial = false): Promise<boolean> => {
    // Verifica navigator.onLine primeiro (rápido)
    if (typeof navigator !== 'undefined' && !navigator.onLine) {
      setOffline();
      setSupabaseConnected(false);
      return false;
    }

    // Evita checks paralelos
    if (globalCheckInProgress) {
      return status === 'online';
    }

    globalCheckInProgress = true;

    // Só muda para 'checking' na verificação inicial
    if (isInitial && !initialCheckDoneRef.current) {
      setChecking();
    }

    try {
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 3000); // Reduzido para 3s

      const response = await fetch(healthCheckUrl, {
        method: 'GET',
        signal: controller.signal,
        cache: 'no-store',
      });

      clearTimeout(timeoutId);

      if (!mountedRef.current) {
        globalCheckInProgress = false;
        return false;
      }

      if (response.ok) {
        const data = await response.json();
        // Verifica se o Supabase está conectado - se não, considera offline
        const isSupabaseOk = data.supabase === 'connected';
        if (isSupabaseOk) {
          setOnline();
        } else {
          setOffline();
        }
        setSupabaseConnected(isSupabaseOk);
        initialCheckDoneRef.current = true;
        globalCheckInProgress = false;
        return isSupabaseOk;
      } else {
        setOffline();
        setSupabaseConnected(false);
        globalCheckInProgress = false;
        return false;
      }
    } catch (error) {
      globalCheckInProgress = false;

      if (!mountedRef.current) return false;

      // Qualquer erro = offline
      console.warn('[Connection] Offline detectado:', error instanceof Error ? error.message : 'Erro de conexão');
      setOffline();
      setSupabaseConnected(false);
      return false;
    }
  }, [healthCheckUrl, status, setChecking, setOnline, setOffline, setSupabaseConnected]);

  // Setup event listeners
  useEffect(() => {
    mountedRef.current = true;

    const handleOnline = () => {
      console.log('[Connection] Browser detectou conexão');
      checkConnection(false);
    };

    const handleOffline = () => {
      console.log('[Connection] Browser detectou desconexão');
      setOffline();
      setSupabaseConnected(false);
    };

    // Verifica status inicial baseado em navigator.onLine
    if (typeof navigator !== 'undefined' && typeof window !== 'undefined') {
      if (!navigator.onLine) {
        // Offline imediatamente
        setOffline();
        setSupabaseConnected(false);
      } else {
        // Online, verifica servidor
        checkConnection(true);
      }

      // Event listeners do browser
      window.addEventListener('online', handleOnline);
      window.addEventListener('offline', handleOffline);

      // Verificação periódica apenas se online
      const intervalId = setInterval(() => {
        if (mountedRef.current && navigator.onLine) {
          checkConnection(false);
        } else if (mountedRef.current && !navigator.onLine) {
          // Marca offline se navigator diz que está offline
          setOffline();
          setSupabaseConnected(false);
        }
      }, checkInterval);

      return () => {
        mountedRef.current = false;
        clearInterval(intervalId);
        window.removeEventListener('online', handleOnline);
        window.removeEventListener('offline', handleOffline);
      };
    }

    return () => {
      mountedRef.current = false;
    };
  }, [checkInterval, checkConnection, setOffline, setSupabaseConnected]);

  return {
    isOnline: status === 'online',
    isOffline: status === 'offline',
    isChecking: status === 'checking',
    isSupabaseConnected,
    pendingSyncCount,
    isSyncing,
    lastSyncAt,
    checkConnection,
    status,
  };
}
