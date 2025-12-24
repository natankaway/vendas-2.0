/**
 * Hook de Status Online/Offline
 *
 * Detecta mudanças de conectividade e verifica conexão real com o servidor.
 * Usa refs para evitar loops de dependência no useEffect.
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

// Singleton para evitar múltiplas instâncias fazendo verificações
let globalCheckInProgress = false;
let lastCheckTime = 0;
const MIN_CHECK_INTERVAL = 5000; // Mínimo 5s entre checks

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

  // Refs para evitar dependências instáveis
  const mountedRef = useRef(true);
  const initialCheckDoneRef = useRef(false);

  /**
   * Verifica conectividade real com o servidor
   */
  const checkConnection = useCallback(async (isInitial = false): Promise<boolean> => {
    // Evita checks muito frequentes ou paralelos
    const now = Date.now();
    if (globalCheckInProgress || (now - lastCheckTime < MIN_CHECK_INTERVAL && !isInitial)) {
      return status === 'online';
    }

    globalCheckInProgress = true;
    lastCheckTime = now;

    // Só muda para 'checking' na verificação inicial
    if (isInitial && !initialCheckDoneRef.current) {
      setChecking();
    }

    try {
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 5000);

      const response = await fetch(healthCheckUrl, {
        method: 'GET',
        signal: controller.signal,
        cache: 'no-store',
      });

      clearTimeout(timeoutId);

      if (!mountedRef.current) return false;

      if (response.ok) {
        const data = await response.json();
        setOnline();
        setSupabaseConnected(data.supabase === 'connected');
        initialCheckDoneRef.current = true;
        return true;
      } else {
        setOffline();
        setSupabaseConnected(false);
        return false;
      }
    } catch (error) {
      if (!mountedRef.current) return false;

      // Só marca offline se realmente não conseguiu conectar
      // AbortError significa timeout, não necessariamente offline
      if (error instanceof Error && error.name === 'AbortError') {
        console.warn('[Connection] Health check timeout');
      }
      setOffline();
      setSupabaseConnected(false);
      return false;
    } finally {
      globalCheckInProgress = false;
    }
  }, [healthCheckUrl, status, setChecking, setOnline, setOffline, setSupabaseConnected]);

  // Setup event listeners e verificação periódica
  useEffect(() => {
    mountedRef.current = true;

    const handleOnline = () => {
      // Browser detectou conexão, verifica se servidor está acessível
      checkConnection(false);
    };

    const handleOffline = () => {
      setOffline();
      setSupabaseConnected(false);
    };

    // Verifica status inicial
    if (typeof navigator !== 'undefined' && typeof window !== 'undefined') {
      if (navigator.onLine) {
        // Pequeno delay para garantir que o app carregou
        const initialTimeout = setTimeout(() => {
          if (mountedRef.current) {
            checkConnection(true);
          }
        }, 100);

        // Event listeners do browser
        window.addEventListener('online', handleOnline);
        window.addEventListener('offline', handleOffline);

        // Verificação periódica
        const intervalId = setInterval(() => {
          if (mountedRef.current && navigator.onLine) {
            checkConnection(false);
          }
        }, checkInterval);

        return () => {
          mountedRef.current = false;
          clearTimeout(initialTimeout);
          clearInterval(intervalId);
          window.removeEventListener('online', handleOnline);
          window.removeEventListener('offline', handleOffline);
        };
      } else {
        setOffline();
      }
    }

    return () => {
      mountedRef.current = false;
    };
  }, [checkInterval, checkConnection, setOffline, setSupabaseConnected]);

  return {
    /**
     * Se está online (conectado ao servidor)
     */
    isOnline: status === 'online',
    /**
     * Se está offline
     */
    isOffline: status === 'offline',
    /**
     * Se está verificando conexão
     */
    isChecking: status === 'checking',
    /**
     * Se o Supabase está acessível
     */
    isSupabaseConnected,
    /**
     * Quantidade de itens pendentes de sincronização
     */
    pendingSyncCount,
    /**
     * Se uma sincronização está em andamento
     */
    isSyncing,
    /**
     * Data da última sincronização
     */
    lastSyncAt,
    /**
     * Força verificação de conexão
     */
    checkConnection,
    /**
     * Status atual (online, offline, checking)
     */
    status,
  };
}
