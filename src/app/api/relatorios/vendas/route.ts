/**
 * API de Relatórios de Vendas
 *
 * Retorna estatísticas agregadas de vendas.
 */

import { NextRequest, NextResponse } from 'next/server';
import { salesService } from '@/lib/services/sales-service';

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const startDate = searchParams.get('start');
    const endDate = searchParams.get('end');

    // Default to last 30 days if no dates provided
    const end = endDate ? new Date(endDate) : new Date();
    const start = startDate
      ? new Date(startDate)
      : new Date(end.getTime() - 30 * 24 * 60 * 60 * 1000);

    // Get sales for the period
    const { data: sales } = await salesService.list({
      startDate: start.toISOString(),
      endDate: end.toISOString(),
      limit: 10000,
    });

    // Calculate summary
    const completedSales = sales.filter(s => s.status === 'completed');
    const cancelledSales = sales.filter(s => s.status === 'cancelled');

    const totalRevenue = completedSales.reduce((sum, s) => sum + s.total, 0);
    const avgTicket = completedSales.length > 0
      ? Math.round(totalRevenue / completedSales.length)
      : 0;

    const summary = {
      totalSales: sales.length,
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
        revenue: existing.revenue + sale.total,
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
          total: existing.total + sale.total,
        });
      }
    });

    const paymentMethods = Array.from(paymentMethodMap.entries())
      .map(([method, data]) => ({ method, ...data }))
      .sort((a, b) => b.total - a.total);

    // Get top products from sale items
    const productSalesMap = new Map<string, { id: string; name: string; quantity: number; revenue: number }>();

    for (const sale of completedSales) {
      if (sale.items) {
        for (const item of sale.items) {
          const existing = productSalesMap.get(item.product_id) || {
            id: item.product_id,
            name: item.product_name,
            quantity: 0,
            revenue: 0,
          };
          productSalesMap.set(item.product_id, {
            ...existing,
            quantity: existing.quantity + item.quantity,
            revenue: existing.revenue + item.total,
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
          name: sale.customer.name,
          purchases: 0,
          totalSpent: 0,
        };
        customerSalesMap.set(sale.customer_id, {
          ...existing,
          purchases: existing.purchases + 1,
          totalSpent: existing.totalSpent + sale.total,
        });
      }
    });

    const topCustomers = Array.from(customerSalesMap.values())
      .sort((a, b) => b.totalSpent - a.totalSpent)
      .slice(0, 10);

    return NextResponse.json({
      success: true,
      summary,
      dailySales,
      paymentMethods,
      topProducts,
      topCustomers,
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
