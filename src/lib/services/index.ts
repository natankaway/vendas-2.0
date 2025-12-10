/**
 * Exportação centralizada dos serviços
 *
 * Nota: Os serviços de produtos, clientes e vendas foram migrados para usar
 * Supabase diretamente nas rotas de API.
 */

export { authService, type LoginCredentials, type RegisterData, type AuthResult } from './auth-service';
