/**
 * API de Categorias
 *
 * GET - Lista categorias
 * POST - Cria nova categoria
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';

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
    const tree = searchParams.get('tree') === 'true';

    const { data: categories, error } = await supabase
      .from('product_categories')
      .select('*')
      .is('deleted_at', null)
      .order('sort_order')
      .order('name');

    if (error) {
      console.error('Erro ao buscar categorias:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar categorias' },
        { status: 500 }
      );
    }

    if (tree) {
      // Organiza em árvore
      const rootCategories = categories?.filter((c) => !c.parent_id) || [];
      const treeData = rootCategories.map((root) => ({
        ...root,
        subcategories: categories?.filter((c) => c.parent_id === root.id) || [],
      }));

      return NextResponse.json({
        data: treeData,
        total: categories?.length || 0,
      });
    }

    return NextResponse.json({
      data: categories || [],
      total: categories?.length || 0,
    });
  } catch (error) {
    console.error('Erro na API de categorias:', error);
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

    const { name, description, color, icon, parent_id, sort_order } = body;

    if (!name) {
      return NextResponse.json(
        { success: false, error: 'Nome é obrigatório' },
        { status: 400 }
      );
    }

    const newCategory = {
      id: uuidv4(),
      name,
      description: description || null,
      color: color || '#3B82F6',
      icon: icon || null,
      parent_id: parent_id || null,
      sort_order: sort_order || 0,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('product_categories')
      .insert(newCategory)
      .select()
      .single();

    if (error) {
      console.error('Erro ao criar categoria:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar categoria' },
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
