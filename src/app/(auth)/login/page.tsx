/**
 * Página de Login
 *
 * Permite login online (Supabase) ou offline (SQLite local).
 */

'use client';

import { useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Loader2, Mail, Lock, Wifi, WifiOff } from 'lucide-react';
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
    <div className="min-h-screen flex items-center justify-center bg-muted/50 p-4">
      <Card className="w-full max-w-md">
        <CardHeader className="space-y-1">
          <div className="flex items-center justify-between">
            <CardTitle className="text-2xl font-bold">Entrar</CardTitle>
            <div
              className={`connection-status ${
                connectionStatus === 'online' ? 'online' : 'offline'
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
          <CardDescription>
            Entre com seu email e senha para acessar o sistema
          </CardDescription>
        </CardHeader>

        <form onSubmit={handleSubmit(onSubmit)}>
          <CardContent className="space-y-4">
            <div className="space-y-2">
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                placeholder="seu@email.com"
                leftIcon={<Mail className="h-4 w-4" />}
                error={!!errors.email}
                {...register('email')}
              />
              {errors.email && (
                <p className="text-sm text-destructive">{errors.email.message}</p>
              )}
            </div>

            <div className="space-y-2">
              <Label htmlFor="password">Senha</Label>
              <Input
                id="password"
                type="password"
                placeholder="******"
                leftIcon={<Lock className="h-4 w-4" />}
                error={!!errors.password}
                {...register('password')}
              />
              {errors.password && (
                <p className="text-sm text-destructive">
                  {errors.password.message}
                </p>
              )}
            </div>

            {connectionStatus === 'offline' && (
              <div className="rounded-md bg-warning/10 p-3 text-sm text-warning">
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
              <span className="text-muted-foreground">Não tem uma conta? </span>
              <Link
                href="/registro"
                className="text-primary hover:underline font-medium"
              >
                Criar conta
              </Link>
            </div>
          </CardFooter>
        </form>
      </Card>
    </div>
  );
}
