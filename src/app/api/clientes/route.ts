/**
 * API de Clientes
 *
 * GET - Lista clientes com paginação e busca
 * POST - Cria novo cliente
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
    const searchType = searchParams.get('searchType') || 'name'; // name, phone, document, email
    const city = searchParams.get('city') || '';
    const state = searchParams.get('state') || '';
    const hasCredit = searchParams.get('hasCredit'); // 'true' or 'false'
    const hasPurchases = searchParams.get('hasPurchases'); // 'true' or 'false'
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '10');
    const offset = (page - 1) * limit;

    let query = supabase
      .from('customers')
      .select('*', { count: 'exact' })
      .is('deleted_at', null)
      .order('created_at', { ascending: false });

    // Busca por tipo
    if (search) {
      if (searchType === 'phone') {
        const digits = search.replace(/\D/g, '');
        query = query.ilike('phone', `%${digits}%`);
      } else if (searchType === 'document') {
        const digits = search.replace(/\D/g, '');
        query = query.ilike('document', `%${digits}%`);
      } else if (searchType === 'email') {
        query = query.ilike('email', `%${search}%`);
      } else {
        // Default: busca por nome
        query = query.ilike('name', `%${search}%`);
      }
    }

    // Filtro por cidade
    if (city) {
      query = query.ilike('city', `%${city}%`);
    }

    // Filtro por estado
    if (state) {
      query = query.eq('state', state);
    }

    // Filtro por crédito
    if (hasCredit === 'true') {
      query = query.gt('credit_limit', 0);
    } else if (hasCredit === 'false') {
      query = query.eq('credit_limit', 0);
    }

    // Filtro por compras
    if (hasPurchases === 'true') {
      query = query.gt('total_purchases', 0);
    } else if (hasPurchases === 'false') {
      query = query.eq('total_purchases', 0);
    }

    const { data: customers, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar clientes:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar clientes' },
        { status: 500 }
      );
    }

    // Retorna no formato esperado pelo frontend
    return NextResponse.json({
      data: customers || [],
      total: count || 0,
      page,
      limit,
      totalPages: Math.ceil((count || 0) / limit),
    });
  } catch (error) {
    console.error('Erro na API de clientes:', error);
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
      email,
      phone,
      document,
      address,
      city,
      state,
      zip_code,
      credit_limit,
      notes,
    } = body;

    if (!name) {
      return NextResponse.json(
        { success: false, error: 'Nome é obrigatório' },
        { status: 400 }
      );
    }

    const newCustomer = {
      id: uuidv4(),
      name,
      email: email || null,
      phone: phone || null,
      document: document || null,
      address: address || null,
      city: city || null,
      state: state || null,
      zip_code: zip_code || null,
      credit_limit: credit_limit || 0,
      notes: notes || null,
      total_purchases: 0,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('customers')
      .insert(newCustomer)
      .select()
      .single();

    if (error) {
      console.error('Erro ao criar cliente:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar cliente' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      customer: data,
    });
  } catch (error) {
    console.error('Erro na API de clientes:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
