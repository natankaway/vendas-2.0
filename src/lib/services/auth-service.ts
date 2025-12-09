/**
 * Serviço de Autenticação
 *
 * Gerencia autenticação com suporte a:
 * - Login online via Supabase
 * - Login offline via SQLite local (com hash de senha)
 * - Persistência de sessão
 * - Sincronização de usuários
 */

import { getSqliteDb } from '@/lib/db';
import { usersLocal } from '@/lib/db/schema/sqlite-schema';
import { getSupabaseClient } from '@/lib/supabase/client';
import { eq, and, isNull } from 'drizzle-orm';
import { v4 as uuidv4 } from 'uuid';
import { addToQueue } from '@/lib/sync/queue';
import type { User } from '@/lib/stores/auth-store';

// =============================================================================
// TIPOS
// =============================================================================

export interface LoginCredentials {
  email: string;
  password: string;
}

export interface RegisterData {
  email: string;
  password: string;
  name: string;
  role?: 'admin' | 'manager' | 'cashier';
  phone?: string;
}

export interface AuthResult {
  success: boolean;
  user?: User;
  error?: string;
  isOffline?: boolean;
  token?: string;
  expiresAt?: number;
}

// =============================================================================
// FUNÇÕES DE HASH (simplificado - em produção use bcrypt)
// =============================================================================

/**
 * Hash de senha simplificado
 * Em produção, use bcrypt ou argon2
 */
const hashPassword = async (password: string): Promise<string> => {
  // Implementação simplificada usando Web Crypto API
  const encoder = new TextEncoder();
  const data = encoder.encode(password + 'vendas-pdv-salt-2024');
  const hashBuffer = await crypto.subtle.digest('SHA-256', data);
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  return hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
};

/**
 * Verifica senha contra hash
 */
const verifyPassword = async (password: string, hash: string): Promise<boolean> => {
  const passwordHash = await hashPassword(password);
  return passwordHash === hash;
};

// =============================================================================
// SERVIÇO
// =============================================================================

