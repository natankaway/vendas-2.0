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
 * Usa o status diretamente para ignorar estado intermediário 'checking'.
 */
function ConnectionProvider({ children }: { children: React.ReactNode }) {
  const { status } = useOnlineStatus();
  const prevStatus = useRef<string | null>(null);
  const hasShownInitialStatus = useRef(false);

  useEffect(() => {
    // Ignora estado 'checking' - é transitório
    if (status === 'checking') {
      return;
    }

    // Ignora a primeira verificação
    if (!hasShownInitialStatus.current) {
      hasShownInitialStatus.current = true;
      prevStatus.current = status;
      return;
    }

    // Só mostra toast se realmente mudou de online para offline ou vice-versa
    if (status !== prevStatus.current) {
      if (status === 'online' && prevStatus.current === 'offline') {
        toast({
          title: 'Conexão restaurada',
          description: 'Sincronizando dados com o servidor...',
          variant: 'default',
        });
      } else if (status === 'offline' && prevStatus.current === 'online') {
        toast({
          title: 'Modo offline',
          description: 'Os dados serão sincronizados quando a conexão for restaurada.',
          variant: 'destructive',
        });
      }
      prevStatus.current = status;
    }
  }, [status]);

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
