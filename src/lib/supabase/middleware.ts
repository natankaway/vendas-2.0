/**
 * Middleware Supabase para Next.js
 *
 * Este arquivo configura o middleware de autenticação que:
 * - Atualiza tokens de sessão expirados
 * - Redireciona usuários não autenticados
 * - Protege rotas privadas
 */

import { createServerClient, type CookieOptions } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';
import type { Database } from './database.types';

/**
 * Rotas públicas que não requerem autenticação
 */
const PUBLIC_ROUTES = [
  '/login',
  '/registro',
  '/recuperar-senha',
  '/api/auth',
];

/**
 * Verifica se a rota é pública
 */
const isPublicRoute = (pathname: string): boolean => {
  return PUBLIC_ROUTES.some((route) => pathname.startsWith(route));
};

/**
 * Cria o cliente Supabase para o middleware
 */
export const createMiddlewareClient = (request: NextRequest) => {
  // Cria uma resposta que será modificada
  let response = NextResponse.next({
    request: {
      headers: request.headers,
    },
  });

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseAnonKey) {
    console.error('Variáveis de ambiente do Supabase não configuradas');
    return { supabase: null, response };
  }

  const supabase = createServerClient<Database>(supabaseUrl, supabaseAnonKey, {
    cookies: {
      get(name: string) {
        return request.cookies.get(name)?.value;
      },
      set(name: string, value: string, options: CookieOptions) {
        // Se o cookie foi modificado, atualiza request e response
        request.cookies.set({
          name,
          value,
          ...options,
        });
        response = NextResponse.next({
          request: {
            headers: request.headers,
          },
        });
        response.cookies.set({
          name,
          value,
          ...options,
        });
      },
      remove(name: string, options: CookieOptions) {
        request.cookies.set({
          name,
          value: '',
          ...options,
        });
        response = NextResponse.next({
          request: {
            headers: request.headers,
          },
        });
        response.cookies.set({
          name,
          value: '',
          ...options,
        });
      },
    },
  });

  return { supabase, response };
};

/**
 * Middleware de autenticação
 *
 * Executado em todas as requisições para:
 * 1. Atualizar sessão se necessário
 * 2. Proteger rotas privadas
 * 3. Redirecionar usuários não autenticados
 */
export const updateSession = async (request: NextRequest) => {
  const { supabase, response } = createMiddlewareClient(request);

  // Se Supabase não está configurado, permite todas as requisições
  // (útil para desenvolvimento inicial ou modo offline)
  if (!supabase) {
    return response;
  }

  const pathname = request.nextUrl.pathname;

  // Rotas públicas não precisam de autenticação
  if (isPublicRoute(pathname)) {
    // Se já está logado e tenta acessar login, redireciona para dashboard
    const { data: { user } } = await supabase.auth.getUser();
    if (user && (pathname === '/login' || pathname === '/registro')) {
      return NextResponse.redirect(new URL('/pdv', request.url));
    }
    return response;
  }

  // Verifica autenticação para rotas protegidas
  const { data: { user }, error } = await supabase.auth.getUser();

  // Se não está autenticado, redireciona para login
  if (error || !user) {
    const redirectUrl = new URL('/login', request.url);
    // Salva a URL original para redirecionamento após login
    redirectUrl.searchParams.set('redirect', pathname);
    return NextResponse.redirect(redirectUrl);
  }

  // Usuário autenticado, permite acesso
  return response;
};
