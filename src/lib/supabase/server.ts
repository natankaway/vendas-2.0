/**
 * Cliente Supabase para o Servidor
 *
 * Este arquivo configura o cliente Supabase para uso em:
 * - Server Components
 * - API Routes
 * - Server Actions
 *
 * Usa cookies para persistir a sessão entre requisições.
 */

import { createServerClient, type CookieOptions } from '@supabase/ssr';
import { cookies } from 'next/headers';
import type { Database } from './database.types';

/**
 * Cria cliente Supabase para Server Components
 *
 * Este cliente:
 * - Lê cookies da requisição para obter a sessão
 * - Não pode modificar cookies em Server Components
 */
export const createServerComponentClient = () => {
  const cookieStore = cookies();

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error(
      'Variáveis de ambiente NEXT_PUBLIC_SUPABASE_URL e NEXT_PUBLIC_SUPABASE_ANON_KEY são obrigatórias'
    );
  }

  return createServerClient<Database>(supabaseUrl, supabaseAnonKey, {
    cookies: {
      get(name: string) {
        return cookieStore.get(name)?.value;
      },
      set(name: string, value: string, options: CookieOptions) {
        // Server Components não podem modificar cookies
        // Isso será tratado pelo middleware
      },
      remove(name: string, options: CookieOptions) {
        // Server Components não podem modificar cookies
      },
    },
  });
};

/**
 * Cria cliente Supabase para Server Actions e Route Handlers
 *
 * Este cliente pode modificar cookies para persistir sessão.
 */
export const createServerActionClient = () => {
  const cookieStore = cookies();

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error(
      'Variáveis de ambiente NEXT_PUBLIC_SUPABASE_URL e NEXT_PUBLIC_SUPABASE_ANON_KEY são obrigatórias'
    );
  }

  return createServerClient<Database>(supabaseUrl, supabaseAnonKey, {
    cookies: {
      get(name: string) {
        return cookieStore.get(name)?.value;
      },
      set(name: string, value: string, options: CookieOptions) {
        try {
          cookieStore.set({ name, value, ...options });
        } catch (error) {
          // Pode falhar em Server Components, ignora
        }
      },
      remove(name: string, options: CookieOptions) {
        try {
          cookieStore.set({ name, value: '', ...options });
        } catch (error) {
          // Pode falhar em Server Components, ignora
        }
      },
    },
  });
};
