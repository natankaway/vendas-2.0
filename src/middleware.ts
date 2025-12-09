/**
 * Middleware Global do Next.js
 *
 * Este middleware é executado em todas as requisições antes de chegar às rotas.
 * Responsável por:
 * - Gerenciar sessão de autenticação
 * - Proteger rotas privadas
 * - Configurar headers de segurança
 */

import { NextResponse, type NextRequest } from 'next/server';
import { updateSession } from '@/lib/supabase/middleware';

export async function middleware(request: NextRequest) {
  // Atualiza sessão e verifica autenticação
  return await updateSession(request);
}

/**
 * Configuração do matcher
 *
 * O middleware NÃO é executado para:
 * - Arquivos estáticos (_next/static)
 * - Imagens otimizadas (_next/image)
 * - Favicon e outros assets
 * - Service worker
 */
export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     * - public folder files
     */
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp|ico)$).*)',
  ],
};
