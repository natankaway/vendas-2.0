/**
 * API de Vendas
 *
 * GET - Lista vendas com paginação e filtros
 * POST - Cria nova venda
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

// Gera número de recibo único
function generateReceiptNumber(): string {
  const date = new Date();
  const year = date.getFullYear().toString().slice(-2);
  const month = (date.getMonth() + 1).toString().padStart(2, '0');
  const day = date.getDate().toString().padStart(2, '0');
  const random = Math.floor(Math.random() * 10000).toString().padStart(4, '0');
  return `${year}${month}${day}-${random}`;
}

export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);

    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const offset = (page - 1) * limit;
    const status = searchParams.get('status') || '';
    const startDate = searchParams.get('startDate') || '';
    const endDate = searchParams.get('endDate') || '';
    const receiptNumber = searchParams.get('receipt');

    // Busca por número do recibo
    if (receiptNumber) {
      const { data: sale } = await supabase
        .from('sales')
        .select('*, sale_items(*)')
        .eq('receipt_number', receiptNumber)
        .single();

      return NextResponse.json({
        success: true,
        data: sale,
      });
    }

    // Resumo do dia
    if (searchParams.get('summary') === 'daily') {
      const date = searchParams.get('date') || new Date().toISOString().split('T')[0];
      const startOfDay = `${date}T00:00:00`;
      const endOfDay = `${date}T23:59:59`;

      const { data: sales } = await supabase
        .from('sales')
        .select('*')
        .gte('created_at', startOfDay)
        .lte('created_at', endOfDay)
        .eq('status', 'completed');

      const summary = {
        date,
        total_sales: sales?.length || 0,
        total_amount: sales?.reduce((sum, s) => sum + (s.total || 0), 0) || 0,
        total_discount: sales?.reduce((sum, s) => sum + (s.discount || 0), 0) || 0,
        payment_methods: {} as Record<string, number>,
      };

      sales?.forEach((sale) => {
        const method = sale.payment_method || 'outros';
        summary.payment_methods[method] = (summary.payment_methods[method] || 0) + sale.total;
      });

      return NextResponse.json({
        success: true,
        data: summary,
      });
    }

    // Parâmetros adicionais
    const search = searchParams.get('search') || '';
    const searchType = searchParams.get('searchType') || 'receipt';
    const paymentMethod = searchParams.get('paymentMethod') || '';

    // Se buscar por cliente, primeiro encontra os IDs dos clientes
    let customerIds: string[] = [];
    if (search && searchType === 'customer') {
      const { data: customers } = await supabase
        .from('customers')
        .select('id')
        .ilike('name', `%${search}%`);

      customerIds = customers?.map(c => c.id) || [];
    }

    // Listagem com paginação
    let query = supabase
      .from('sales')
      .select('*, customer:customers(id, name, address, phone), user:users(id, name), items:sale_items(*)', { count: 'exact' })
      .order('created_at', { ascending: false });

    if (status) {
      query = query.eq('status', status);
    }

    if (paymentMethod) {
      query = query.eq('payment_method', paymentMethod);
    }

    if (startDate) {
      query = query.gte('created_at', `${startDate}T00:00:00`);
    }

    if (endDate) {
      query = query.lte('created_at', `${endDate}T23:59:59`);
    }

    // Aplica filtro de busca baseado no tipo
    if (search) {
      if (searchType === 'customer') {
        if (customerIds.length > 0) {
          query = query.in('customer_id', customerIds);
        } else {
          // Nenhum cliente encontrado, retorna vazio
          return NextResponse.json({
            data: [],
            total: 0,
            page,
            limit,
          });
        }
      } else {
        // Busca por número do recibo
        query = query.ilike('receipt_number', `%${search}%`);
      }
    }

    const { data: sales, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar vendas:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar vendas' },
        { status: 500 }
      );
    }

    // Formata os dados para incluir nomes
    const formattedSales = (sales || []).map(sale => ({
      ...sale,
      customer_name: sale.customer?.name || null,
      user_name: sale.user?.name || null,
    }));

    return NextResponse.json({
      data: formattedSales,
      total: count || 0,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro na API de vendas:', error);
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
      items,
      customer_id,
      user_id,
      payment_method,
      discount,
      notes,
    } = body;

    if (!items || items.length === 0) {
      return NextResponse.json(
        { success: false, error: 'A venda deve ter pelo menos um item' },
        { status: 400 }
      );
    }

    if (!user_id) {
      return NextResponse.json(
        { success: false, error: 'Usuário é obrigatório' },
        { status: 400 }
      );
    }

    if (!payment_method) {
      return NextResponse.json(
        { success: false, error: 'Forma de pagamento é obrigatória' },
        { status: 400 }
      );
    }

    // Verifica estoque disponível e busca dados dos produtos
    const stockErrors = [];
    const productsData: Record<string, { name: string; sku: string; stock_quantity: number; unit: string }> = {};

    for (const item of items) {
      const { data: product } = await supabase
        .from('products')
        .select('id, name, sku, stock_quantity, unit')
        .eq('id', item.product_id)
        .single();

      if (!product) {
        stockErrors.push(`Produto não encontrado: ${item.product_name}`);
      } else {
        productsData[item.product_id] = {
          name: product.name,
          sku: product.sku || 'SEM-SKU',
          stock_quantity: product.stock_quantity,
          unit: product.unit || 'un',
        };

        if (product.stock_quantity < item.quantity) {
          stockErrors.push(
            `${product.name}: estoque insuficiente (disponível: ${product.stock_quantity}, solicitado: ${item.quantity})`
          );
        }
      }
    }

    if (stockErrors.length > 0) {
      return NextResponse.json(
        {
          success: false,
          error: 'Estoque insuficiente',
          details: stockErrors
        },
        { status: 400 }
      );
    }

    // Calcula totais
    let subtotal = 0;
    const saleItems = [];

    for (const item of items) {
      const itemTotal = item.quantity * item.unit_price;
      const itemDiscount = item.discount_amount || item.discount || 0;
      subtotal += itemTotal - itemDiscount;

      const productInfo = productsData[item.product_id];

      saleItems.push({
        id: uuidv4(),
        product_id: item.product_id,
        product_name: item.product_name || productInfo?.name || 'Produto',
        product_sku: productInfo?.sku || 'SEM-SKU',
        quantity: item.quantity,
        unit_price: item.unit_price,
        discount_amount: itemDiscount,
        discount_percent: item.discount_percent || 0,
        tax_amount: item.tax_amount || 0,
        total: itemTotal - itemDiscount,
        unit: item.unit || productInfo?.unit || 'un',
      });
    }

    const total = subtotal - (discount || 0);
    const saleId = uuidv4();
    const receiptNumber = generateReceiptNumber();

    // Cria a venda
    // Se for "Receber Depois", status é pending, senão é completed
    const isPending = payment_method === 'pay_later';
    const now = new Date().toISOString();
    const { error: saleError } = await supabase
      .from('sales')
      .insert({
        id: saleId,
        receipt_number: receiptNumber,
        customer_id: customer_id || null,
        user_id,
        status: isPending ? 'pending' : 'completed',
        subtotal,
        discount_amount: discount || 0,
        discount_percent: 0,
        tax_amount: 0,
        total,
        payment_method,
        notes: notes || null,
        completed_at: isPending ? null : now,
        created_at: now,
        updated_at: now,
      });

    if (saleError) {
      console.error('Erro ao criar venda:', saleError);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar venda' },
        { status: 500 }
      );
    }

    // Insere itens da venda
    const itemsWithSaleId = saleItems.map((item) => ({
      ...item,
      sale_id: saleId,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    }));

    const { error: itemsError } = await supabase
      .from('sale_items')
      .insert(itemsWithSaleId);

    if (itemsError) {
      console.error('Erro ao criar itens da venda:', itemsError);
    }

    // Atualiza estoque dos produtos
    for (const item of items) {
      const { data: product } = await supabase
        .from('products')
        .select('stock_quantity')
        .eq('id', item.product_id)
        .single();

      if (product) {
        await supabase
          .from('products')
          .update({
            stock_quantity: product.stock_quantity - item.quantity,
            updated_at: new Date().toISOString(),
          })
          .eq('id', item.product_id);
      }
    }

    // Atualiza total de compras do cliente
    if (customer_id) {
      const { data: customer } = await supabase
        .from('customers')
        .select('total_purchases')
        .eq('id', customer_id)
        .single();

      if (customer) {
        await supabase
          .from('customers')
          .update({
            total_purchases: (customer.total_purchases || 0) + total,
            last_purchase_at: new Date().toISOString(),
            updated_at: new Date().toISOString(),
          })
          .eq('id', customer_id);
      }
    }

    return NextResponse.json({
      success: true,
      data: {
        id: saleId,
        receipt_number: receiptNumber,
        total,
        items: saleItems,
        created_at: now,
      },
    });
  } catch (error) {
    console.error('Erro na API de vendas:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
