/**
 * Store de Estado do Sidebar
 *
 * Gerencia o estado do sidebar (colapsado/expandido) usando Zustand.
 * Permite que qualquer componente acesse o estado do sidebar.
 */

import { create } from 'zustand';
import { persist } from 'zustand/middleware';

interface SidebarState {
  /**
   * Se o sidebar está colapsado (minimizado)
   */
  isCollapsed: boolean;

  /**
   * Se o sidebar mobile está aberto
   */
  isMobileOpen: boolean;

  // Actions
  setCollapsed: (collapsed: boolean) => void;
  toggleCollapsed: () => void;
  setMobileOpen: (open: boolean) => void;
  toggleMobileOpen: () => void;
}

export const useSidebarStore = create<SidebarState>()(
  persist(
    (set) => ({
      isCollapsed: false,
      isMobileOpen: false,

      setCollapsed: (collapsed: boolean) =>
        set({ isCollapsed: collapsed }),

      toggleCollapsed: () =>
        set((state) => ({ isCollapsed: !state.isCollapsed })),

      setMobileOpen: (open: boolean) =>
        set({ isMobileOpen: open }),

      toggleMobileOpen: () =>
        set((state) => ({ isMobileOpen: !state.isMobileOpen })),
    }),
    {
      name: 'sidebar-store',
      partialize: (state) => ({
        isCollapsed: state.isCollapsed,
      }),
    }
  )
);
