/**
 * API de Caixa Individual
 *
 * GET - Detalhes do caixa com movimentações
 * PUT - Fecha o caixa
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

interface RouteParams {
  params: Promise<{ id: string }>;
}

export async function GET(request: NextRequest, { params }: RouteParams) {
  try {
    const supabase = getSupabase();
    const { id } = await params;

    // Busca o caixa
    const { data: cashRegister, error } = await supabase
      .from('cash_registers')
      .select('*, user:users(id, name)')
      .eq('id', id)
      .is('deleted_at', null)
      .single();

    if (error || !cashRegister) {
      return NextResponse.json(
        { success: false, error: 'Caixa não encontrado' },
        { status: 404 }
      );
    }

    // Busca movimentações
    const { data: movements } = await supabase
      .from('cash_movements')
      .select('*, sale:sales(id, receipt_number, total)')
      .eq('cash_register_id', id)
      .is('deleted_at', null)
      .order('created_at', { ascending: true });

    // Calcula resumo
    const summary = calculateSummary(movements || [], cashRegister.opening_balance);

    return NextResponse.json({
      success: true,
      data: {
        ...cashRegister,
        user_name: cashRegister.user?.name,
        movements: movements || [],
        ...summary,
      },
    });
  } catch (error) {
    console.error('Erro na API de caixa:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function PUT(request: NextRequest, { params }: RouteParams) {
  try {
    const supabase = getSupabase();
    const { id } = await params;
    const body = await request.json();

    const { closing_balance, notes, user_id } = body;

    if (typeof closing_balance !== 'number' || closing_balance < 0) {
      return NextResponse.json(
        { success: false, error: 'Valor de fechamento inválido' },
        { status: 400 }
      );
    }

    // Verifica se o caixa existe e está aberto
    const { data: cashRegister, error: fetchError } = await supabase
      .from('cash_registers')
      .select('*')
      .eq('id', id)
      .eq('status', 'open')
      .is('deleted_at', null)
      .single();

    if (fetchError || !cashRegister) {
      return NextResponse.json(
        { success: false, error: 'Caixa não encontrado ou já fechado' },
        { status: 404 }
      );
    }

    // Busca movimentações para calcular saldo esperado
    const { data: movements } = await supabase
      .from('cash_movements')
      .select('*')
      .eq('cash_register_id', id)
      .is('deleted_at', null);

    const summary = calculateSummary(movements || [], cashRegister.opening_balance);
    const difference = closing_balance - summary.expected_balance;

    const now = new Date().toISOString();

    // Cria movimentação de fechamento
    const movementId = uuidv4();
    await supabase
      .from('cash_movements')
      .insert({
        id: movementId,
        cash_register_id: id,
        type: 'closing',
        amount: closing_balance,
        description: `Fechamento de caixa${difference !== 0 ? ` (diferença: R$ ${(difference / 100).toFixed(2)})` : ''}`,
        user_id: user_id || cashRegister.user_id,
        created_at: now,
        updated_at: now,
      });

    // Fecha o caixa
    const { error: updateError } = await supabase
      .from('cash_registers')
      .update({
        status: 'closed',
        closing_balance,
        expected_balance: summary.expected_balance,
        difference,
        notes: notes ? (cashRegister.notes ? `${cashRegister.notes}\n${notes}` : notes) : cashRegister.notes,
        closed_at: now,
        updated_at: now,
      })
      .eq('id', id);

    if (updateError) {
      console.error('Erro ao fechar caixa:', updateError);
      return NextResponse.json(
        { success: false, error: 'Erro ao fechar caixa' },
        { status: 500 }
      );
    }

    // Busca o caixa atualizado
    const { data: updatedCashRegister } = await supabase
      .from('cash_registers')
      .select('*, user:users(id, name)')
      .eq('id', id)
      .single();

    return NextResponse.json({
      success: true,
      data: {
        ...updatedCashRegister,
        user_name: updatedCashRegister?.user?.name,
        ...summary,
      },
      message: 'Caixa fechado com sucesso',
    });
  } catch (error) {
    console.error('Erro na API de caixa:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

// Função auxiliar para calcular resumo do caixa
function calculateSummary(movements: Array<{ type: string; amount: number }>, openingBalance: number) {
  let totalSales = 0;
  let totalWithdrawals = 0;
  let totalSupplies = 0;
  let salesCount = 0;

  for (const movement of movements) {
    switch (movement.type) {
      case 'sale':
        totalSales += movement.amount;
        salesCount++;
        break;
      case 'withdrawal':
        totalWithdrawals += movement.amount;
        break;
      case 'supply':
        totalSupplies += movement.amount;
        break;
    }
  }

  const expectedBalance = openingBalance + totalSales + totalSupplies - totalWithdrawals;

  return {
    total_sales: totalSales,
    total_withdrawals: totalWithdrawals,
    total_supplies: totalSupplies,
    sales_count: salesCount,
    expected_balance: expectedBalance,
  };
}
