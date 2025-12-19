/**
 * API para Gerenciar Job de Impressão Individual
 *
 * PUT - Atualiza status do job (completed, failed)
 * DELETE - Remove job da fila
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

export const dynamic = 'force-dynamic';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

// Atualizar status do job
export async function PUT(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const supabase = getSupabase();
    const { id } = params;
    const body = await request.json();

    const { status, error_message } = body;

    if (!status || !['completed', 'failed', 'pending'].includes(status)) {
      return NextResponse.json(
        { success: false, error: 'Status inválido' },
        { status: 400 }
      );
    }

    const updateData: Record<string, any> = {
      status,
    };

    if (status === 'completed') {
      updateData.completed_at = new Date().toISOString();
    }

    if (status === 'failed' && error_message) {
      updateData.error_message = error_message;
    }

    // Se voltando para pending, limpa os timestamps de processamento
    if (status === 'pending') {
      updateData.processed_at = null;
      updateData.completed_at = null;
      updateData.error_message = null;
    }

    const { data, error } = await supabase
      .from('print_queue')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) {
      console.error('Erro ao atualizar job:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar job' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro na API de job:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

// Deletar job
export async function DELETE(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const supabase = getSupabase();
    const { id } = params;

    const { error } = await supabase
      .from('print_queue')
      .delete()
      .eq('id', id);

    if (error) {
      console.error('Erro ao deletar job:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao deletar job' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Job removido da fila',
    });
  } catch (error) {
    console.error('Erro na API de job:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
