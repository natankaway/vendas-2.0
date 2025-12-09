/**
 * API de Usuários
 *
 * Endpoints para CRUD de usuários do sistema.
 */

import { NextRequest, NextResponse } from 'next/server';
import { getLocalDb } from '@/lib/db/local';
import { v4 as uuidv4 } from 'uuid';
import { createHash } from 'crypto';

// Hash simples para senhas (em produção usar bcrypt)
function hashPassword(password: string): string {
  return createHash('sha256').update(password).digest('hex');
}

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const search = searchParams.get('search') || '';
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const offset = (page - 1) * limit;

    const db = getLocalDb();

    let query = `
      SELECT id, email, name, role, status, avatar_url, phone, last_login_at, created_at, updated_at
      FROM users
      WHERE deleted_at IS NULL
    `;
    const params: (string | number)[] = [];

    if (search) {
      query += ` AND (name LIKE ? OR email LIKE ?)`;
      params.push(`%${search}%`, `%${search}%`);
    }

    // Get total count
    const countQuery = query.replace(
      'SELECT id, email, name, role, status, avatar_url, phone, last_login_at, created_at, updated_at',
      'SELECT COUNT(*) as total'
    );
    const totalResult = db.prepare(countQuery).get(...params) as { total: number };

    // Get paginated results
    query += ` ORDER BY created_at DESC LIMIT ? OFFSET ?`;
    params.push(limit, offset);

    const users = db.prepare(query).all(...params);

    return NextResponse.json({
      success: true,
      data: users,
      total: totalResult.total,
      page,
      limit,
    });
  } catch (error) {
    console.error('Erro ao listar usuários:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao listar usuários',
      },
      { status: 500 }
    );
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body.name || !body.email) {
      return NextResponse.json(
        {
          success: false,
          error: 'Nome e e-mail são obrigatórios',
        },
        { status: 400 }
      );
    }

    const db = getLocalDb();

    // Check if email already exists
    const existing = db.prepare('SELECT id FROM users WHERE email = ? AND deleted_at IS NULL').get(body.email);
    if (existing) {
      return NextResponse.json(
        {
          success: false,
          error: 'E-mail já cadastrado',
        },
        { status: 400 }
      );
    }

    const id = uuidv4();
    const now = new Date().toISOString();
    const passwordHash = body.password ? hashPassword(body.password) : null;

    db.prepare(`
      INSERT INTO users (id, email, name, password_hash, role, status, phone, avatar_url, created_at, updated_at, version, local_only)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1, 0)
    `).run(
      id,
      body.email,
      body.name,
      passwordHash,
      body.role || 'cashier',
      body.status || 'active',
      body.phone || null,
      body.avatar_url || null,
      now,
      now
    );

    const user = db.prepare(`
      SELECT id, email, name, role, status, avatar_url, phone, created_at, updated_at
      FROM users WHERE id = ?
    `).get(id);

    return NextResponse.json({
      success: true,
      data: user,
    });
  } catch (error) {
    console.error('Erro ao criar usuário:', error);
    return NextResponse.json(
      {
        success: false,
        error: 'Erro ao criar usuário',
      },
      { status: 500 }
    );
  }
}
