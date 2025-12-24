/**
 * API de Health Check
 *
 * Verifica se o servidor está funcionando e a conexão com Supabase.
 * Usado para detecção de conectividade.
 * Timeout rápido para não bloquear a UI.
 */

import { NextRequest, NextResponse } from 'next/server';

export const dynamic = 'force-dynamic';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

/**
 * GET /api/health
 *
 * Retorna status do servidor e conexão com Supabase.
 * Usa AbortController para timeout rápido (2s).
 */
export async function GET(request: NextRequest) {
  let supabaseStatus = 'disconnected';

  try {
    // Timeout de 2 segundos para não bloquear
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 2000);

    // Faz requisição direta REST em vez de usar cliente Supabase (mais rápido)
    const response = await fetch(`${supabaseUrl}/rest/v1/products?select=id&limit=1`, {
      method: 'GET',
      headers: {
        'apikey': supabaseKey,
        'Authorization': `Bearer ${supabaseKey}`,
      },
      signal: controller.signal,
    });

    clearTimeout(timeoutId);

    if (response.ok) {
      supabaseStatus = 'connected';
    } else {
      supabaseStatus = 'error';
    }
  } catch (error) {
    // Timeout ou erro de rede = Supabase inacessível
    supabaseStatus = 'disconnected';
  }

  // Se Supabase não está conectado, considera offline
  const isOffline = supabaseStatus !== 'connected';

  return NextResponse.json({
    status: isOffline ? 'offline' : 'ok',
    supabase: supabaseStatus,
    timestamp: new Date().toISOString(),
  });
}

export async function HEAD(request: NextRequest) {
  return new NextResponse(null, { status: 200 });
}
