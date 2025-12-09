import type { Config } from 'drizzle-kit';
import * as dotenv from 'dotenv';

dotenv.config({ path: '.env.local' });

/**
 * Configuração do Drizzle Kit
 *
 * Este arquivo configura o Drizzle para gerar migrations e interagir com o Supabase (Postgres).
 * O SQLite local usa uma configuração separada em runtime.
 *
 * Decisão: Usar Drizzle em vez de Prisma porque:
 * 1. Melhor performance - queries SQL diretas sem overhead
 * 2. Suporte nativo a SQLite e Postgres com a mesma sintaxe
 * 3. Bundle size menor
 * 4. Type-safety excelente sem geração de código adicional
 * 5. Mais flexível para sincronização customizada
 */
export default {
  schema: './src/lib/db/schema/index.ts',
  out: './drizzle',
  driver: 'pg',
  dbCredentials: {
    connectionString: process.env.DATABASE_URL!,
  },
  verbose: true,
  strict: true,
} satisfies Config;
