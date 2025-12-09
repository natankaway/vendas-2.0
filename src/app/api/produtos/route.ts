/**
 * API de Produtos
 *
 * Endpoints para CRUD de produtos.
 * Todas as operações usam o SQLite local primeiro (offline-first).
 */

import { NextRequest, NextResponse } from 'next/server';
import { productsService } from '@/lib/services/products-service';

/**
 * GET /api/produtos
 *
 * Lista produtos com filtros e paginação.
 */
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);

    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '50');
    const search = searchParams.get('search') || undefined;
    const category = searchParams.get('category') || undefined;
    const active = searchParams.get('active') === 'true';

    // Se busca por código de barras ou SKU específico
    const code = searchParams.get('code');
    if (code) {
      const product = await productsService.findByCode(code);
      return NextResponse.json({
        success: true,
        data: product ? [product] : [],
        total: product ? 1 : 0,
      });
    }

    // Busca para PDV (todos os produtos ativos)
    if (active && !search) {
      const products = await productsService.listForPDV(category || undefined);
      return NextResponse.json({
        success: true,
        data: products,
        total: products.length,
      });
    }

    // Listagem com paginação
    const result = await productsService.list({
      page,
      limit,
      search,
      searchFields: ['name', 'sku', 'barcode'],
    });

    return NextResponse.json({
      success: true,
      data: result.data,
      total: result.total,
      page: result.page,
      limit: result.limit,
      totalPages: result.totalPages,
    });
  } catch (error) {
    console.error('Erro ao listar produtos:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao listar produtos',
      },
      { status: 500 }
    );
  }
}

/**
 * POST /api/produtos
 *
 * Cria um novo produto.
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // Validação básica
    if (!body.name || !body.sku || body.price === undefined) {
      return NextResponse.json(
        {
          success: false,
          error: 'Nome, SKU e preço são obrigatórios',
        },
        { status: 400 }
      );
    }

    // Verifica se SKU já existe
    const existingSku = await productsService.skuExists(body.sku);
    if (existingSku) {
      return NextResponse.json(
        {
          success: false,
          error: 'SKU já existe',
        },
        { status: 400 }
      );
    }

    const product = await productsService.create(body);

    return NextResponse.json({
      success: true,
      data: product,
    });
  } catch (error) {
    console.error('Erro ao criar produto:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao criar produto',
      },
      { status: 500 }
    );
  }
}
