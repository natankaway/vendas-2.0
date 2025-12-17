/**
 * API de Produtos
 *
 * GET - Lista produtos com paginação e busca
 * POST - Cria novo produto
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

    const search = searchParams.get('search') || '';
    const category = searchParams.get('category') || '';
    const status = searchParams.get('status') || '';
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '50');
    const offset = (page - 1) * limit;
    const code = searchParams.get('code');
    const active = searchParams.get('active') === 'true';

    // Busca por código de barras ou SKU específico
    if (code) {
      const { data: product } = await supabase
        .from('products')
        .select('*')
        .or(`barcode.eq.${code},sku.eq.${code}`)
        .is('deleted_at', null)
        .eq('is_active', true)
        .single();

      return NextResponse.json({
        data: product ? [product] : [],
        total: product ? 1 : 0,
      });
    }

    // Busca para PDV (todos os produtos ativos)
    if (active) {
      let pdvQuery = supabase
        .from('products')
        .select('*')
        .is('deleted_at', null)
        .eq('is_active', true)
        .order('name');

      if (category) {
        pdvQuery = pdvQuery.eq('category_id', category);
      }

      const { data: products } = await pdvQuery;

      return NextResponse.json({
        data: products || [],
        total: products?.length || 0,
      });
    }

    let query = supabase
      .from('products')
      .select('*', { count: 'exact' })
      .is('deleted_at', null)
      .order('created_at', { ascending: false });

    // Filtros
    if (search) {
      query = query.or(`name.ilike.%${search}%,sku.ilike.%${search}%,barcode.ilike.%${search}%`);
    }

    if (category) {
      query = query.eq('category_id', category);
    }

    if (status === 'active') {
      query = query.eq('is_active', true);
    } else if (status === 'inactive') {
      query = query.eq('is_active', false);
    }

    const { data: products, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar produtos:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar produtos' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      data: products || [],
      total: count || 0,
      page,
      limit,
      totalPages: Math.ceil((count || 0) / limit),
    });
  } catch (error) {
    console.error('Erro na API de produtos:', error);
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

    const {
      name,
      description,
      sku,
      barcode,
      category_id,
      price,
      cost_price,
      stock_quantity,
      min_stock_quantity,
      max_stock_quantity,
      unit,
      is_active,
      is_weighable,
      allow_decimal_quantity,
      tax_rate,
    } = body;

    if (!name || !sku || price === undefined) {
      return NextResponse.json(
        { success: false, error: 'Nome, SKU e preço são obrigatórios' },
        { status: 400 }
      );
    }

    // Verifica se SKU já existe
    const { data: existingSku } = await supabase
      .from('products')
      .select('id')
      .eq('sku', sku)
      .is('deleted_at', null)
      .single();

    if (existingSku) {
      return NextResponse.json(
        { success: false, error: 'SKU já existe' },
        { status: 400 }
      );
    }

    const newProduct = {
      id: uuidv4(),
      name,
      description: description || null,
      sku,
      barcode: barcode || null,
      category_id: category_id || null,
      price: price || 0,
      cost_price: cost_price || 0,
      stock_quantity: stock_quantity || 0,
      min_stock_quantity: min_stock_quantity || 0,
      max_stock_quantity: max_stock_quantity || null,
      unit: unit || 'UN',
      is_active: is_active !== false,
      is_weighable: is_weighable || false,
      allow_decimal_quantity: allow_decimal_quantity || false,
      tax_rate: tax_rate || 0,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('products')
      .insert(newProduct)
      .select()
      .single();

    if (error) {
      console.error('Erro ao criar produto:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar produto' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro na API de produtos:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
