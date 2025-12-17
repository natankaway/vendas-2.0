/**
 * API de Pagamentos de Contas a Receber
 *
 * GET - Lista pagamentos de uma venda específica
 * POST - Registra novo pagamento parcial ou total
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

    // Verify sale exists
    const { data: sale, error: saleError } = await supabase
      .from('sales')
      .select('id, customer_id, total')
      .eq('id', id)
      .single();

    if (saleError || !sale) {
      return NextResponse.json(
        { success: false, error: 'Venda não encontrada' },
        { status: 404 }
      );
    }

    // Get payments
    const { data: payments, error } = await supabase
      .from('payment_records')
      .select('*, received_by_user:users(id, name)')
      .eq('sale_id', id)
      .is('deleted_at', null)
      .order('created_at', { ascending: true });

    if (error) {
      console.error('Erro ao buscar pagamentos:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar pagamentos' },
        { status: 500 }
      );
    }

    const totalPaid = payments?.reduce((sum, p) => sum + p.amount, 0) || 0;
    const remainingBalance = sale.total - totalPaid;

    return NextResponse.json({
      success: true,
      data: {
        sale_id: id,
        sale_total: sale.total,
        total_paid: totalPaid,
        remaining_balance: remainingBalance,
        payments: payments?.map(p => ({
          ...p,
          received_by_name: p.received_by_user?.name,
        })) || [],
      },
    });
  } catch (error) {
    console.error('Erro na API de pagamentos:', error);
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

    const { amount, payment_method, notes, user_id } = body;

    // Validations
    if (typeof amount !== 'number' || amount <= 0) {
      return NextResponse.json(
        { success: false, error: 'Valor do pagamento inválido' },
        { status: 400 }
      );
    }

    if (!payment_method) {
      return NextResponse.json(
        { success: false, error: 'Forma de pagamento é obrigatória' },
        { status: 400 }
      );
    }

    if (!user_id) {
      return NextResponse.json(
        { success: false, error: 'Usuário é obrigatório' },
        { status: 400 }
      );
    }

    // Get sale with current payments
    const { data: sale, error: saleError } = await supabase
      .from('sales')
      .select('id, customer_id, total, payment_method, notes')
      .eq('id', id)
      .single();

    if (saleError || !sale) {
      return NextResponse.json(
        { success: false, error: 'Venda não encontrada' },
        { status: 404 }
      );
    }

    if (sale.payment_method !== 'pay_later') {
      return NextResponse.json(
        { success: false, error: 'Esta venda não é do tipo "Receber Depois"' },
        { status: 400 }
      );
    }

    // Get existing payments
    const { data: existingPayments } = await supabase
      .from('payment_records')
      .select('amount')
      .eq('sale_id', id)
      .is('deleted_at', null);

    const totalPaid = existingPayments?.reduce((sum, p) => sum + p.amount, 0) || 0;
    const remainingBalance = sale.total - totalPaid;

    if (amount > remainingBalance) {
      return NextResponse.json(
        {
          success: false,
          error: `Valor excede o saldo restante. Máximo: R$ ${(remainingBalance / 100).toFixed(2)}`
        },
        { status: 400 }
      );
    }

    const now = new Date().toISOString();
    const paymentId = uuidv4();

    // Create payment record (customer_id is optional)
    const paymentData: Record<string, any> = {
      id: paymentId,
      sale_id: id,
      amount,
      payment_method,
      notes: notes || null,
      received_by: user_id,
      created_at: now,
      updated_at: now,
    };

    // Only include customer_id if it exists
    if (sale.customer_id) {
      paymentData.customer_id = sale.customer_id;
    }

    const { error: createError } = await supabase
      .from('payment_records')
      .insert(paymentData);

    if (createError) {
      console.error('Erro ao registrar pagamento:', createError);
      // Check for customer_id constraint error
      if (createError.code === '23502' && createError.message.includes('customer_id')) {
        return NextResponse.json(
          {
            success: false,
            error: 'Esta venda não tem cliente associado. Para registrar pagamentos, a venda precisa ter um cliente.'
          },
          { status: 400 }
        );
      }
      return NextResponse.json(
        { success: false, error: 'Erro ao registrar pagamento' },
        { status: 500 }
      );
    }

    // Update customer balance if we have a customer
    if (sale.customer_id) {
      const { data: customer } = await supabase
        .from('customers')
        .select('current_balance')
        .eq('id', sale.customer_id)
        .single();

      if (customer) {
        await supabase
          .from('customers')
          .update({
            current_balance: Math.max(0, (customer.current_balance || 0) - amount),
            updated_at: now,
          })
          .eq('id', sale.customer_id);
      }
    }

    // Check if sale is now fully paid
    const newTotalPaid = totalPaid + amount;
    const newRemainingBalance = sale.total - newTotalPaid;
    const isFullyPaid = newRemainingBalance <= 0;

    // If fully paid, update sale status to reflect that
    if (isFullyPaid) {
      await supabase
        .from('sales')
        .update({
          status: 'completed',
          notes: sale.notes ? `${sale.notes}\n[Quitado em ${new Date().toLocaleDateString('pt-BR')}]` : `[Quitado em ${new Date().toLocaleDateString('pt-BR')}]`,
          updated_at: now,
        })
        .eq('id', id);
    }

    // Fetch created payment
    const { data: payment } = await supabase
      .from('payment_records')
      .select('*, received_by_user:users(id, name)')
      .eq('id', paymentId)
      .single();

    return NextResponse.json({
      success: true,
      data: {
        payment: {
          ...payment,
          received_by_name: payment?.received_by_user?.name,
        },
        sale_total: sale.total,
        total_paid: newTotalPaid,
        remaining_balance: newRemainingBalance,
        is_fully_paid: isFullyPaid,
      },
      message: isFullyPaid ? 'Pagamento registrado. Conta quitada!' : 'Pagamento registrado com sucesso',
    });
  } catch (error) {
    console.error('Erro na API de pagamentos:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
