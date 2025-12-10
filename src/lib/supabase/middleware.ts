/**
 * Middleware Supabase para Next.js
 *
 * Este arquivo configura o middleware.
 * Como usamos autenticação customizada (não Supabase Auth),
 * o middleware apenas passa as requisições.
 * A proteção de rotas é feita no lado do cliente.
 */

import { NextResponse, type NextRequest } from 'next/server';

/**
 * Middleware simplificado
 *
 * Apenas passa as requisições. A autenticação é verificada
 * no lado do cliente usando o auth-store do Zustand.
 */
export const updateSession = async (request: NextRequest) => {
  return NextResponse.next();
};
