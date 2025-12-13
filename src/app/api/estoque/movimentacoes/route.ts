/**
 * API de Movimentações de Estoque
 *
 * GET - Lista movimentações de estoque
 * POST - Cria nova movimentação (ajuste, entrada, perda)
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';

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

    const productId = searchParams.get('product_id');
    const type = searchParams.get('type');
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '50');
    const offset = (page - 1) * limit;

    // Summary request
    if (searchParams.get('summary') === 'true') {
      const { data: movements } = await supabase
        .from('stock_movements')
        .select('type, quantity')
        .is('deleted_at', null);

      const summary = {
        total_purchases: 0,
        total_sales: 0,
        total_adjustments: 0,
        total_returns: 0,
        total_losses: 0,
      };

      movements?.forEach(m => {
        switch (m.type) {
          case 'purchase':
            summary.total_purchases += m.quantity;
            break;
          case 'sale':
            summary.total_sales += Math.abs(m.quantity);
            break;
          case 'adjustment':
            summary.total_adjustments += m.quantity;
            break;
          case 'return':
            summary.total_returns += m.quantity;
            break;
          case 'loss':
            summary.total_losses += Math.abs(m.quantity);
            break;
        }
      });

      return NextResponse.json({
        success: true,
        data: summary,
      });
    }

    // Low stock alert
    if (searchParams.get('low_stock') === 'true') {
      const { data: products } = await supabase
        .from('products')
        .select('id, name, sku, stock_quantity, min_stock_quantity, category_id')
        .eq('is_active', true)
        .is('deleted_at', null)
        .order('stock_quantity', { ascending: true });

      const lowStockProducts = products?.filter(p =>
        p.stock_quantity <= p.min_stock_quantity
      ) || [];

      const outOfStock = lowStockProducts.filter(p => p.stock_quantity <= 0);
      const lowStock = lowStockProducts.filter(p => p.stock_quantity > 0);

      return NextResponse.json({
        success: true,
        data: {
          out_of_stock: outOfStock,
          low_stock: lowStock,
          total_alerts: lowStockProducts.length,
        },
      });
    }

    // List movements
    let query = supabase
      .from('stock_movements')
      .select('*, product:products(id, name, sku), user:users(id, name)', { count: 'exact' })
      .is('deleted_at', null)
      .order('created_at', { ascending: false });

    if (productId) {
      query = query.eq('product_id', productId);
    }

    if (type) {
      query = query.eq('type', type);
    }

    const { data: movements, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar movimentações:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar movimentações' },
        { status: 500 }
      );
    }

    const formattedMovements = movements?.map(m => ({
      ...m,
      product_name: m.product?.name,
      product_sku: m.product?.sku,
      user_name: m.user?.name,
    })) || [];

    return NextResponse.json({
      success: true,
      data: formattedMovements,
      total: count || 0,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro na API de movimentações:', error);
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

    const { product_id, quantity, type, reason, unit_cost, user_id } = body;

    // Validations
    if (!product_id) {
      return NextResponse.json(
        { success: false, error: 'Produto é obrigatório' },
        { status: 400 }
      );
    }

    if (typeof quantity !== 'number' || quantity === 0) {
      return NextResponse.json(
        { success: false, error: 'Quantidade inválida' },
        { status: 400 }
      );
    }

    if (!type || !['purchase', 'adjustment', 'return', 'loss'].includes(type)) {
      return NextResponse.json(
        { success: false, error: 'Tipo de movimentação inválido' },
        { status: 400 }
      );
    }

    if (!user_id) {
      return NextResponse.json(
        { success: false, error: 'Usuário é obrigatório' },
        { status: 400 }
      );
    }

    // Get current product stock
    const { data: product, error: productError } = await supabase
      .from('products')
      .select('id, name, stock_quantity')
      .eq('id', product_id)
      .single();

    if (productError || !product) {
      return NextResponse.json(
        { success: false, error: 'Produto não encontrado' },
        { status: 404 }
      );
    }

    // For losses and negative adjustments, check if there's enough stock
    const actualQuantity = type === 'loss' ? -Math.abs(quantity) :
                           type === 'adjustment' ? quantity :
                           Math.abs(quantity);

    const newStock = product.stock_quantity + actualQuantity;

    if (newStock < 0) {
      return NextResponse.json(
        { success: false, error: `Estoque insuficiente. Disponível: ${product.stock_quantity}` },
        { status: 400 }
      );
    }

    const now = new Date().toISOString();
    const movementId = uuidv4();

    // Create movement
    const { error: createError } = await supabase
      .from('stock_movements')
      .insert({
        id: movementId,
        product_id,
        quantity: actualQuantity,
        type,
        reason: reason || null,
        unit_cost: unit_cost || null,
        user_id,
        created_at: now,
        updated_at: now,
      });

    if (createError) {
      console.error('Erro ao criar movimentação:', createError);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar movimentação' },
        { status: 500 }
      );
    }

    // Update product stock
    const { error: updateError } = await supabase
      .from('products')
      .update({
        stock_quantity: newStock,
        updated_at: now,
      })
      .eq('id', product_id);

    if (updateError) {
      console.error('Erro ao atualizar estoque:', updateError);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar estoque do produto' },
        { status: 500 }
      );
    }

    // Fetch created movement
    const { data: movement } = await supabase
      .from('stock_movements')
      .select('*, product:products(id, name, sku), user:users(id, name)')
      .eq('id', movementId)
      .single();

    const typeLabels: Record<string, string> = {
      purchase: 'Entrada',
      adjustment: 'Ajuste',
      return: 'Devolução',
      loss: 'Perda',
    };

    return NextResponse.json({
      success: true,
      data: {
        ...movement,
        product_name: movement?.product?.name,
        user_name: movement?.user?.name,
        new_stock: newStock,
      },
      message: `${typeLabels[type]} registrada com sucesso`,
    });
  } catch (error) {
    console.error('Erro na API de movimentações:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
