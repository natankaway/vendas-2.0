/**
 * Providers Globais da Aplicação
 *
 * Centraliza todos os providers/contexts necessários.
 */

'use client';

import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { useState, useEffect, useRef } from 'react';
import { useOnlineStatus } from '@/lib/hooks/use-online-status';
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
  const { isOnline, isOffline } = useOnlineStatus();
  const prevOnline = useRef<boolean | null>(null);

  useEffect(() => {
    // Só mostra toast após a primeira verificação
    if (prevOnline.current === null) {
      prevOnline.current = isOnline;
      return;
    }

    // Detecta mudança de status
    if (isOnline && prevOnline.current === false) {
      toast({
        title: 'Conexão restaurada',
        description: 'Sincronizando dados com o servidor...',
        variant: 'default',
      });
    } else if (isOffline && prevOnline.current === true) {
      toast({
        title: 'Modo offline',
        description: 'Os dados serão sincronizados quando a conexão for restaurada.',
        variant: 'destructive',
      });
    }

    prevOnline.current = isOnline;
  }, [isOnline, isOffline]);

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
