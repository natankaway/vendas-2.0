/**
 * API de Health Check
 *
 * Verifica se o servidor está funcionando e a conexão com Supabase.
 * Usado para detecção de conectividade.
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

/**
 * GET /api/health
 * HEAD /api/health
 *
 * Retorna status do servidor e conexão com Supabase.
 */
export async function GET(request: NextRequest) {
  let supabaseStatus = 'disconnected';

  try {
    const supabase = createClient(supabaseUrl, supabaseKey);
    // Tenta fazer uma query simples para verificar conexão
    const { error } = await supabase.from('products').select('id').limit(1);
    supabaseStatus = error ? 'error' : 'connected';
  } catch {
    supabaseStatus = 'error';
  }

  return NextResponse.json({
    status: 'ok',
    supabase: supabaseStatus,
    timestamp: new Date().toISOString(),
  });
}

export async function HEAD(request: NextRequest) {
  return new NextResponse(null, { status: 200 });
}
