/**
 * Página de Login
 *
 * Permite login online (Supabase) ou offline (SQLite local).
 */

'use client';

import { useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import Image from 'next/image';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Loader2, Mail, Lock, Wifi, WifiOff, Moon, Sun } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { toast } from '@/components/ui/use-toast';
import { authService } from '@/lib/services/auth-service';
import { useAuthStore } from '@/lib/stores/auth-store';
import { useConnectionStore } from '@/lib/stores/connection-store';
import { useTheme } from '@/lib/contexts/theme-context';

// Schema de validação
const loginSchema = z.object({
  email: z.string().email('Email inválido'),
  password: z.string().min(6, 'Senha deve ter pelo menos 6 caracteres'),
});

type LoginForm = z.infer<typeof loginSchema>;

export default function LoginPage() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirect = searchParams.get('redirect') || '/pdv';

  const [isLoading, setIsLoading] = useState(false);
  const { setUser } = useAuthStore();
  const { status: connectionStatus } = useConnectionStore();
  const { theme, toggleTheme } = useTheme();

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<LoginForm>({
    resolver: zodResolver(loginSchema),
    defaultValues: {
      email: '',
      password: '',
    },
  });

  const onSubmit = async (data: LoginForm) => {
    setIsLoading(true);

    try {
      const result = await authService.login(data);

      if (result.success && result.user) {
        setUser(result.user, {
          isOffline: result.isOffline,
          token: result.token,
          expiresAt: result.expiresAt,
        });

        toast({
          title: result.isOffline ? 'Login offline' : 'Login realizado',
          description: result.isOffline
            ? 'Você está trabalhando no modo offline'
            : `Bem-vindo, ${result.user.name}!`,
        });

        router.push(redirect);
      } else {
        toast({
          title: 'Erro no login',
          description: result.error || 'Verifique suas credenciais',
          variant: 'destructive',
        });
      }
    } catch (error) {
      toast({
        title: 'Erro no login',
        description: 'Ocorreu um erro inesperado',
        variant: 'destructive',
      });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100 dark:bg-gray-900 p-4 relative">
      {/* Dark Mode Toggle */}
      <Button
        variant="ghost"
        size="icon"
        onClick={toggleTheme}
        className="absolute top-4 right-4 dark:text-gray-300 dark:hover:bg-gray-800"
        title={theme === 'light' ? 'Ativar modo escuro' : 'Ativar modo claro'}
      >
        {theme === 'light' ? (
          <Moon className="h-5 w-5" />
        ) : (
          <Sun className="h-5 w-5" />
        )}
      </Button>

      <div className="w-full max-w-md">
        {/* Logo */}
        <div className="flex flex-col items-center mb-8">
          <Image
            src="/logo-icon.svg"
            alt="KAWAY POS"
            width={80}
            height={80}
            className="mb-4"
          />
          <h1 className="text-3xl font-bold">
            <span className="text-[#1a365d] dark:text-blue-400">KAWAY</span>{' '}
            <span className="text-[#38b2ac] dark:text-teal-400">POS</span>
          </h1>
          <p className="text-gray-500 dark:text-gray-400 text-sm mt-1">Pagamento Rápido</p>
        </div>

        <Card className="dark:bg-gray-800 dark:border-gray-700">
          <CardHeader className="space-y-1">
            <div className="flex items-center justify-between">
              <CardTitle className="text-2xl font-bold dark:text-white">Entrar</CardTitle>
              <div
                className={`flex items-center gap-2 px-3 py-1.5 rounded-full text-sm font-medium ${
                  connectionStatus === 'online'
                    ? 'bg-green-50 dark:bg-green-900/30 text-green-600 dark:text-green-400'
                    : 'bg-orange-50 dark:bg-orange-900/30 text-orange-600 dark:text-orange-400'
                }`}
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
            </div>
            <CardDescription className="dark:text-gray-400">
              Entre com seu email e senha para acessar o sistema
            </CardDescription>
          </CardHeader>

          <form onSubmit={handleSubmit(onSubmit)}>
            <CardContent className="space-y-4">
              <div className="space-y-2">
                <Label htmlFor="email" className="dark:text-gray-200">Email</Label>
                <Input
                  id="email"
                  type="email"
                  placeholder="seu@email.com"
                  leftIcon={<Mail className="h-4 w-4" />}
                  error={!!errors.email}
                  className="dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:placeholder-gray-400"
                  {...register('email')}
                />
                {errors.email && (
                  <p className="text-sm text-destructive">{errors.email.message}</p>
                )}
              </div>

              <div className="space-y-2">
                <Label htmlFor="password" className="dark:text-gray-200">Senha</Label>
                <Input
                  id="password"
                  type="password"
                  placeholder="******"
                  leftIcon={<Lock className="h-4 w-4" />}
                  error={!!errors.password}
                  className="dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:placeholder-gray-400"
                  {...register('password')}
                />
                {errors.password && (
                  <p className="text-sm text-destructive">
                    {errors.password.message}
                  </p>
                )}
              </div>

              {connectionStatus === 'offline' && (
                <div className="rounded-md bg-warning/10 dark:bg-yellow-900/20 p-3 text-sm text-warning dark:text-yellow-400">
                  <p className="font-medium">Modo Offline</p>
                  <p className="text-xs mt-1">
                    Você pode fazer login com credenciais previamente utilizadas
                    neste dispositivo.
                  </p>
                </div>
              )}
            </CardContent>

            <CardFooter className="flex flex-col space-y-4">
              <Button type="submit" className="w-full" loading={isLoading}>
                Entrar
              </Button>

              <div className="text-center text-sm">
                <span className="text-muted-foreground dark:text-gray-400">Não tem uma conta? </span>
                <Link
                  href="/registro"
                  className="text-primary hover:underline font-medium dark:text-blue-400"
                >
                  Criar conta
                </Link>
              </div>
            </CardFooter>
          </form>
        </Card>
      </div>
    </div>
  );
}
