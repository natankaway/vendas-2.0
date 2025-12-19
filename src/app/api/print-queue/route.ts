/**
 * API da Fila de Impressão
 *
 * POST - Adiciona um novo job de impressão na fila
 * GET - Lista jobs de impressão (com filtros)
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';

export const dynamic = 'force-dynamic';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

// Adicionar job de impressão
export async function POST(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const body = await request.json();

    const {
      sale_id,
      receipt_data,
      printer_id = 'default',
      copies = 1,
      priority = 0,
      created_by,
    } = body;

    if (!receipt_data) {
      return NextResponse.json(
        { success: false, error: 'Dados do recibo são obrigatórios' },
        { status: 400 }
      );
    }

    const newJob = {
      id: uuidv4(),
      sale_id,
      receipt_data,
      printer_id,
      copies,
      priority,
      status: 'pending',
      created_by,
      created_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('print_queue')
      .insert(newJob)
      .select()
      .single();

    if (error) {
      console.error('Erro ao adicionar job de impressão:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao adicionar à fila de impressão' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
      message: 'Impressão adicionada à fila',
    });
  } catch (error) {
    console.error('Erro na API de fila de impressão:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

// Listar jobs de impressão
export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);

    const status = searchParams.get('status');
    const printer_id = searchParams.get('printer_id') || 'default';
    const limit = parseInt(searchParams.get('limit') || '50');

    let query = supabase
      .from('print_queue')
      .select('*')
      .eq('printer_id', printer_id)
      .order('priority', { ascending: false })
      .order('created_at', { ascending: true })
      .limit(limit);

    if (status) {
      query = query.eq('status', status);
    }

    const { data, error } = await query;

    if (error) {
      console.error('Erro ao buscar fila de impressão:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar fila de impressão' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data: data || [],
      count: data?.length || 0,
    });
  } catch (error) {
    console.error('Erro na API de fila de impressão:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
