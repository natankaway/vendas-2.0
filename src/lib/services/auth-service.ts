/**
 * Serviço de Autenticação (Client-side)
 *
 * Gerencia autenticação usando apenas Supabase Client SDK.
 * Todas as operações de banco são feitas via API routes.
 */

import { getSupabaseClient } from '@/lib/supabase/client';
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
// FUNÇÕES DE HASH (para login offline via API)
// =============================================================================

const hashPassword = async (password: string): Promise<string> => {
  const encoder = new TextEncoder();
  const data = encoder.encode(password + 'vendas-pdv-salt-2024');
  const hashBuffer = await crypto.subtle.digest('SHA-256', data);
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  return hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
};

// =============================================================================
// SERVIÇO
// =============================================================================

export const authService = {
  /**
   * Login - usa API route
   */
  async login(credentials: LoginCredentials): Promise<AuthResult> {
    const { email, password } = credentials;

    try {
      // Tenta via API route (que pode verificar no banco)
      const response = await fetch('/api/auth/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password }),
      });

      const data = await response.json();

      if (data.success && data.user) {
        return {
          success: true,
          user: data.user,
          isOffline: false,
        };
      }

      // Se API falhar, tenta login direto com Supabase
      const supabase = getSupabaseClient();
      const { data: authData, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (!error && authData.user && authData.session) {
        const user: User = {
          id: authData.user.id,
          email: authData.user.email!,
          name: authData.user.user_metadata?.name || authData.user.email!.split('@')[0],
          role: authData.user.user_metadata?.role || 'cashier',
          status: 'active',
          avatar_url: authData.user.user_metadata?.avatar_url || null,
          phone: authData.user.user_metadata?.phone || null,
        };

        return {
          success: true,
          user,
          isOffline: false,
          token: authData.session.access_token,
          expiresAt: new Date(authData.session.expires_at! * 1000).getTime(),
        };
      }

      return {
        success: false,
        error: data.error || error?.message || 'Credenciais inválidas',
      };
    } catch (error) {
      console.error('Erro no login:', error);
      return {
        success: false,
        error: 'Erro ao fazer login. Verifique sua conexão.',
      };
    }
  },

  /**
   * Registro de novo usuário
   */
  async register(data: RegisterData): Promise<AuthResult> {
    const { email, password, name, role = 'cashier', phone } = data;

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
        return {
          success: false,
          error: error.message,
        };
      }

      if (authData.user) {
        const user: User = {
          id: authData.user.id,
          email: authData.user.email!,
          name,
          role,
          status: 'active',
          avatar_url: null,
          phone: phone || null,
        };

        return {
          success: true,
          user,
          isOffline: false,
        };
      }

      return {
        success: false,
        error: 'Erro ao criar usuário',
      };
    } catch (error) {
      console.error('Erro no registro:', error);
      return {
        success: false,
        error: 'Erro ao registrar. Verifique sua conexão.',
      };
    }
  },

  /**
   * Logout
   */
  async logout(): Promise<void> {
    try {
      const supabase = getSupabaseClient();
      await supabase.auth.signOut();
    } catch (error) {
      console.warn('Erro ao fazer logout:', error);
    }
  },

  /**
   * Verifica sessão atual
   */
  async checkSession(): Promise<User | null> {
    try {
      const supabase = getSupabaseClient();
      const { data: { session } } = await supabase.auth.getSession();

      if (session?.user) {
        return {
          id: session.user.id,
          email: session.user.email!,
          name: session.user.user_metadata?.name || session.user.email!.split('@')[0],
          role: session.user.user_metadata?.role || 'cashier',
          status: 'active',
          avatar_url: session.user.user_metadata?.avatar_url || null,
          phone: session.user.user_metadata?.phone || null,
        };
      }
    } catch (error) {
      console.warn('Erro ao verificar sessão:', error);
    }

    return null;
  },

  /**
   * Altera senha do usuário
   */
  async changePassword(
    _userId: string,
    _currentPassword: string,
    newPassword: string
  ): Promise<{ success: boolean; error?: string }> {
    try {
      const supabase = getSupabaseClient();
      const { error } = await supabase.auth.updateUser({
        password: newPassword,
      });

      if (error) {
        return { success: false, error: error.message };
      }

      return { success: true };
    } catch (error) {
      console.error('Erro ao alterar senha:', error);
      return { success: false, error: 'Erro ao alterar senha' };
    }
  },
};