export const authService = {
  /**
   * Login - tenta online primeiro, depois offline
   */
  async login(credentials: LoginCredentials): Promise<AuthResult> {
    const { email, password } = credentials;

    // Tenta login online primeiro
    try {
      const supabase = getSupabaseClient();
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (!error && data.user && data.session) {
        // Login online bem-sucedido
        const user = await this.getOrCreateLocalUser(data.user.id, {
          email: data.user.email!,
          name: data.user.user_metadata?.name || data.user.email!.split('@')[0],
          role: data.user.user_metadata?.role || 'cashier',
        });

        // Salva hash da senha localmente para login offline futuro
        await this.updateLocalPassword(user.id, password);

        return {
          success: true,
          user,
          isOffline: false,
          token: data.session.access_token,
          expiresAt: new Date(data.session.expires_at! * 1000).getTime(),
        };
      }
    } catch (error) {
      console.warn('Login online falhou, tentando offline:', error);
    }

    // Tenta login offline
    return this.loginOffline(credentials);
  },

  /**
   * Login offline usando SQLite local
   */
  async loginOffline(credentials: LoginCredentials): Promise<AuthResult> {
    const { email, password } = credentials;
    const db = getSqliteDb();

    // Busca usuário local
    const users = await db
      .select()
      .from(usersLocal)
      .where(
        and(
          eq(usersLocal.email, email.toLowerCase()),
          eq(usersLocal.status, 'active'),
          isNull(usersLocal.deleted_at)
        )
      )
      .limit(1);

    if (users.length === 0) {
      return {
        success: false,
        error: 'Usuário não encontrado ou inativo',
        isOffline: true,
      };
    }

    const localUser = users[0];

    // Verifica se tem hash de senha
    if (!localUser.password_hash) {
      return {
        success: false,
        error: 'Este usuário precisa fazer login online primeiro',
        isOffline: true,
      };
    }

    // Verifica senha
    const isValid = await verifyPassword(password, localUser.password_hash);
    if (!isValid) {
      return {
        success: false,
        error: 'Senha incorreta',
        isOffline: true,
      };
    }

    // Atualiza último login
    await db
      .update(usersLocal)
      .set({
        last_login_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      })
      .where(eq(usersLocal.id, localUser.id));

    return {
      success: true,
      user: this.mapDbUserToUser(localUser),
      isOffline: true,
    };
  },

  /**
   * Registro de novo usuário
   */
  async register(data: RegisterData): Promise<AuthResult> {
    const { email, password, name, role = 'cashier', phone } = data;

    // Tenta criar no Supabase primeiro
    try {
      const supabase = getSupabaseClient();
      const { data: authData, error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            name,
            role,
            phone,
          },
        },
      });

      if (error) {
        throw error;
      }

      if (authData.user) {
        // Cria usuário local
        const user = await this.createLocalUser({
          id: authData.user.id,
          email,
          name,
          role,
          phone,
          password,
        });

        return {
          success: true,
          user,
          isOffline: false,
        };
      }
    } catch (error) {
      console.warn('Registro online falhou, criando apenas localmente:', error);
    }

    // Cria apenas localmente (modo offline)
    const user = await this.createLocalUser({
      email,
      name,
      role,
      phone,
      password,
    });

    return {
      success: true,
      user,
      isOffline: true,
    };
  },

  /**
   * Logout
   */
  async logout(): Promise<void> {
    try {
      const supabase = getSupabaseClient();
      await supabase.auth.signOut();
    } catch (error) {
      console.warn('Erro ao fazer logout do Supabase:', error);
    }
  },

  /**
   * Obtém ou cria usuário local baseado em dados do Supabase
   */
  async getOrCreateLocalUser(
    supabaseId: string,
    data: { email: string; name: string; role?: string }
  ): Promise<User> {
    const db = getSqliteDb();

    // Busca usuário existente
    const existing = await db
      .select()
      .from(usersLocal)
      .where(eq(usersLocal.id, supabaseId))
      .limit(1);

    if (existing.length > 0) {
      return this.mapDbUserToUser(existing[0]);
    }

    // Cria novo usuário local
    return this.createLocalUser({
      id: supabaseId,
      email: data.email,
      name: data.name,
      role: (data.role as 'admin' | 'manager' | 'cashier') || 'cashier',
    });
  },

  /**
   * Cria usuário local
   */
  async createLocalUser(data: {
    id?: string;
    email: string;
    name: string;
    role?: 'admin' | 'manager' | 'cashier';
    phone?: string;
    password?: string;
  }): Promise<User> {
    const db = getSqliteDb();
    const now = new Date().toISOString();
    const id = data.id || uuidv4();

    // Hash da senha se fornecida
    const passwordHash = data.password ? await hashPassword(data.password) : null;

    const user = {
      id,
      email: data.email.toLowerCase(),
      name: data.name,
      password_hash: passwordHash,
      role: data.role || 'cashier',
      status: 'active' as const,
      avatar_url: null,
      phone: data.phone || null,
      last_login_at: now,
      created_at: now,
      updated_at: now,
      deleted_at: null,
      version: 1,
      synced_at: data.id ? now : null, // Se tem ID do Supabase, já está sincronizado
      local_only: data.id ? 0 : 1,
    };

    await db.insert(usersLocal).values(user);

    // Se criado apenas localmente, adiciona à fila de sync
    if (!data.id) {
      await addToQueue('users', id, 'create', user);
    }

    return this.mapDbUserToUser(user);
  },

  /**
   * Atualiza hash de senha local
   */
  async updateLocalPassword(userId: string, password: string): Promise<void> {
    const db = getSqliteDb();
    const passwordHash = await hashPassword(password);

    await db
      .update(usersLocal)
      .set({
        password_hash: passwordHash,
        updated_at: new Date().toISOString(),
      })
      .where(eq(usersLocal.id, userId));
  },

  /**
   * Verifica se usuário está autenticado no Supabase
   */
  async checkSupabaseSession(): Promise<User | null> {
    try {
      const supabase = getSupabaseClient();
      const { data: { session } } = await supabase.auth.getSession();

      if (session?.user) {
        return this.getOrCreateLocalUser(session.user.id, {
          email: session.user.email!,
          name: session.user.user_metadata?.name || session.user.email!.split('@')[0],
          role: session.user.user_metadata?.role,
        });
      }
    } catch (error) {
      console.warn('Erro ao verificar sessão do Supabase:', error);
    }

    return null;
  },

  /**
   * Mapeia usuário do banco para tipo User
   */
  mapDbUserToUser(dbUser: any): User {
    return {
      id: dbUser.id,
      email: dbUser.email,
      name: dbUser.name,
      role: dbUser.role as 'admin' | 'manager' | 'cashier',
      status: dbUser.status as 'active' | 'inactive' | 'pending',
      avatar_url: dbUser.avatar_url,
      phone: dbUser.phone,
    };
  },

  /**
   * Altera senha do usuário
   */
  async changePassword(
    userId: string,
    currentPassword: string,
    newPassword: string
  ): Promise<{ success: boolean; error?: string }> {
    const db = getSqliteDb();

    // Busca usuário
    const users = await db
      .select()
      .from(usersLocal)
      .where(eq(usersLocal.id, userId))
      .limit(1);

    if (users.length === 0) {
      return { success: false, error: 'Usuário não encontrado' };
    }

    const user = users[0];

    // Verifica senha atual
    if (user.password_hash) {
      const isValid = await verifyPassword(currentPassword, user.password_hash);
      if (!isValid) {
        return { success: false, error: 'Senha atual incorreta' };
      }
    }

    // Atualiza senha local
    await this.updateLocalPassword(userId, newPassword);

    // Tenta atualizar no Supabase
    try {
      const supabase = getSupabaseClient();
      const { error } = await supabase.auth.updateUser({
        password: newPassword,
      });

      if (error) {
        console.warn('Erro ao atualizar senha no Supabase:', error);
      }
    } catch (error) {
      console.warn('Falha ao sincronizar nova senha:', error);
    }

    return { success: true };
  },
};
