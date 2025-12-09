/**
 * Providers Globais da Aplicação
 *
 * Centraliza todos os providers/contexts necessários.
 */

'use client';

import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { useState, useEffect } from 'react';
import { useConnection } from '@/lib/hooks/use-connection';
import { useConnectionStore } from '@/lib/stores/connection-store';
import { toast } from '@/components/ui/use-toast';

/**
 * Provider de Query Client (React Query)
 */
function QueryProvider({ children }: { children: React.ReactNode }) {
  const [queryClient] = useState(
    () =>
      new QueryClient({
        defaultOptions: {
          queries: {
            staleTime: 1000 * 60, // 1 minuto
            gcTime: 1000 * 60 * 5, // 5 minutos (antigo cacheTime)
            refetchOnWindowFocus: false,
            retry: 1,
          },
          mutations: {
            retry: 0,
          },
        },
      })
  );

  return (
    <QueryClientProvider client={queryClient}>{children}</QueryClientProvider>
  );
}

/**
 * Provider de Conexão
 *
 * Monitora o estado de conexão e exibe notificações.
 */
function ConnectionProvider({ children }: { children: React.ReactNode }) {
  const { isOnline, isOffline } = useConnection({
    onOnline: () => {
      toast({
        title: 'Conexão restaurada',
        description: 'Sincronizando dados com o servidor...',
        variant: 'default',
      });
    },
    onOffline: () => {
      toast({
        title: 'Modo offline',
        description: 'Você está trabalhando sem conexão. Os dados serão sincronizados quando a conexão for restaurada.',
        variant: 'destructive',
      });
    },
  });

  return <>{children}</>;
}

/**
 * Provider Principal
 */
export function Providers({ children }: { children: React.ReactNode }) {
  return (
    <QueryProvider>
      <ConnectionProvider>{children}</ConnectionProvider>
    </QueryProvider>
  );
}
