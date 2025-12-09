/**
 * API de Sincronização
 *
 * Endpoints para sincronização de dados entre SQLite local e Supabase.
 */

import { NextRequest, NextResponse } from 'next/server';
import { sync, getLastSyncTime, getUnresolvedConflicts, resolveConflict } from '@/lib/sync/service';
import { getQueueStats, getPendingCount } from '@/lib/sync/queue';

/**
 * GET /api/sync
 *
 * Retorna status da sincronização.
 */
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const action = searchParams.get('action');

    // Estatísticas da fila
    if (action === 'stats') {
      const stats = await getQueueStats();
      const lastSync = await getLastSyncTime();

      return NextResponse.json({
        success: true,
        data: {
          ...stats,
          lastSyncAt: lastSync,
        },
      });
    }

    // Conflitos não resolvidos
    if (action === 'conflicts') {
      const conflicts = await getUnresolvedConflicts();

      return NextResponse.json({
        success: true,
        data: conflicts,
      });
    }

    // Status geral
    const pendingCount = await getPendingCount();
    const lastSync = await getLastSyncTime();

    return NextResponse.json({
      success: true,
      data: {
        pendingCount,
        lastSyncAt: lastSync,
      },
    });
  } catch (error) {
    console.error('Erro ao obter status de sync:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao obter status de sincronização',
      },
      { status: 500 }
    );
  }
}

/**
 * POST /api/sync
 *
 * Executa sincronização.
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json().catch(() => ({}));

    const options = {
      force: body.force || false,
      pushOnly: body.pushOnly || false,
      pullOnly: body.pullOnly || false,
      entities: body.entities || undefined,
    };

    const result = await sync(options);

    return NextResponse.json({
      success: result.success,
      data: {
        processed: result.processed,
        succeeded: result.succeeded,
        failed: result.failed,
        conflicts: result.conflicts,
        duration: result.duration,
        errors: result.errors,
      },
    });
  } catch (error) {
    console.error('Erro na sincronização:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro na sincronização',
      },
      { status: 500 }
    );
  }
}

/**
 * PATCH /api/sync
 *
 * Resolve um conflito.
 */
export async function PATCH(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body.conflictId || !body.resolution) {
      return NextResponse.json(
        {
          success: false,
          error: 'conflictId e resolution são obrigatórios',
        },
        { status: 400 }
      );
    }

    await resolveConflict(body.conflictId, body.resolution, body.mergedData);

    return NextResponse.json({
      success: true,
    });
  } catch (error) {
    console.error('Erro ao resolver conflito:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao resolver conflito',
      },
      { status: 500 }
    );
  }
}
