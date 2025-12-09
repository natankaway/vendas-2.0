/**
 * Hook de Detecção de Conexão
 *
 * Monitora o estado de conexão com a internet e com o Supabase.
 * Dispara sincronização automaticamente quando a conexão é restaurada.
 */

'use client';

import { useState, useEffect, useCallback, useRef } from 'react';
import { useConnectionStore } from '@/lib/stores/connection-store';

export type ConnectionStatus = 'online' | 'offline' | 'checking';

interface UseConnectionOptions {
  /**
   * Intervalo de verificação em ms (padrão: 30000 = 30s)
   */
  checkInterval?: number;

  /**
   * URL para verificar conexão (padrão: /api/health)
   */
  healthCheckUrl?: string;

  /**
   * Callback quando conexão é restaurada
   */
  onOnline?: () => void;

  /**
   * Callback quando conexão é perdida
   */
  onOffline?: () => void;
}

/**
 * Hook para monitorar estado de conexão
 *
 * Usa combinação de:
 * 1. navigator.onLine (detecção rápida, mas não 100% confiável)
 * 2. Fetch para health check (mais confiável para conexão real)
 * 3. Eventos online/offline do window
 */
export function useConnection(options: UseConnectionOptions = {}) {
  const {
    checkInterval = 30000,
    healthCheckUrl = '/api/health',
    onOnline,
    onOffline,
  } = options;

  const {
    status,
    lastCheckedAt,
    setOnline,
    setOffline,
    setChecking,
    isSupabaseConnected,
    setSupabaseConnected,
  } = useConnectionStore();

  const [isFirstCheck, setIsFirstCheck] = useState(true);
  const previousStatus = useRef<ConnectionStatus>(status);
  const checkTimeoutRef = useRef<NodeJS.Timeout | null>(null);

  /**
   * Verifica conexão real fazendo uma requisição
   */
  const checkConnection = useCallback(async (): Promise<boolean> => {
    setChecking();

    try {
      // Primeiro verifica navigator.onLine
      if (!navigator.onLine) {
        setOffline();
        return false;
      }

      // Faz health check real
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 5000);

      try {
        const response = await fetch(healthCheckUrl, {
          method: 'HEAD',
          cache: 'no-store',
          signal: controller.signal,
        });

        clearTimeout(timeoutId);

        if (response.ok) {
          setOnline();
          return true;
        } else {
          setOffline();
          return false;
        }
      } catch {
        clearTimeout(timeoutId);
        setOffline();
        return false;
      }
    } catch {
      setOffline();
      return false;
    }
  }, [healthCheckUrl, setChecking, setOnline, setOffline]);

  /**
   * Verifica conexão com Supabase
   */
  const checkSupabaseConnection = useCallback(async (): Promise<boolean> => {
    try {
      const response = await fetch('/api/health/supabase', {
        method: 'GET',
        cache: 'no-store',
      });

      const isConnected = response.ok;
      setSupabaseConnected(isConnected);
      return isConnected;
    } catch {
      setSupabaseConnected(false);
      return false;
    }
  }, [setSupabaseConnected]);

  /**
   * Efeito para eventos de conexão do navegador
   */
  useEffect(() => {
    const handleOnline = () => {
      checkConnection();
    };

    const handleOffline = () => {
      setOffline();
    };

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, [checkConnection, setOffline]);

  /**
   * Efeito para verificação periódica
   */
  useEffect(() => {
    // Verificação inicial
    if (isFirstCheck) {
      checkConnection();
      checkSupabaseConnection();
      setIsFirstCheck(false);
    }

    // Verificação periódica
    const intervalId = setInterval(() => {
      checkConnection();
      checkSupabaseConnection();
    }, checkInterval);

    return () => {
      clearInterval(intervalId);
    };
  }, [checkConnection, checkSupabaseConnection, checkInterval, isFirstCheck]);

  /**
   * Efeito para callbacks de mudança de status
   */
  useEffect(() => {
    if (previousStatus.current !== status) {
      if (status === 'online' && previousStatus.current === 'offline') {
        onOnline?.();
      } else if (status === 'offline' && previousStatus.current === 'online') {
        onOffline?.();
      }
      previousStatus.current = status;
    }
  }, [status, onOnline, onOffline]);

  /**
   * Efeito para sincronização quando volta online
   */
  useEffect(() => {
    // Limpa timeout anterior
    if (checkTimeoutRef.current) {
      clearTimeout(checkTimeoutRef.current);
    }

    // Se voltou online, agenda verificação após delay
    if (status === 'online' && previousStatus.current === 'offline') {
      checkTimeoutRef.current = setTimeout(() => {
        // Trigger sync via API
        fetch('/api/sync', { method: 'POST' }).catch(console.error);
      }, 2000);
    }

    return () => {
      if (checkTimeoutRef.current) {
        clearTimeout(checkTimeoutRef.current);
      }
    };
  }, [status]);

  return {
    /**
     * Status atual da conexão
     */
    status,

    /**
     * Se está online
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
     * Se Supabase está acessível
     */
    isSupabaseConnected,

    /**
     * Última verificação
     */
    lastCheckedAt,

    /**
     * Força verificação de conexão
     */
    checkConnection,

    /**
     * Força verificação de conexão com Supabase
     */
    checkSupabaseConnection,
  };
}
