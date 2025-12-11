/**
 * Store de Autenticação
 *
 * Gerencia o estado de autenticação do usuário.
 * Suporta autenticação online (Supabase) e offline (SQLite local).
 */

import { create } from 'zustand';
import { persist } from 'zustand/middleware';
import type { User as DbUser } from '@/lib/db/schema';

// Tipo simplificado do usuário para o store
export interface User {
  id: string;
  email: string;
  name: string;
  role: 'admin' | 'manager' | 'cashier';
  status: 'active' | 'inactive' | 'pending';
  avatar_url: string | null;
  phone: string | null;
}

interface AuthState {
  /**
   * Usuário autenticado
   */
  user: User | null;

  /**
   * Se a autenticação foi feita offline
   */
  isOfflineAuth: boolean;

  /**
   * Se está carregando estado de autenticação
   */
  isLoading: boolean;

  /**
   * Token de sessão (para Supabase)
   */
  sessionToken: string | null;

  /**
   * Timestamp de expiração do token
   */
  tokenExpiresAt: number | null;

  // Actions
  setUser: (user: User | null, options?: { isOffline?: boolean; token?: string; expiresAt?: number }) => void;
  setLoading: (loading: boolean) => void;
  logout: () => void;
  isAuthenticated: () => boolean;
  isAdmin: () => boolean;
  isManager: () => boolean;
  canAccessFeature: (feature: string) => boolean;
}

/**
 * Permissões por role
 */
const ROLE_PERMISSIONS: Record<string, string[]> = {
  admin: [
    'pdv',
    'sales',
    'products',
    'customers',
    'users',
    'reports',
    'settings',
    'sync',
    'stock',
    'categories',
  ],
  manager: [
    'pdv',
    'sales',
    'products',
    'customers',
    'reports',
    'stock',
    'categories',
  ],
  cashier: ['pdv', 'sales', 'customers'],
};

export const useAuthStore = create<AuthState>()(
  persist(
    (set, get) => ({
      user: null,
      isOfflineAuth: false,
      isLoading: true,
      sessionToken: null,
      tokenExpiresAt: null,

      setUser: (user, options = {}) =>
        set({
          user,
          isOfflineAuth: options.isOffline ?? false,
          sessionToken: options.token ?? null,
          tokenExpiresAt: options.expiresAt ?? null,
          isLoading: false,
        }),

      setLoading: (loading) =>
        set({
          isLoading: loading,
        }),

      logout: () =>
        set({
          user: null,
          isOfflineAuth: false,
          sessionToken: null,
          tokenExpiresAt: null,
          isLoading: false,
        }),

      isAuthenticated: () => {
        const { user, tokenExpiresAt, isOfflineAuth } = get();

        if (!user) return false;

        // Autenticação offline não expira
        if (isOfflineAuth) return true;

        // Verifica expiração do token
        if (tokenExpiresAt && Date.now() > tokenExpiresAt) {
          return false;
        }

        return true;
      },

      isAdmin: () => get().user?.role === 'admin',

      isManager: () => {
        const role = get().user?.role;
        return role === 'admin' || role === 'manager';
      },

      canAccessFeature: (feature: string) => {
        const { user } = get();
        if (!user) return false;

        const permissions = ROLE_PERMISSIONS[user.role] || [];
        return permissions.includes(feature);
      },
    }),
    {
      name: 'auth-store',
      // Persiste dados para login offline
      partialize: (state) => ({
        user: state.user,
        isOfflineAuth: state.isOfflineAuth,
        sessionToken: state.sessionToken,
        tokenExpiresAt: state.tokenExpiresAt,
      }),
    }
  )
);
