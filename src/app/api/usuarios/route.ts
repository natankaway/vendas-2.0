/**
 * API de Usuários
 *
 * GET - Lista usuários
 * POST - Cria novo usuário
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';
import { createHash } from 'crypto';

export const dynamic = 'force-dynamic';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

// Hash de senha (compatível com o login)
function hashPassword(password: string): string {
  return createHash('sha256').update(password + 'vendas-pdv-salt-2024').digest('hex');
}

export async function GET(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const { searchParams } = new URL(request.url);

    const search = searchParams.get('search') || '';
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const offset = (page - 1) * limit;

    let query = supabase
      .from('users')
      .select('id, email, name, role, status, avatar_url, phone, last_login_at, created_at, updated_at', { count: 'exact' })
      .is('deleted_at', null)
      .order('created_at', { ascending: false });

    if (search) {
      query = query.or(`name.ilike.%${search}%,email.ilike.%${search}%`);
    }

    const { data: users, error, count } = await query
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Erro ao buscar usuários:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar usuários' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      data: users || [],
      total: count || 0,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro na API de usuários:', error);
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

    const { name, email, password, role, status, phone, avatar_url } = body;

    if (!name || !email) {
      return NextResponse.json(
        { success: false, error: 'Nome e e-mail são obrigatórios' },
        { status: 400 }
      );
    }

    // Verifica se email já existe
    const { data: existingUser } = await supabase
      .from('users')
      .select('id')
      .eq('email', email.toLowerCase())
      .is('deleted_at', null)
      .single();

    if (existingUser) {
      return NextResponse.json(
        { success: false, error: 'E-mail já cadastrado' },
        { status: 400 }
      );
    }

    const newUser = {
      id: uuidv4(),
      email: email.toLowerCase(),
      name,
      password_hash: password ? hashPassword(password) : null,
      role: role || 'cashier',
      status: status || 'active',
      phone: phone || null,
      avatar_url: avatar_url || null,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('users')
      .insert(newUser)
      .select('id, email, name, role, status, avatar_url, phone, created_at, updated_at')
      .single();

    if (error) {
      console.error('Erro ao criar usuário:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao criar usuário' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro na API de usuários:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
