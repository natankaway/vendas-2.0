/**
 * API de Movimentações de Caixa
 *
 * GET - Lista movimentações do caixa
 * POST - Cria nova movimentação (sangria/suprimento)
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
    const { searchParams } = new URL(request.url);

    const type = searchParams.get('type');

    // Verifica se o caixa existe
    const { data: cashRegister, error: fetchError } = await supabase
      .from('cash_registers')
      .select('id')
      .eq('id', id)
      .is('deleted_at', null)
      .single();

    if (fetchError || !cashRegister) {
      return NextResponse.json(
        { success: false, error: 'Caixa não encontrado' },
        { status: 404 }
      );
    }

    // Busca movimentações
    let query = supabase
      .from('cash_movements')
      .select('*, sale:sales(id, receipt_number, total), user:users(id, name)')
      .eq('cash_register_id', id)
      .is('deleted_at', null)
      .order('created_at', { ascending: true });

    if (type) {
      query = query.eq('type', type);
    }

    const { data: movements, error } = await query;

    if (error) {
      console.error('Erro ao buscar movimentações:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar movimentações' },
        { status: 500 }
      );
    }

    const formattedMovements = (movements || []).map(m => ({
      ...m,
      user_name: m.user?.name,
      sale_receipt: m.sale?.receipt_number,
      sale_total: m.sale?.total,
    }));

    return NextResponse.json({
      success: true,
      data: formattedMovements,
    });
  } catch (error) {
    console.error('Erro na API de movimentações:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function POST(request: NextRequest, { params }: RouteParams) {
  try {
    const supabase = getSupabase();
    const { id } = await params;
    const body = await request.json();

    const { type, amount, description, user_id } = body;

    // Validações
    if (!type || !['withdrawal', 'supply'].includes(type)) {
      return NextResponse.json(
        { success: false, error: 'Tipo de movimentação inválido (use: withdrawal ou supply)' },
        { status: 400 }
      );
    }

    if (typeof amount !== 'number' || amount <= 0) {
      return NextResponse.json(
        { success: false, error: 'Valor deve ser maior que zero' },
        { status: 400 }
      );
    }

    if (!user_id) {
      return NextResponse.json(
        { success: false, error: 'Usuário é obrigatório' },
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
        { success: false, error: 'Caixa não encontrado ou não está aberto' },
        { status: 404 }
      );
    }

    // Para sangria, verifica se há saldo suficiente
    if (type === 'withdrawal') {
      const { data: movements } = await supabase
        .from('cash_movements')
        .select('type, amount')
        .eq('cash_register_id', id)
        .is('deleted_at', null);

      const currentBalance = calculateBalance(movements || [], cashRegister.opening_balance);

      if (amount > currentBalance) {
        return NextResponse.json(
          { success: false, error: `Saldo insuficiente. Disponível: R$ ${(currentBalance / 100).toFixed(2)}` },
          { status: 400 }
        );
      }
    }

    const now = new Date().toISOString();
    const movementId = uuidv4();

    const typeLabels = {
      withdrawal: 'Sangria',
      supply: 'Suprimento',
    };

    // Cria a movimentação
    const { error: createError } = await supabase
      .from('cash_movements')
      .insert({
        id: movementId,
        cash_register_id: id,
        type,
        amount,
        description: description || typeLabels[type as keyof typeof typeLabels],
        user_id,
        created_at: now,
        updated_at: now,
      });

    if (createError) {
      console.error('Erro ao criar movimentação:', createError);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar movimentação' },
        { status: 500 }
      );
    }

    // Busca a movimentação criada
    const { data: movement } = await supabase
      .from('cash_movements')
      .select('*, user:users(id, name)')
      .eq('id', movementId)
      .single();

    return NextResponse.json({
      success: true,
      data: {
        ...movement,
        user_name: movement?.user?.name,
      },
      message: `${typeLabels[type as keyof typeof typeLabels]} registrada com sucesso`,
    });
  } catch (error) {
    console.error('Erro na API de movimentações:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

// Função auxiliar para calcular saldo atual
function calculateBalance(movements: Array<{ type: string; amount: number }>, openingBalance: number): number {
  let balance = 0;

  for (const movement of movements) {
    switch (movement.type) {
      case 'opening':
      case 'sale':
      case 'supply':
        balance += movement.amount;
        break;
      case 'withdrawal':
        balance -= movement.amount;
        break;
    }
  }

  // Se não houver movimentação de abertura, usa o openingBalance
  const hasOpeningMovement = movements.some(m => m.type === 'opening');
  if (!hasOpeningMovement) {
    balance += openingBalance;
  }

  return balance;
}
