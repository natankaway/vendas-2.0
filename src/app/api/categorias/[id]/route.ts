/**
 * API de Categoria Individual
 *
 * GET - Busca categoria por ID
 * PUT - Atualiza categoria
 * DELETE - Remove categoria (soft delete)
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

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();

    const { data: category, error } = await supabase
      .from('product_categories')
      .select('*')
      .eq('id', id)
      .is('deleted_at', null)
      .single();

    if (error || !category) {
      return NextResponse.json(
        { success: false, error: 'Categoria não encontrada' },
        { status: 404 }
      );
    }

    return NextResponse.json({
      success: true,
      data: category,
    });
  } catch (error) {
    console.error('Erro ao buscar categoria:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();
    const body = await request.json();

    const { name, description, color, icon, parent_id, sort_order } = body;

    if (!name) {
      return NextResponse.json(
        { success: false, error: 'Nome é obrigatório' },
        { status: 400 }
      );
    }

    const updateData: Record<string, unknown> = {
      name,
      description: description || null,
      color: color || '#3B82F6',
      icon: icon || null,
      parent_id: parent_id || null,
      sort_order: sort_order ?? 0,
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('product_categories')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) {
      console.error('Erro ao atualizar categoria:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar categoria' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro na API de categorias:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();

    // Verifica se há produtos usando esta categoria
    const { data: products } = await supabase
      .from('products')
      .select('id')
      .eq('category_id', id)
      .is('deleted_at', null)
      .limit(1);

    if (products && products.length > 0) {
      return NextResponse.json(
        {
          success: false,
          error: 'Não é possível excluir esta categoria pois existem produtos vinculados a ela',
        },
        { status: 400 }
      );
    }

    // Verifica se há subcategorias
    const { data: subcategories } = await supabase
      .from('product_categories')
      .select('id')
      .eq('parent_id', id)
      .is('deleted_at', null)
      .limit(1);

    if (subcategories && subcategories.length > 0) {
      return NextResponse.json(
        {
          success: false,
          error: 'Não é possível excluir esta categoria pois existem subcategorias vinculadas',
        },
        { status: 400 }
      );
    }

    // Soft delete
    const { error } = await supabase
      .from('product_categories')
      .update({
        deleted_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      })
      .eq('id', id);

    if (error) {
      console.error('Erro ao excluir categoria:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao excluir categoria' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Categoria excluída com sucesso',
    });
  } catch (error) {
    console.error('Erro na API de categorias:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
