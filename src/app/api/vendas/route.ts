/**
 * API de Vendas
 *
 * Endpoints para criação e consulta de vendas.
 * Funciona 100% offline usando SQLite local.
 */

import { NextRequest, NextResponse } from 'next/server';
import { salesService } from '@/lib/services/sales-service';

/**
 * GET /api/vendas
 *
 * Lista vendas com filtros e paginação.
 */
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);

    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const status = searchParams.get('status') as any;
    const startDate = searchParams.get('startDate') || undefined;
    const endDate = searchParams.get('endDate') || undefined;
    const customerId = searchParams.get('customerId') || undefined;
    const userId = searchParams.get('userId') || undefined;

    // Busca por número do recibo
    const receiptNumber = searchParams.get('receipt');
    if (receiptNumber) {
      const sale = await salesService.findByReceiptNumber(receiptNumber);
      return NextResponse.json({
        success: true,
        data: sale,
      });
    }

    // Resumo do dia
    if (searchParams.get('summary') === 'daily') {
      const date = searchParams.get('date') || undefined;
      const summary = await salesService.getDailySummary(date);
      return NextResponse.json({
        success: true,
        data: summary,
      });
    }

    // Listagem com paginação
    const result = await salesService.list({
      page,
      limit,
      status,
      startDate,
      endDate,
      customerId,
      userId,
    });

    return NextResponse.json({
      success: true,
      data: result.data,
      total: result.total,
      page: result.page,
      limit: result.limit,
    });
  } catch (error) {
    console.error('Erro ao listar vendas:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao listar vendas',
      },
      { status: 500 }
    );
  }
}

/**
 * POST /api/vendas
 *
 * Cria uma nova venda.
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // Validação básica
    if (!body.items || body.items.length === 0) {
      return NextResponse.json(
        {
          success: false,
          error: 'A venda deve ter pelo menos um item',
        },
        { status: 400 }
      );
    }

    if (!body.user_id) {
      return NextResponse.json(
        {
          success: false,
          error: 'Usuário é obrigatório',
        },
        { status: 400 }
      );
    }

    if (!body.payment_method) {
      return NextResponse.json(
        {
          success: false,
          error: 'Forma de pagamento é obrigatória',
        },
        { status: 400 }
      );
    }

    // Cria a venda
    const sale = await salesService.create(body);

    return NextResponse.json({
      success: true,
      data: sale,
    });
  } catch (error) {
    console.error('Erro ao criar venda:', error);
    return NextResponse.json(
      {
        success: false,
        error: error instanceof Error ? error.message : 'Erro ao criar venda',
      },
      { status: 500 }
    );
  }
}
