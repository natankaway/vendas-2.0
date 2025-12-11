/**
 * Layout do Dashboard
 *
 * Layout compartilhado por todas as páginas autenticadas.
 * Inclui sidebar de navegação e header com status.
 */

'use client';

import { useState, useEffect } from 'react';
import { useRouter, usePathname } from 'next/navigation';
import Link from 'next/link';
import {
  ShoppingCart,
  Package,
  Users,
  BarChart3,
  Settings,
  LogOut,
  Menu,
  X,
  Wifi,
  WifiOff,
  RefreshCw,
  User,
  ChevronDown,
  Receipt,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { useAuthStore } from '@/lib/stores/auth-store';
import { useConnectionStore } from '@/lib/stores/connection-store';
import { authService } from '@/lib/services/auth-service';
import { cn, formatRelativeTime } from '@/lib/utils';

/**
 * Links de navegação
 */
const navLinks = [
  {
    href: '/pdv',
    label: 'PDV',
    icon: ShoppingCart,
    permissions: ['pdv'],
  },
  {
    href: '/vendas',
    label: 'Vendas',
    icon: Receipt,
    permissions: ['sales'],
  },
  {
    href: '/produtos',
    label: 'Produtos',
    icon: Package,
    permissions: ['products'],
  },
  {
    href: '/clientes',
    label: 'Clientes',
    icon: Users,
    permissions: ['customers'],
  },
  {
    href: '/relatorios',
    label: 'Relatórios',
    icon: BarChart3,
    permissions: ['reports'],
  },
  {
    href: '/usuarios',
    label: 'Usuários',
    icon: User,
    permissions: ['users'],
  },
  {
    href: '/configuracoes',
    label: 'Configurações',
    icon: Settings,
    permissions: ['settings'],
  },
];

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const router = useRouter();
  const pathname = usePathname();
  const { user, isAuthenticated, canAccessFeature, logout: logoutStore } = useAuthStore();
  const {
    status: connectionStatus,
    pendingSyncCount,
    isSyncing,
    lastSyncAt,
  } = useConnectionStore();

  const [sidebarOpen, setSidebarOpen] = useState(false);
  const [userMenuOpen, setUserMenuOpen] = useState(false);

  // Verifica autenticação
  useEffect(() => {
    if (!isAuthenticated()) {
      router.push('/login');
    }
  }, [isAuthenticated, router]);

  const handleLogout = async () => {
    await authService.logout();
    logoutStore();
    router.push('/login');
  };

  const handleSync = async () => {
    // Sincronização desabilitada - usando Supabase diretamente
    console.log('Sincronização manual não necessária com Supabase');
  };

  // Filtra links baseado em permissões
  const visibleLinks = navLinks.filter((link) =>
    link.permissions.some((p) => canAccessFeature(p))
  );

  if (!user) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary" />
      </div>
    );
  }

  return (
    <div className="min-h-screen flex bg-background">
      {/* Sidebar - Desktop */}
      <aside className="hidden lg:flex lg:flex-col lg:w-64 lg:fixed lg:inset-y-0 bg-card border-r">
        {/* Logo */}
        <div className="flex items-center h-16 px-6 border-b">
          <ShoppingCart className="h-8 w-8 text-primary" />
          <span className="ml-2 text-xl font-bold">Vendas PDV</span>
        </div>

        {/* Navigation */}
        <nav className="flex-1 px-4 py-4 space-y-1 overflow-y-auto">
          {visibleLinks.map((link) => {
            const isActive = pathname === link.href || pathname.startsWith(`${link.href}/`);
            const Icon = link.icon;

            return (
              <Link
                key={link.href}
                href={link.href}
                className={cn(
                  'nav-item',
                  isActive && 'active'
                )}
              >
                <Icon className="h-5 w-5" />
                <span>{link.label}</span>
              </Link>
            );
          })}
        </nav>

        {/* Sync Status */}
        <div className="p-4 border-t">
          <div className="flex items-center justify-between mb-2">
            <div
              className={cn(
                'connection-status',
                connectionStatus === 'online' ? 'online' : 'offline'
              )}
            >
              {connectionStatus === 'online' ? (
                <>
                  <Wifi className="h-4 w-4" />
                  <span>Online</span>
                </>
              ) : (
                <>
                  <WifiOff className="h-4 w-4" />
                  <span>Offline</span>
                </>
              )}
            </div>

            {pendingSyncCount > 0 && (
              <span className="text-xs text-warning">
                {pendingSyncCount} pendente(s)
              </span>
            )}
          </div>

          <Button
            variant="outline"
            size="sm"
            className="w-full"
            onClick={handleSync}
            disabled={connectionStatus === 'offline' || isSyncing}
          >
            <RefreshCw className={cn('h-4 w-4 mr-2', isSyncing && 'animate-spin')} />
            {isSyncing ? 'Sincronizando...' : 'Sincronizar'}
          </Button>

          {lastSyncAt && (
            <p className="text-xs text-muted-foreground mt-2 text-center">
              Última sync: {formatRelativeTime(lastSyncAt)}
            </p>
          )}
        </div>
      </aside>

      {/* Sidebar - Mobile */}
      {sidebarOpen && (
        <div className="lg:hidden fixed inset-0 z-50">
          <div
            className="fixed inset-0 bg-black/50"
            onClick={() => setSidebarOpen(false)}
          />
          <aside className="fixed inset-y-0 left-0 w-64 bg-card">
            <div className="flex items-center justify-between h-16 px-6 border-b">
              <div className="flex items-center">
                <ShoppingCart className="h-8 w-8 text-primary" />
                <span className="ml-2 text-xl font-bold">PDV</span>
              </div>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => setSidebarOpen(false)}
              >
                <X className="h-5 w-5" />
              </Button>
            </div>

            <nav className="flex-1 px-4 py-4 space-y-1">
              {visibleLinks.map((link) => {
                const isActive = pathname === link.href;
                const Icon = link.icon;

                return (
                  <Link
                    key={link.href}
                    href={link.href}
                    className={cn('nav-item', isActive && 'active')}
                    onClick={() => setSidebarOpen(false)}
                  >
                    <Icon className="h-5 w-5" />
                    <span>{link.label}</span>
                  </Link>
                );
              })}
            </nav>
          </aside>
        </div>
      )}

      {/* Main Content */}
      <div className="flex-1 lg:pl-64">
        {/* Header */}
        <header className="sticky top-0 z-40 h-16 bg-card border-b flex items-center justify-between px-4 lg:px-6">
          <div className="flex items-center">
            <Button
              variant="ghost"
              size="icon"
              className="lg:hidden mr-2"
              onClick={() => setSidebarOpen(true)}
            >
              <Menu className="h-5 w-5" />
            </Button>

            <h1 className="text-lg font-semibold">
              {visibleLinks.find((l) => pathname.startsWith(l.href))?.label || 'Dashboard'}
            </h1>
          </div>

          <div className="flex items-center gap-4">
            {/* Sync indicator - Mobile */}
            <div className="lg:hidden">
              {connectionStatus === 'offline' ? (
                <WifiOff className="h-5 w-5 text-warning" />
              ) : pendingSyncCount > 0 ? (
                <div className="sync-pending-indicator">
                  <RefreshCw className="h-5 w-5 text-primary" />
                </div>
              ) : (
                <Wifi className="h-5 w-5 text-success" />
              )}
            </div>

            {/* User Menu */}
            <div className="relative">
              <Button
                variant="ghost"
                className="flex items-center gap-2"
                onClick={() => setUserMenuOpen(!userMenuOpen)}
              >
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center">
                  <span className="text-sm font-medium text-primary">
                    {user.name.charAt(0).toUpperCase()}
                  </span>
                </div>
                <span className="hidden sm:inline">{user.name}</span>
                <ChevronDown className="h-4 w-4" />
              </Button>

              {userMenuOpen && (
                <>
                  <div
                    className="fixed inset-0 z-40"
                    onClick={() => setUserMenuOpen(false)}
                  />
                  <div className="absolute right-0 mt-2 w-48 bg-card border rounded-md shadow-lg z-50">
                    <div className="p-3 border-b">
                      <p className="font-medium">{user.name}</p>
                      <p className="text-sm text-muted-foreground">{user.email}</p>
                      <p className="text-xs text-muted-foreground capitalize mt-1">
                        {user.role}
                      </p>
                    </div>
                    <div className="p-2">
                      <Button
                        variant="ghost"
                        className="w-full justify-start text-destructive hover:text-destructive"
                        onClick={handleLogout}
                      >
                        <LogOut className="h-4 w-4 mr-2" />
                        Sair
                      </Button>
                    </div>
                  </div>
                </>
              )}
            </div>
          </div>
        </header>

        {/* Page Content */}
        <main className="p-4 lg:p-6">{children}</main>
      </div>
    </div>
  );
}
