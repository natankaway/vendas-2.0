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
import { startAutoSync, syncAll, getSyncStatus } from '@/lib/services/sync-service';

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
 * Provider de Conexão e Sincronização
 *
 * Monitora o estado de conexão, exibe notificações e gerencia sincronização.
 * Usa o status diretamente para ignorar estado intermediário 'checking'.
 */
function ConnectionProvider({ children }: { children: React.ReactNode }) {
  const { status } = useOnlineStatus();
  const prevStatus = useRef<string | null>(null);
  const hasShownInitialStatus = useRef(false);
  const syncInitialized = useRef(false);

  // Inicializa o auto-sync uma vez
  useEffect(() => {
    if (!syncInitialized.current) {
      syncInitialized.current = true;
      startAutoSync();

      // Verifica se há itens pendentes na inicialização
      getSyncStatus().then(syncStatus => {
        if (syncStatus.pendingCount > 0) {
          console.log(`[Provider] ${syncStatus.pendingCount} itens pendentes de sincronização`);
        }
      });
    }
  }, []);

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
        // Conexão restaurada - sincroniza dados
        toast({
          title: 'Conexão restaurada',
          description: 'Sincronizando dados com o servidor...',
          variant: 'default',
        });

        // Inicia sincronização
        setTimeout(async () => {
          const result = await syncAll();
          if (result.synced > 0) {
            toast({
              title: 'Sincronização concluída',
              description: `${result.synced} ${result.synced === 1 ? 'item sincronizado' : 'itens sincronizados'} com sucesso.`,
            });
          }
          if (result.failed > 0) {
            toast({
              title: 'Alguns itens falharam',
              description: `${result.failed} ${result.failed === 1 ? 'item não pôde' : 'itens não puderam'} ser sincronizado(s).`,
              variant: 'destructive',
            });
          }
        }, 2000);
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
