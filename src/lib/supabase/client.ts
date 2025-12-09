/**
 * Cliente Supabase para o Browser
 *
 * Este arquivo configura o cliente Supabase para uso no frontend.
 * Usa singleton pattern para evitar múltiplas instâncias.
 */

import { createBrowserClient } from '@supabase/ssr';
import type { Database } from './database.types';

/**
 * Cria cliente Supabase para uso no navegador
 *
 * Este cliente:
 * - Persiste a sessão no localStorage
 * - Auto-refresh do token
 * - Detecta mudanças de autenticação
 */
export const createClient = () => {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error(
      'Variáveis de ambiente NEXT_PUBLIC_SUPABASE_URL e NEXT_PUBLIC_SUPABASE_ANON_KEY são obrigatórias'
    );
  }

  return createBrowserClient<Database>(supabaseUrl, supabaseAnonKey, {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
      detectSessionInUrl: true,
      flowType: 'pkce',
    },
    global: {
      headers: {
        'x-client-info': 'vendas-pdv/1.0.0',
      },
    },
  });
};

/**
 * Singleton do cliente Supabase para o browser
 */
let browserClient: ReturnType<typeof createClient> | null = null;

export const getSupabaseClient = () => {
  if (!browserClient) {
    browserClient = createClient();
  }
  return browserClient;
};
