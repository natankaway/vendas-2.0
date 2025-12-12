/**
 * API de Venda Individual
 *
 * GET - Busca venda por ID
 * PUT - Atualiza venda (usado para registrar pagamento)
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();

    const { data: sale, error } = await supabase
      .from('sales')
      .select('*, sale_items(*), customer:customers(id, name)')
      .eq('id', id)
      .single();

    if (error || !sale) {
      return NextResponse.json(
        { success: false, error: 'Venda não encontrada' },
        { status: 404 }
      );
    }

    return NextResponse.json({
      success: true,
      data: sale,
    });
  } catch (error) {
    console.error('Erro ao buscar venda:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();
    const body = await request.json();

    const { payment_method, status, notes } = body;

    // Busca a venda atual
    const { data: currentSale, error: fetchError } = await supabase
      .from('sales')
      .select('*')
      .eq('id', id)
      .single();

    if (fetchError || !currentSale) {
      return NextResponse.json(
        { success: false, error: 'Venda não encontrada' },
        { status: 404 }
      );
    }

    // Prepara os dados de atualização
    const updateData: Record<string, unknown> = {
      updated_at: new Date().toISOString(),
    };

    // Se estiver registrando pagamento (mudando de pending para completed)
    if (payment_method && currentSale.status === 'pending') {
      updateData.payment_method = payment_method;
      updateData.status = 'completed';
      updateData.completed_at = new Date().toISOString();
    }

    // Se estiver apenas mudando o status
    if (status && !payment_method) {
      updateData.status = status;
      if (status === 'completed' && !currentSale.completed_at) {
        updateData.completed_at = new Date().toISOString();
      }
    }

    // Notas adicionais
    if (notes !== undefined) {
      updateData.notes = notes;
    }

    const { data, error } = await supabase
      .from('sales')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) {
      console.error('Erro ao atualizar venda:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar venda' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
      message: 'Pagamento registrado com sucesso',
    });
  } catch (error) {
    console.error('Erro na API de vendas:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
