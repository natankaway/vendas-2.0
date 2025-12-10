/**
 * API de Usuário Individual
 *
 * GET - Busca usuário por ID
 * PUT - Atualiza usuário
 * DELETE - Remove usuário (soft delete)
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { createHash } from 'crypto';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

function hashPassword(password: string): string {
  return createHash('sha256').update(password + 'vendas-pdv-salt-2024').digest('hex');
}

export async function GET(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const supabase = getSupabase();

    const { data: user, error } = await supabase
      .from('users')
      .select('id, email, name, role, status, avatar_url, phone, last_login_at, created_at, updated_at')
      .eq('id', params.id)
      .is('deleted_at', null)
      .single();

    if (error || !user) {
      return NextResponse.json(
        { success: false, error: 'Usuário não encontrado' },
        { status: 404 }
      );
    }

    return NextResponse.json({
      success: true,
      data: user,
    });
  } catch (error) {
    console.error('Erro ao buscar usuário:', error);
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

    const { name, email, password, role, status, phone, avatar_url } = body;

    // Verifica se email está em uso por outro usuário
    if (email) {
      const { data: existingUser } = await supabase
        .from('users')
        .select('id')
        .eq('email', email.toLowerCase())
        .neq('id', params.id)
        .is('deleted_at', null)
        .single();

      if (existingUser) {
        return NextResponse.json(
          { success: false, error: 'E-mail já está em uso por outro usuário' },
          { status: 400 }
        );
      }
    }

    const updates: Record<string, unknown> = {
      updated_at: new Date().toISOString(),
    };

    if (name !== undefined) updates.name = name;
    if (email !== undefined) updates.email = email.toLowerCase();
    if (role !== undefined) updates.role = role;
    if (status !== undefined) updates.status = status;
    if (phone !== undefined) updates.phone = phone || null;
    if (avatar_url !== undefined) updates.avatar_url = avatar_url || null;
    if (password) updates.password_hash = hashPassword(password);

    const { data, error } = await supabase
      .from('users')
      .update(updates)
      .eq('id', params.id)
      .select('id, email, name, role, status, avatar_url, phone, created_at, updated_at')
      .single();

    if (error) {
      console.error('Erro ao atualizar usuário:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao atualizar usuário' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data,
    });
  } catch (error) {
    console.error('Erro ao atualizar usuário:', error);
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
      .from('users')
      .update({
        deleted_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      })
      .eq('id', params.id);

    if (error) {
      console.error('Erro ao excluir usuário:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao excluir usuário' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Usuário excluído com sucesso',
    });
  } catch (error) {
    console.error('Erro ao excluir usuário:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
