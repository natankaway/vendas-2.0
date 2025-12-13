/**
 * API de Gestão de Caixa
 *
 * GET - Lista caixas ou retorna o caixa aberto atual
 * POST - Abre um novo caixa
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

export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);

    const userId = searchParams.get('user_id');
    const status = searchParams.get('status');
    const current = searchParams.get('current') === 'true';
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const offset = (page - 1) * limit;

    // Busca caixa aberto atual do usuário
    if (current && userId) {
      const { data: openCashRegister, error } = await supabase
        .from('cash_registers')
        .select('*, user:users(id, name)')
        .eq('user_id', userId)
        .eq('status', 'open')
        .is('deleted_at', null)
        .single();

      if (error && error.code !== 'PGRST116') {
        console.error('Erro ao buscar caixa:', error);
        return NextResponse.json(
          { success: false, error: 'Erro ao buscar caixa' },
          { status: 500 }
        );
      }

      if (!openCashRegister) {
        return NextResponse.json({
          success: true,
          data: null,
          message: 'Nenhum caixa aberto',
        });
      }

      // Busca movimentações do caixa
      const { data: movements } = await supabase
        .from('cash_movements')
        .select('*')
        .eq('cash_register_id', openCashRegister.id)
        .is('deleted_at', null)
        .order('created_at', { ascending: true });

      // Calcula resumo
      const summary = calculateSummary(movements || [], openCashRegister.opening_balance);

      return NextResponse.json({
        success: true,
        data: {
          ...openCashRegister,
          user_name: openCashRegister.user?.name,
          movements: movements || [],
          ...summary,
        },
      });
    }

    // Lista caixas com paginação
    let query = supabase
      .from('cash_registers')
      .select('*, user:users(id, name)', { count: 'exact' })
      .is('deleted_at', null)
      .order('opened_at', { ascending: false });

    if (userId) {
      query = query.eq('user_id', userId);
    }

    if (status) {
      query = query.eq('status', status);
    }

    const { data: cashRegisters, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar caixas:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar caixas' },
        { status: 500 }
      );
    }

    const formattedData = (cashRegisters || []).map(cr => ({
      ...cr,
      user_name: cr.user?.name,
    }));

    return NextResponse.json({
      success: true,
      data: formattedData,
      total: count || 0,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro na API de caixa:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function POST(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const body = await request.json();

    const { user_id, opening_balance, notes } = body;

    if (!user_id) {
      return NextResponse.json(
        { success: false, error: 'Usuário é obrigatório' },
        { status: 400 }
      );
    }

    if (typeof opening_balance !== 'number' || opening_balance < 0) {
      return NextResponse.json(
        { success: false, error: 'Valor de abertura inválido' },
        { status: 400 }
      );
    }

    // Verifica se já existe caixa aberto para o usuário
    const { data: existingOpen } = await supabase
      .from('cash_registers')
      .select('id')
      .eq('user_id', user_id)
      .eq('status', 'open')
      .is('deleted_at', null)
      .single();

    if (existingOpen) {
      return NextResponse.json(
        { success: false, error: 'Já existe um caixa aberto para este usuário' },
        { status: 400 }
      );
    }

    const now = new Date().toISOString();
    const cashRegisterId = uuidv4();

    // Cria o caixa
    const { error: createError } = await supabase
      .from('cash_registers')
      .insert({
        id: cashRegisterId,
        user_id,
        status: 'open',
        opening_balance,
        notes: notes || null,
        opened_at: now,
        created_at: now,
        updated_at: now,
      });

    if (createError) {
      console.error('Erro ao abrir caixa:', createError);
      return NextResponse.json(
        { success: false, error: 'Erro ao abrir caixa' },
        { status: 500 }
      );
    }

    // Cria movimentação de abertura
    const movementId = uuidv4();
    await supabase
      .from('cash_movements')
      .insert({
        id: movementId,
        cash_register_id: cashRegisterId,
        type: 'opening',
        amount: opening_balance,
        description: 'Abertura de caixa',
        user_id,
        created_at: now,
        updated_at: now,
      });

    // Busca o caixa criado com dados do usuário
    const { data: cashRegister } = await supabase
      .from('cash_registers')
      .select('*, user:users(id, name)')
      .eq('id', cashRegisterId)
      .single();

    return NextResponse.json({
      success: true,
      data: {
        ...cashRegister,
        user_name: cashRegister?.user?.name,
      },
      message: 'Caixa aberto com sucesso',
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
