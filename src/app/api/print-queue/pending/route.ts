/**
 * API para Jobs Pendentes de Impressão
 *
 * GET - Retorna jobs pendentes e marca como "processing"
 *
 * Esta API é usada pelo Agente de Impressão para buscar novos jobs
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

export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);

    const printer_id = searchParams.get('printer_id') || 'default';
    const limit = parseInt(searchParams.get('limit') || '10');

    // Buscar jobs pendentes
    const { data: pendingJobs, error: fetchError } = await supabase
      .from('print_queue')
      .select('*')
      .eq('printer_id', printer_id)
      .eq('status', 'pending')
      .order('priority', { ascending: false })
      .order('created_at', { ascending: true })
      .limit(limit);

    if (fetchError) {
      console.error('Erro ao buscar jobs pendentes:', fetchError);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar jobs pendentes' },
        { status: 500 }
      );
    }

    if (!pendingJobs || pendingJobs.length === 0) {
      return NextResponse.json({
        success: true,
        data: [],
        count: 0,
      });
    }

    // Marcar jobs como "processing"
    const jobIds = pendingJobs.map(job => job.id);

    const { error: updateError } = await supabase
      .from('print_queue')
      .update({
        status: 'processing',
        processed_at: new Date().toISOString(),
      })
      .in('id', jobIds);

    if (updateError) {
      console.error('Erro ao atualizar status dos jobs:', updateError);
      // Ainda retorna os jobs mesmo se falhar a atualização
    }

    return NextResponse.json({
      success: true,
      data: pendingJobs,
      count: pendingJobs.length,
    });
  } catch (error) {
    console.error('Erro na API de jobs pendentes:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
