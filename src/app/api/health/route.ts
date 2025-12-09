/**
 * API de Health Check
 *
 * Verifica se o servidor está funcionando.
 * Usado para detecção de conectividade.
 */

import { NextRequest, NextResponse } from 'next/server';

/**
 * GET /api/health
 * HEAD /api/health
 *
 * Retorna status do servidor.
 */
export async function GET(request: NextRequest) {
  return NextResponse.json({
    status: 'ok',
    timestamp: new Date().toISOString(),
  });
}

export async function HEAD(request: NextRequest) {
  return new NextResponse(null, { status: 200 });
}
