/**
 * API de Categorias
 *
 * Endpoints para CRUD de categorias de produtos.
 */

import { NextRequest, NextResponse } from 'next/server';
import { categoriesService } from '@/lib/services/products-service';

/**
 * GET /api/categorias
 *
 * Lista categorias.
 */
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const tree = searchParams.get('tree') === 'true';

    if (tree) {
      const categories = await categoriesService.listTree();
      return NextResponse.json({
        success: true,
        data: categories,
      });
    }

    const result = await categoriesService.list();

    return NextResponse.json({
      success: true,
      data: result.data,
      total: result.total,
    });
  } catch (error) {
    console.error('Erro ao listar categorias:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao listar categorias',
      },
      { status: 500 }
    );
  }
}

/**
 * POST /api/categorias
 *
 * Cria uma nova categoria.
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body.name) {
      return NextResponse.json(
        {
          success: false,
          error: 'Nome é obrigatório',
        },
        { status: 400 }
      );
    }

    const category = await categoriesService.create(body);

    return NextResponse.json({
      success: true,
      data: category,
    });
  } catch (error) {
    console.error('Erro ao criar categoria:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao criar categoria',
      },
      { status: 500 }
    );
  }
}
