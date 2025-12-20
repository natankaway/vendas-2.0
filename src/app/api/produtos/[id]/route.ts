/**
 * API de Produto Individual
 *
 * GET - Busca produto por ID
 * PUT - Atualiza produto
 * DELETE - Remove produto (soft delete)
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
  { params }: { params: { id: string } }
) {
  try {
    const supabase = getSupabase();

    const { data: product, error } = await supabase
      .from('products')
      .select('*')
      .eq('id', params.id)
      .is('deleted_at', null)
      .single();

    if (error || !product) {
      return NextResponse.json(
        { success: false, error: 'Produto não encontrado' },
        { status: 404 }
      );
    }

    return NextResponse.json({
      success: true,
      data: product,
    });
  } catch (error) {
    console.error('Erro ao buscar produto:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
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
      expiration_date,
    } = body;

    // Verifica se SKU já existe (excluindo o produto atual)
    if (sku) {
      const { data: existingSku } = await supabase
        .from('products')
        .select('id')
        .eq('sku', sku)
        .neq('id', params.id)
        .is('deleted_at', null)
        .single();

      if (existingSku) {
        return NextResponse.json(
          { success: false, error: 'SKU já existe' },
          { status: 400 }
        );
      }
    }

    const updates: Record<string, unknown> = {
      updated_at: new Date().toISOString(),
    };

    if (name !== undefined) updates.name = name;
    if (description !== undefined) updates.description = description || null;
    if (sku !== undefined) updates.sku = sku;
    if (barcode !== undefined) updates.barcode = barcode || null;
    if (category_id !== undefined) updates.category_id = category_id || null;
    if (price !== undefined) updates.price = price;
    if (cost_price !== undefined) updates.cost_price = cost_price;
    if (stock_quantity !== undefined) updates.stock_quantity = stock_quantity;
    if (min_stock_quantity !== undefined) updates.min_stock_quantity = min_stock_quantity;
    if (max_stock_quantity !== undefined) updates.max_stock_quantity = max_stock_quantity;
    if (unit !== undefined) updates.unit = unit;
    if (is_active !== undefined) updates.is_active = is_active;
    if (is_weighable !== undefined) updates.is_weighable = is_weighable;
    if (allow_decimal_quantity !== undefined) updates.allow_decimal_quantity = allow_decimal_quantity;
    if (tax_rate !== undefined) updates.tax_rate = tax_rate;
    if (expiration_date !== undefined) updates.expiration_date = expiration_date || null;

    const { data, error } = await supabase
      .from('products')
      .update(updates)
      .eq('id', params.id)
      .select()
      .single();

    if (error) {
      console.error('Erro ao atualizar produto:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar produto' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro ao atualizar produto:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const supabase = getSupabase();

    // Soft delete
    const { error } = await supabase
      .from('products')
      .update({ deleted_at: new Date().toISOString() })
      .eq('id', params.id);

    if (error) {
      console.error('Erro ao excluir produto:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao excluir produto' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Produto excluído com sucesso',
    });
  } catch (error) {
    console.error('Erro ao excluir produto:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
