/**
 * API de Usuário Individual
 *
 * Endpoints para operações em um usuário específico.
 */

import { NextRequest, NextResponse } from 'next/server';
import { getLocalDb } from '@/lib/db/local';
import { createHash } from 'crypto';

function hashPassword(password: string): string {
  return createHash('sha256').update(password).digest('hex');
}

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const db = getLocalDb();

    const user = db.prepare(`
      SELECT id, email, name, role, status, avatar_url, phone, last_login_at, created_at, updated_at
      FROM users
      WHERE id = ? AND deleted_at IS NULL
    `).get(id);

    if (!user) {
      return NextResponse.json(
        {
          success: false,
          error: 'Usuário não encontrado',
        },
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
      {
        success: false,
        error: 'Erro ao buscar usuário',
      },
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
    const body = await request.json();

    const db = getLocalDb();

    // Check if user exists
    const existing = db.prepare('SELECT id, version FROM users WHERE id = ? AND deleted_at IS NULL').get(id) as { id: string; version: number } | undefined;

    if (!existing) {
      return NextResponse.json(
        {
          success: false,
          error: 'Usuário não encontrado',
        },
        { status: 404 }
      );
    }

    // Check if email is being changed and if it's already in use
    if (body.email) {
      const emailExists = db.prepare(
        'SELECT id FROM users WHERE email = ? AND id != ? AND deleted_at IS NULL'
      ).get(body.email, id);

      if (emailExists) {
        return NextResponse.json(
          {
            success: false,
            error: 'E-mail já está em uso por outro usuário',
          },
          { status: 400 }
        );
      }
    }

    const now = new Date().toISOString();
    const updates: string[] = [];
    const values: (string | number | null)[] = [];

    if (body.name !== undefined) {
      updates.push('name = ?');
      values.push(body.name);
    }
    if (body.email !== undefined) {
      updates.push('email = ?');
      values.push(body.email);
    }
    if (body.role !== undefined) {
      updates.push('role = ?');
      values.push(body.role);
    }
    if (body.status !== undefined) {
      updates.push('status = ?');
      values.push(body.status);
    }
    if (body.phone !== undefined) {
      updates.push('phone = ?');
      values.push(body.phone || null);
    }
    if (body.avatar_url !== undefined) {
      updates.push('avatar_url = ?');
      values.push(body.avatar_url || null);
    }
    if (body.password) {
      updates.push('password_hash = ?');
      values.push(hashPassword(body.password));
    }

    updates.push('updated_at = ?');
    values.push(now);
    updates.push('version = version + 1');

    values.push(id);

    db.prepare(`
      UPDATE users SET ${updates.join(', ')} WHERE id = ?
    `).run(...values);

    const user = db.prepare(`
      SELECT id, email, name, role, status, avatar_url, phone, created_at, updated_at
      FROM users WHERE id = ?
    `).get(id);

    return NextResponse.json({
      success: true,
      data: user,
    });
  } catch (error) {
    console.error('Erro ao atualizar usuário:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao atualizar usuário',
      },
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
    const db = getLocalDb();

    // Check if user exists
    const existing = db.prepare('SELECT id FROM users WHERE id = ? AND deleted_at IS NULL').get(id);

    if (!existing) {
      return NextResponse.json(
        {
          success: false,
          error: 'Usuário não encontrado',
        },
        { status: 404 }
      );
    }

    // Soft delete
    const now = new Date().toISOString();
    db.prepare(`
      UPDATE users SET deleted_at = ?, updated_at = ?, version = version + 1 WHERE id = ?
    `).run(now, now, id);

    return NextResponse.json({
      success: true,
      message: 'Usuário excluído com sucesso',
    });
  } catch (error) {
    console.error('Erro ao excluir usuário:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao excluir usuário',
      },
      { status: 500 }
    );
  }
}
