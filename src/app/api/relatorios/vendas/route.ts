/**
 * API de Relatórios de Vendas
 *
 * Retorna estatísticas agregadas de vendas.
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

export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);
    const startDate = searchParams.get('start');
    const endDate = searchParams.get('end');

    // Helper para criar data no fuso local corretamente
    const parseLocalDate = (dateStr: string, endOfDay = false) => {
      const [year, month, day] = dateStr.split('-').map(Number);
      if (endOfDay) {
        return new Date(year, month - 1, day, 23, 59, 59, 999);
      }
      return new Date(year, month - 1, day, 0, 0, 0, 0);
    };

    // Default to last 30 days if no dates provided
    const now = new Date();
    let start: Date;
    let end: Date;

    if (endDate) {
      end = parseLocalDate(endDate, true);
    } else {
      end = new Date(now);
      end.setHours(23, 59, 59, 999);
    }

    if (startDate) {
      start = parseLocalDate(startDate, false);
    } else {
      start = new Date(end.getTime() - 30 * 24 * 60 * 60 * 1000);
      start.setHours(0, 0, 0, 0);
    }

    console.log('Relatórios - Período:', {
      startDate,
      endDate,
      startISO: start.toISOString(),
      endISO: end.toISOString(),
    });

    // Get sales for the period
    const { data: sales, error: salesError } = await supabase
      .from('sales')
      .select('*, customer:customers(id, name, address, phone), sale_items(*)')
      .gte('created_at', start.toISOString())
      .lte('created_at', end.toISOString())
      .order('created_at', { ascending: false });

    if (salesError) {
      console.error('Erro ao buscar vendas:', salesError);
    }

    console.log('Vendas encontradas:', sales?.length || 0);

    const allSales = sales || [];

    // Calculate summary
    const completedSales = allSales.filter(s => s.status === 'completed');
    const cancelledSales = allSales.filter(s => s.status === 'cancelled');

    const totalRevenue = completedSales.reduce((sum, s) => sum + (s.total || 0), 0);
    const avgTicket = completedSales.length > 0
      ? Math.round(totalRevenue / completedSales.length)
      : 0;

    const summary = {
      totalSales: allSales.length,
      totalRevenue,
      avgTicket,
      completedSales: completedSales.length,
      cancelledSales: cancelledSales.length,
    };

    // Calculate daily sales
    const dailySalesMap = new Map<string, { sales: number; revenue: number }>();

    completedSales.forEach(sale => {
      const date = new Date(sale.completed_at || sale.created_at).toISOString().split('T')[0];
      const existing = dailySalesMap.get(date) || { sales: 0, revenue: 0 };
      dailySalesMap.set(date, {
        sales: existing.sales + 1,
        revenue: existing.revenue + (sale.total || 0),
      });
    });

    const dailySales = Array.from(dailySalesMap.entries())
      .map(([date, data]) => ({ date, ...data }))
      .sort((a, b) => a.date.localeCompare(b.date));

    // Calculate payment method stats
    const paymentMethodMap = new Map<string, { count: number; total: number }>();

    completedSales.forEach(sale => {
      if (sale.payment_method) {
        const existing = paymentMethodMap.get(sale.payment_method) || { count: 0, total: 0 };
        paymentMethodMap.set(sale.payment_method, {
          count: existing.count + 1,
          total: existing.total + (sale.total || 0),
        });
      }
    });

    const paymentMethods = Array.from(paymentMethodMap.entries())
      .map(([method, data]) => ({ method, ...data }))
      .sort((a, b) => b.total - a.total);

    // Get top products from sale items
    const productSalesMap = new Map<string, { id: string; name: string; quantity: number; revenue: number }>();

    for (const sale of completedSales) {
      if (sale.sale_items) {
        for (const item of sale.sale_items) {
          const existing = productSalesMap.get(item.product_id) || {
            id: item.product_id,
            name: item.product_name || 'Produto',
            quantity: 0,
            revenue: 0,
          };
          productSalesMap.set(item.product_id, {
            ...existing,
            quantity: existing.quantity + (item.quantity || 0),
            revenue: existing.revenue + (item.total || 0),
          });
        }
      }
    }

    const topProducts = Array.from(productSalesMap.values())
      .sort((a, b) => b.revenue - a.revenue)
      .slice(0, 10);

    // Get top customers
    const customerSalesMap = new Map<string, { id: string; name: string; purchases: number; totalSpent: number }>();

    completedSales.forEach(sale => {
      if (sale.customer_id && sale.customer) {
        const existing = customerSalesMap.get(sale.customer_id) || {
          id: sale.customer_id,
          name: sale.customer.name || 'Cliente',
          purchases: 0,
          totalSpent: 0,
        };
        customerSalesMap.set(sale.customer_id, {
          ...existing,
          purchases: existing.purchases + 1,
          totalSpent: existing.totalSpent + (sale.total || 0),
        });
      }
    });

    const topCustomers = Array.from(customerSalesMap.values())
      .sort((a, b) => b.totalSpent - a.totalSpent)
      .slice(0, 10);

    // Distribuição por hora do dia
    const hourlyDistribution = Array(24).fill(0).map((_, hour) => ({
      hour,
      sales: 0,
      revenue: 0,
    }));

    completedSales.forEach(sale => {
      const hour = new Date(sale.created_at).getHours();
      hourlyDistribution[hour].sales += 1;
      hourlyDistribution[hour].revenue += sale.total || 0;
    });

    // Vendas do período anterior para comparação
    const periodLength = end.getTime() - start.getTime();
    const previousStart = new Date(start.getTime() - periodLength);
    const previousEnd = new Date(start.getTime() - 1);

    const { data: previousSales } = await supabase
      .from('sales')
      .select('total, status')
      .gte('created_at', previousStart.toISOString())
      .lte('created_at', previousEnd.toISOString());

    const previousCompletedSales = (previousSales || []).filter(s => s.status === 'completed');
    const previousRevenue = previousCompletedSales.reduce((sum, s) => sum + (s.total || 0), 0);
    const previousCount = previousCompletedSales.length;

    const comparison = {
      previousRevenue,
      previousCount,
      revenueChange: previousRevenue > 0
        ? ((summary.totalRevenue - previousRevenue) / previousRevenue) * 100
        : summary.totalRevenue > 0 ? 100 : 0,
      countChange: previousCount > 0
        ? ((summary.completedSales - previousCount) / previousCount) * 100
        : summary.completedSales > 0 ? 100 : 0,
    };

    // Vendas sem cliente (balcão)
    const balcaoSales = completedSales.filter(s => !s.customer_id).length;
    const balcaoRevenue = completedSales.filter(s => !s.customer_id).reduce((sum, s) => sum + (s.total || 0), 0);

    return NextResponse.json({
      success: true,
      summary: {
        ...summary,
        balcaoSales,
        balcaoRevenue,
      },
      dailySales,
      paymentMethods,
      topProducts,
      topCustomers,
      hourlyDistribution,
      comparison,
    });
  } catch (error) {
    console.error('Erro ao gerar relatório:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao gerar relatório de vendas',
      },
      { status: 500 }
    );
  }
}
