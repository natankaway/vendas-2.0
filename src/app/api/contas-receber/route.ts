/**
 * API de Contas a Receber
 *
 * GET - Lista contas a receber (vendas pendentes com pay_later)
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

    const customerId = searchParams.get('customer_id');
    const status = searchParams.get('status') || 'pending'; // pending, paid, all
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const offset = (page - 1) * limit;

    // Summary request
    if (searchParams.get('summary') === 'true') {
      // Get all pending sales with pay_later
      const { data: pendingSales } = await supabase
        .from('sales')
        .select('id, customer_id, total, created_at')
        .eq('payment_method', 'pay_later')
        .eq('status', 'pending')
        .is('deleted_at', null);

      // Get all payments
      const { data: payments } = await supabase
        .from('payment_records')
        .select('sale_id, amount')
        .is('deleted_at', null);

      // Calculate totals
      const paymentsBySale = new Map<string, number>();
      payments?.forEach(p => {
        const current = paymentsBySale.get(p.sale_id) || 0;
        paymentsBySale.set(p.sale_id, current + p.amount);
      });

      let totalReceivable = 0;
      let totalOverdue = 0;
      let accountsCount = 0;
      let overdueCount = 0;
      const now = new Date();
      const thirtyDaysAgo = new Date(now.getTime() - 30 * 24 * 60 * 60 * 1000);

      const customerDebts = new Map<string, { total: number; count: number }>();

      pendingSales?.forEach(sale => {
        const paid = paymentsBySale.get(sale.id) || 0;
        const remaining = sale.total - paid;

        if (remaining > 0) {
          totalReceivable += remaining;
          accountsCount++;

          const saleDate = new Date(sale.created_at);
          if (saleDate < thirtyDaysAgo) {
            totalOverdue += remaining;
            overdueCount++;
          }

          if (sale.customer_id) {
            const current = customerDebts.get(sale.customer_id) || { total: 0, count: 0 };
            customerDebts.set(sale.customer_id, {
              total: current.total + remaining,
              count: current.count + 1,
            });
          }
        }
      });

      // Get customer names
      const customerIds = Array.from(customerDebts.keys());
      const { data: customers } = await supabase
        .from('customers')
        .select('id, name, phone, credit_limit')
        .in('id', customerIds.length > 0 ? customerIds : ['none']);

      const customerMap = new Map(customers?.map(c => [c.id, c]) || []);

      const byCustomer = Array.from(customerDebts.entries())
        .map(([customerId, debt]) => ({
          customer: customerMap.get(customerId) || { id: customerId, name: 'Cliente não identificado' },
          total_debt: debt.total,
          sales_count: debt.count,
        }))
        .sort((a, b) => b.total_debt - a.total_debt);

      return NextResponse.json({
        success: true,
        data: {
          total_receivable: totalReceivable,
          total_overdue: totalOverdue,
          accounts_count: accountsCount,
          overdue_count: overdueCount,
          by_customer: byCustomer.slice(0, 10),
        },
      });
    }

    // List accounts receivable
    let query = supabase
      .from('sales')
      .select('*, customer:customers(id, name, phone, credit_limit, current_balance), items:sale_items(*)', { count: 'exact' })
      .eq('payment_method', 'pay_later')
      .is('deleted_at', null)
      .order('created_at', { ascending: false });

    if (status === 'pending') {
      query = query.eq('status', 'pending');
    }

    if (customerId) {
      query = query.eq('customer_id', customerId);
    }

    const { data: sales, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar contas a receber:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar contas a receber' },
        { status: 500 }
      );
    }

    // Get payment records for these sales
    const saleIds = sales?.map(s => s.id) || [];
    const { data: paymentRecords } = await supabase
      .from('payment_records')
      .select('*')
      .in('sale_id', saleIds.length > 0 ? saleIds : ['none'])
      .is('deleted_at', null)
      .order('created_at', { ascending: true });

    // Group payments by sale
    const paymentsBySale = new Map<string, typeof paymentRecords>();
    paymentRecords?.forEach(p => {
      const existing = paymentsBySale.get(p.sale_id) || [];
      existing.push(p);
      paymentsBySale.set(p.sale_id, existing);
    });

    // Calculate remaining balance and days overdue
    const now = new Date();
    const formattedSales = sales?.map(sale => {
      const payments = paymentsBySale.get(sale.id) || [];
      const totalPaid = payments.reduce((sum, p) => sum + p.amount, 0);
      const remainingBalance = sale.total - totalPaid;
      const saleDate = new Date(sale.created_at);
      const daysOverdue = Math.floor((now.getTime() - saleDate.getTime()) / (1000 * 60 * 60 * 24));

      return {
        ...sale,
        customer_name: sale.customer?.name || 'Cliente não identificado',
        customer_phone: sale.customer?.phone,
        customer_credit_limit: sale.customer?.credit_limit || 0,
        payments,
        total_paid: totalPaid,
        remaining_balance: remainingBalance,
        days_overdue: daysOverdue,
        is_paid: remainingBalance <= 0,
      };
    });

    // Filter by payment status if needed
    let filteredSales = formattedSales;
    if (status === 'pending') {
      filteredSales = formattedSales?.filter(s => !s.is_paid);
    } else if (status === 'paid') {
      filteredSales = formattedSales?.filter(s => s.is_paid);
    }

    return NextResponse.json({
      success: true,
      data: filteredSales,
      total: count || 0,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro na API de contas a receber:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
