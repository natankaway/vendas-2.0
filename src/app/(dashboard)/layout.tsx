/**
 * Layout do Dashboard
 *
 * Layout compartilhado por todas as páginas autenticadas.
 * Inclui sidebar de navegação colapsável e header responsivo.
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
  ChevronLeft,
  ChevronRight,
  Receipt,
  PanelLeftClose,
  PanelLeft,
  FolderTree,
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
    href: '/categorias',
    label: 'Categorias',
    icon: FolderTree,
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

  // Estado do sidebar - carrega do localStorage
  const [sidebarOpen, setSidebarOpen] = useState(false); // Mobile
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false); // Desktop
  const [userMenuOpen, setUserMenuOpen] = useState(false);
  const [mounted, setMounted] = useState(false);

  // Carrega estado do sidebar do localStorage
  useEffect(() => {
    setMounted(true);
    const savedState = localStorage.getItem('sidebarCollapsed');
    if (savedState !== null) {
      setSidebarCollapsed(JSON.parse(savedState));
    }
  }, []);

  // Salva estado do sidebar no localStorage
  useEffect(() => {
    if (mounted) {
      localStorage.setItem('sidebarCollapsed', JSON.stringify(sidebarCollapsed));
    }
  }, [sidebarCollapsed, mounted]);

  // Fecha menu mobile ao mudar de rota
  useEffect(() => {
    setSidebarOpen(false);
  }, [pathname]);

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
    console.log('Sincronização manual não necessária com Supabase');
  };

  const toggleSidebar = () => {
    setSidebarCollapsed(!sidebarCollapsed);
  };

  // Filtra links baseado em permissões
  const visibleLinks = navLinks.filter((link) =>
    link.permissions.some((p) => canAccessFeature(p))
  );

  if (!user) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600" />
      </div>
    );
  }

  const sidebarWidth = sidebarCollapsed ? 'w-20' : 'w-64';
  const mainPadding = sidebarCollapsed ? 'lg:pl-20' : 'lg:pl-64';

  return (
    <div className="min-h-screen flex bg-gray-50">
      {/* Sidebar - Desktop */}
      <aside
        className={cn(
          'hidden lg:flex lg:flex-col lg:fixed lg:inset-y-0 bg-white border-r shadow-sm transition-all duration-300 z-30',
          sidebarWidth
        )}
      >
        {/* Logo */}
        <div className="flex items-center justify-between h-16 px-4 border-b">
          <div className="flex items-center min-w-0">
            <div className="flex-shrink-0 w-10 h-10 bg-gradient-to-br from-blue-600 to-blue-700 rounded-xl flex items-center justify-center shadow-lg shadow-blue-200">
              <ShoppingCart className="h-5 w-5 text-white" />
            </div>
            {!sidebarCollapsed && (
              <span className="ml-3 text-lg font-bold text-gray-800 truncate">Vendas PDV</span>
            )}
          </div>
        </div>

        {/* Toggle Button */}
        <button
          onClick={toggleSidebar}
          className="absolute -right-3 top-20 w-6 h-6 bg-white border rounded-full shadow-md flex items-center justify-center hover:bg-gray-50 transition-colors z-50"
          title={sidebarCollapsed ? 'Expandir menu' : 'Recolher menu'}
        >
          {sidebarCollapsed ? (
            <ChevronRight className="h-4 w-4 text-gray-600" />
          ) : (
            <ChevronLeft className="h-4 w-4 text-gray-600" />
          )}
        </button>

        {/* Navigation */}
        <nav className="flex-1 px-3 py-4 space-y-1 overflow-y-auto">
          {visibleLinks.map((link) => {
            const isActive = pathname === link.href || pathname.startsWith(`${link.href}/`);
            const Icon = link.icon;

            return (
              <Link
                key={link.href}
                href={link.href}
                title={sidebarCollapsed ? link.label : undefined}
                className={cn(
                  'flex items-center gap-3 px-3 py-2.5 rounded-xl font-medium transition-all duration-200',
                  isActive
                    ? 'bg-blue-50 text-blue-600 shadow-sm'
                    : 'text-gray-600 hover:bg-gray-100 hover:text-gray-900',
                  sidebarCollapsed && 'justify-center px-2'
                )}
              >
                <Icon className={cn('h-5 w-5 flex-shrink-0', isActive && 'text-blue-600')} />
                {!sidebarCollapsed && <span className="truncate">{link.label}</span>}
              </Link>
            );
          })}
        </nav>

        {/* Sync Status */}
        <div className={cn('p-4 border-t', sidebarCollapsed && 'px-2')}>
          <div className={cn('flex items-center mb-3', sidebarCollapsed ? 'justify-center' : 'justify-between')}>
            <div
              className={cn(
                'flex items-center gap-2 px-2 py-1 rounded-full text-xs font-medium',
                connectionStatus === 'online'
                  ? 'bg-green-50 text-green-600'
                  : 'bg-orange-50 text-orange-600'
              )}
            >
              {connectionStatus === 'online' ? (
                <>
                  <Wifi className="h-3.5 w-3.5" />
                  {!sidebarCollapsed && <span>Online</span>}
                </>
              ) : (
                <>
                  <WifiOff className="h-3.5 w-3.5" />
                  {!sidebarCollapsed && <span>Offline</span>}
                </>
              )}
            </div>

            {!sidebarCollapsed && pendingSyncCount > 0 && (
              <span className="text-xs text-orange-500 font-medium">
                {pendingSyncCount} pendente(s)
              </span>
            )}
          </div>

          <Button
            variant="outline"
            size="sm"
            className={cn('w-full', sidebarCollapsed && 'px-2')}
            onClick={handleSync}
            disabled={connectionStatus === 'offline' || isSyncing}
            title={sidebarCollapsed ? 'Sincronizar' : undefined}
          >
            <RefreshCw className={cn('h-4 w-4', !sidebarCollapsed && 'mr-2', isSyncing && 'animate-spin')} />
            {!sidebarCollapsed && (isSyncing ? 'Sincronizando...' : 'Sincronizar')}
          </Button>

          {!sidebarCollapsed && lastSyncAt && (
            <p className="text-xs text-gray-400 mt-2 text-center">
              Última sync: {formatRelativeTime(lastSyncAt)}
            </p>
          )}
        </div>
      </aside>

      {/* Sidebar - Mobile Overlay */}
      {sidebarOpen && (
        <div className="lg:hidden fixed inset-0 z-50">
          <div
            className="fixed inset-0 bg-black/50 backdrop-blur-sm"
            onClick={() => setSidebarOpen(false)}
          />
          <aside className="fixed inset-y-0 left-0 w-72 bg-white shadow-xl">
            <div className="flex items-center justify-between h-16 px-4 border-b">
              <div className="flex items-center">
                <div className="w-10 h-10 bg-gradient-to-br from-blue-600 to-blue-700 rounded-xl flex items-center justify-center">
                  <ShoppingCart className="h-5 w-5 text-white" />
                </div>
                <span className="ml-3 text-lg font-bold text-gray-800">Vendas PDV</span>
              </div>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => setSidebarOpen(false)}
                className="hover:bg-gray-100"
              >
                <X className="h-5 w-5" />
              </Button>
            </div>

            <nav className="flex-1 px-3 py-4 space-y-1 overflow-y-auto">
              {visibleLinks.map((link) => {
                const isActive = pathname === link.href;
                const Icon = link.icon;

                return (
                  <Link
                    key={link.href}
                    href={link.href}
                    className={cn(
                      'flex items-center gap-3 px-3 py-3 rounded-xl font-medium transition-all',
                      isActive
                        ? 'bg-blue-50 text-blue-600'
                        : 'text-gray-600 hover:bg-gray-100'
                    )}
                    onClick={() => setSidebarOpen(false)}
                  >
                    <Icon className="h-5 w-5" />
                    <span>{link.label}</span>
                  </Link>
                );
              })}
            </nav>

            {/* Sync Status Mobile */}
            <div className="p-4 border-t">
              <div className="flex items-center justify-between mb-3">
                <div
                  className={cn(
                    'flex items-center gap-2 px-3 py-1.5 rounded-full text-sm font-medium',
                    connectionStatus === 'online'
                      ? 'bg-green-50 text-green-600'
                      : 'bg-orange-50 text-orange-600'
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
                  <span className="text-sm text-orange-500 font-medium">
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
            </div>
          </aside>
        </div>
      )}

      {/* Main Content */}
      <div className={cn('flex-1 flex flex-col min-h-screen transition-all duration-300', mainPadding)}>
        {/* Header */}
        <header className="sticky top-0 z-40 h-16 bg-white border-b shadow-sm flex items-center justify-between px-4 lg:px-6">
          <div className="flex items-center gap-3">
            {/* Mobile Menu Button */}
            <Button
              variant="ghost"
              size="icon"
              className="lg:hidden"
              onClick={() => setSidebarOpen(true)}
            >
              <Menu className="h-5 w-5" />
            </Button>

            {/* Desktop Toggle Button (alternative position) */}
            <Button
              variant="ghost"
              size="icon"
              className="hidden lg:flex"
              onClick={toggleSidebar}
              title={sidebarCollapsed ? 'Expandir menu' : 'Recolher menu'}
            >
              {sidebarCollapsed ? (
                <PanelLeft className="h-5 w-5" />
              ) : (
                <PanelLeftClose className="h-5 w-5" />
              )}
            </Button>

            <div className="hidden sm:block">
              <h1 className="text-lg font-semibold text-gray-800">
                {visibleLinks.find((l) => pathname.startsWith(l.href))?.label || 'Dashboard'}
              </h1>
            </div>
          </div>

          <div className="flex items-center gap-2 sm:gap-4">
            {/* Connection Status - Mobile */}
            <div className="lg:hidden">
              {connectionStatus === 'offline' ? (
                <div className="p-2 rounded-full bg-orange-50">
                  <WifiOff className="h-4 w-4 text-orange-500" />
                </div>
              ) : pendingSyncCount > 0 ? (
                <div className="p-2 rounded-full bg-blue-50">
                  <RefreshCw className="h-4 w-4 text-blue-500 animate-pulse" />
                </div>
              ) : (
                <div className="p-2 rounded-full bg-green-50">
                  <Wifi className="h-4 w-4 text-green-500" />
                </div>
              )}
            </div>

            {/* User Menu */}
            <div className="relative">
              <Button
                variant="ghost"
                className="flex items-center gap-2 hover:bg-gray-100 rounded-xl px-2 sm:px-3"
                onClick={() => setUserMenuOpen(!userMenuOpen)}
              >
                <div className="w-8 h-8 rounded-full bg-gradient-to-br from-blue-500 to-purple-500 flex items-center justify-center shadow">
                  <span className="text-sm font-medium text-white">
                    {user.name.charAt(0).toUpperCase()}
                  </span>
                </div>
                <span className="hidden md:inline font-medium text-gray-700">{user.name}</span>
                <ChevronDown className="h-4 w-4 text-gray-400 hidden sm:block" />
              </Button>

              {userMenuOpen && (
                <>
                  <div
                    className="fixed inset-0 z-40"
                    onClick={() => setUserMenuOpen(false)}
                  />
                  <div className="absolute right-0 mt-2 w-56 bg-white border rounded-xl shadow-lg z-50 overflow-hidden">
                    <div className="p-4 bg-gradient-to-br from-blue-50 to-purple-50 border-b">
                      <p className="font-semibold text-gray-800">{user.name}</p>
                      <p className="text-sm text-gray-500 truncate">{user.email}</p>
                      <span className="inline-block mt-2 text-xs font-medium text-blue-600 bg-blue-100 px-2 py-0.5 rounded-full capitalize">
                        {user.role}
                      </span>
                    </div>
                    <div className="p-2">
                      <Button
                        variant="ghost"
                        className="w-full justify-start text-red-600 hover:text-red-700 hover:bg-red-50 rounded-lg"
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
        <main className="flex-1 p-4 lg:p-6 overflow-x-hidden">{children}</main>
      </div>
    </div>
  );
}
