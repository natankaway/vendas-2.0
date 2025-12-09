/**
 * Serviço de Clientes
 *
 * Gerencia operações CRUD de clientes com suporte offline-first.
 */

import { getSqliteDb } from '@/lib/db';
import { customersLocal } from '@/lib/db/schema/sqlite-schema';
import { createBaseService, type ListOptions, type ListResult } from './base-service';
import { eq, and, isNull, like, or, desc, sql } from 'drizzle-orm';
import { v4 as uuidv4 } from 'uuid';
import { addToQueue } from '@/lib/sync/queue';

// =============================================================================
// TIPOS
// =============================================================================

export interface Customer {
  id: string;
  name: string;
  email: string | null;
  phone: string | null;
  document: string | null;
  document_type: 'cpf' | 'cnpj' | null;
  address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  notes: string | null;
  credit_limit: number;
  current_balance: number;
  total_purchases: number;
  last_purchase_at: string | null;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface CreateCustomerInput {
  name: string;
  email?: string;
  phone?: string;
  document?: string;
  document_type?: 'cpf' | 'cnpj';
  address?: string;
  city?: string;
  state?: string;
  zip_code?: string;
  notes?: string;
  credit_limit?: number;
}

export interface UpdateCustomerInput {
  name?: string;
  email?: string;
  phone?: string;
  document?: string;
  document_type?: 'cpf' | 'cnpj';
  address?: string;
  city?: string;
  state?: string;
  zip_code?: string;
  notes?: string;
  credit_limit?: number;
}

// =============================================================================
// SERVIÇO BASE
// =============================================================================

const baseService = createBaseService<
  typeof customersLocal,
  Customer,
  CreateCustomerInput,
  UpdateCustomerInput
>('customers', customersLocal);

// =============================================================================
// SERVIÇO ESTENDIDO
// =============================================================================

export const customersService = {
  ...baseService,

  /**
   * Cria cliente com validação
   */
  async create(data: CreateCustomerInput): Promise<Customer> {
    const db = getSqliteDb();
    const now = new Date().toISOString();
    const id = uuidv4();

    // Valida documento se fornecido
    if (data.document) {
      const cleanDoc = data.document.replace(/\D/g, '');
      const docType = cleanDoc.length === 11 ? 'cpf' : cleanDoc.length === 14 ? 'cnpj' : null;

      if (docType) {
        data.document = cleanDoc;
        data.document_type = docType;
      }
    }

    const customer = {
      id,
      name: data.name,
      email: data.email || null,
      phone: data.phone?.replace(/\D/g, '') || null,
      document: data.document || null,
      document_type: data.document_type || null,
      address: data.address || null,
      city: data.city || null,
      state: data.state || null,
      zip_code: data.zip_code?.replace(/\D/g, '') || null,
      notes: data.notes || null,
      credit_limit: data.credit_limit || 0,
      current_balance: 0,
      total_purchases: 0,
      last_purchase_at: null,
      created_at: now,
      updated_at: now,
      deleted_at: null,
      version: 1,
      synced_at: null,
      local_only: 1,
    };

    await db.insert(customersLocal).values(customer);
    await addToQueue('customers', id, 'create', customer);

    return this.findById(id) as Promise<Customer>;
  },

  /**
   * Busca cliente por documento (CPF/CNPJ)
   */
  async findByDocument(document: string): Promise<Customer | null> {
    const db = getSqliteDb();
    const cleanDoc = document.replace(/\D/g, '');

    const results = await db
      .select()
      .from(customersLocal)
      .where(
        and(
          eq(customersLocal.document, cleanDoc),
          isNull(customersLocal.deleted_at)
        )
      )
      .limit(1);

    return (results[0] as Customer) || null;
  },

  /**
   * Busca cliente por telefone
   */
  async findByPhone(phone: string): Promise<Customer | null> {
    const db = getSqliteDb();
    const cleanPhone = phone.replace(/\D/g, '');

    const results = await db
      .select()
      .from(customersLocal)
      .where(
        and(
          eq(customersLocal.phone, cleanPhone),
          isNull(customersLocal.deleted_at)
        )
      )
      .limit(1);

    return (results[0] as Customer) || null;
  },

  /**
   * Busca cliente por email
   */
  async findByEmail(email: string): Promise<Customer | null> {
    const db = getSqliteDb();

    const results = await db
      .select()
      .from(customersLocal)
      .where(
        and(
          eq(customersLocal.email, email.toLowerCase()),
          isNull(customersLocal.deleted_at)
        )
      )
      .limit(1);

    return (results[0] as Customer) || null;
  },

  /**
   * Busca rápida para autocomplete
   */
  async search(query: string, limit = 10): Promise<Customer[]> {
    const db = getSqliteDb();

    // Remove formatação do query se for documento ou telefone
    const cleanQuery = query.replace(/\D/g, '');

    const results = await db
      .select()
      .from(customersLocal)
      .where(
        and(
          isNull(customersLocal.deleted_at),
          or(
            like(customersLocal.name, `%${query}%`),
            like(customersLocal.phone, `%${cleanQuery}%`),
            like(customersLocal.document, `%${cleanQuery}%`),
            like(customersLocal.email, `%${query}%`)
          )
        )
      )
      .orderBy(customersLocal.name)
      .limit(limit);

    return results as Customer[];
  },

  /**
   * Lista clientes com saldo devedor
   */
  async findWithBalance(): Promise<Customer[]> {
    const db = getSqliteDb();

    return db
      .select()
      .from(customersLocal)
      .where(
        and(
          isNull(customersLocal.deleted_at),
          sql`${customersLocal.current_balance} > 0`
        )
      )
      .orderBy(desc(customersLocal.current_balance)) as Promise<Customer[]>;
  },

  /**
   * Atualiza saldo do cliente após uma venda
   */
  async updateAfterSale(
    customerId: string,
    saleTotal: number,
    options: {
      addToBalance?: boolean; // Se true, adiciona ao saldo devedor (fiado)
    } = {}
  ): Promise<Customer | null> {
    const db = getSqliteDb();
    const customer = await this.findById(customerId);
    if (!customer) return null;

    const now = new Date().toISOString();
    const updates: Record<string, unknown> = {
      total_purchases: customer.total_purchases + saleTotal,
      last_purchase_at: now,
      updated_at: now,
      version: customer.version + 1,
    };

    if (options.addToBalance) {
      updates.current_balance = customer.current_balance + saleTotal;
    }

    await db
      .update(customersLocal)
      .set(updates)
      .where(eq(customersLocal.id, customerId));

    const updated = await this.findById(customerId);
    if (updated) {
      await addToQueue('customers', customerId, 'update', updated as Record<string, unknown>);
    }

    return updated;
  },

  /**
   * Registra pagamento do cliente (reduz saldo devedor)
   */
  async registerPayment(
    customerId: string,
    amount: number
  ): Promise<Customer | null> {
    const db = getSqliteDb();
    const customer = await this.findById(customerId);
    if (!customer) return null;

    const now = new Date().toISOString();
    const newBalance = Math.max(0, customer.current_balance - amount);

    await db
      .update(customersLocal)
      .set({
        current_balance: newBalance,
        updated_at: now,
        version: customer.version + 1,
      })
      .where(eq(customersLocal.id, customerId));

    const updated = await this.findById(customerId);
    if (updated) {
      await addToQueue('customers', customerId, 'update', updated as Record<string, unknown>);
    }

    return updated;
  },

  /**
   * Lista clientes para select
   */
  async listForSelect(): Promise<{ value: string; label: string; phone?: string }[]> {
    const db = getSqliteDb();

    const customers = await db
      .select({
        id: customersLocal.id,
        name: customersLocal.name,
        phone: customersLocal.phone,
      })
      .from(customersLocal)
      .where(isNull(customersLocal.deleted_at))
      .orderBy(customersLocal.name);

    return customers.map((c) => ({
      value: c.id,
      label: c.name,
      phone: c.phone || undefined,
    }));
  },

  /**
   * Obtém histórico de compras do cliente
   */
  async getPurchaseHistory(
    customerId: string,
    limit = 10
  ): Promise<{ total: number; count: number }> {
    const customer = await this.findById(customerId);
    if (!customer) {
      return { total: 0, count: 0 };
    }

    // Por enquanto retorna dados agregados do cliente
    // TODO: Implementar query nas vendas
    return {
      total: customer.total_purchases,
      count: 0, // Seria calculado das vendas
    };
  },
};
