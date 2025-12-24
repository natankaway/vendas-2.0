/**
 * Hook de Status Online/Offline
 *
 * Detecta mudanças de conectividade e verifica conexão real com o servidor.
 */

'use client';

import { useState, useEffect, useCallback } from 'react';
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

  const [isChecking, setIsChecking] = useState(false);

  /**
   * Verifica conectividade real com o servidor
   */
  const checkConnection = useCallback(async (): Promise<boolean> => {
    if (isChecking) return status === 'online';

    setIsChecking(true);
    setChecking();

    try {
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 5000);

      const response = await fetch(healthCheckUrl, {
        method: 'GET',
        signal: controller.signal,
        cache: 'no-store',
      });

      clearTimeout(timeoutId);

      if (response.ok) {
        const data = await response.json();
        setOnline();
        setSupabaseConnected(data.supabase === 'connected');
        return true;
      } else {
        setOffline();
        setSupabaseConnected(false);
        return false;
      }
    } catch {
      setOffline();
      setSupabaseConnected(false);
      return false;
    } finally {
      setIsChecking(false);
    }
  }, [healthCheckUrl, isChecking, status, setChecking, setOnline, setOffline, setSupabaseConnected]);

  /**
   * Handler para evento online do browser
   */
  const handleOnline = useCallback(() => {
    // Browser detectou conexão, verifica se servidor está acessível
    checkConnection();
  }, [checkConnection]);

  /**
   * Handler para evento offline do browser
   */
  const handleOffline = useCallback(() => {
    setOffline();
    setSupabaseConnected(false);
  }, [setOffline, setSupabaseConnected]);

  // Setup event listeners e verificação periódica
  useEffect(() => {
    // Verifica status inicial
    if (typeof navigator !== 'undefined') {
      if (navigator.onLine) {
        checkConnection();
      } else {
        setOffline();
      }
    }

    // Event listeners do browser
    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    // Verificação periódica
    const intervalId = setInterval(() => {
      if (navigator.onLine) {
        checkConnection();
      }
    }, checkInterval);

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
      clearInterval(intervalId);
    };
  }, [checkConnection, handleOnline, handleOffline, checkInterval, setOffline]);

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
