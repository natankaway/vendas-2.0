/**
 * Serviço de Vendas
 *
 * Gerencia operações de vendas (PDV) com suporte offline-first.
 * Este é o serviço mais crítico do sistema.
 *
 * Características:
 * - Vendas funcionam 100% offline
 * - Número de recibo único mesmo offline (UUID + timestamp)
 * - Baixa estoque automaticamente
 * - Atualiza histórico do cliente
 * - Fila de sincronização com alta prioridade
 */

import { getSqliteDb, getSqliteClient } from '@/lib/db';
import { salesLocal, saleItemsLocal } from '@/lib/db/schema/sqlite-schema';
import { createBaseService } from './base-service';
import { eq, and, isNull, between, desc, sql } from 'drizzle-orm';
import { v4 as uuidv4 } from 'uuid';
import { addToQueue } from '@/lib/sync/queue';
import { productsService } from './products-service';
import { customersService } from './customers-service';

// =============================================================================
// TIPOS
// =============================================================================

export type SaleStatus = 'pending' | 'completed' | 'cancelled' | 'refunded';

export type PaymentMethod =
  | 'cash'
  | 'credit_card'
  | 'debit_card'
  | 'pix'
  | 'bank_transfer'
  | 'store_credit'
  | 'other';

export interface Sale {
  id: string;
  customer_id: string | null;
  user_id: string;
  status: SaleStatus;
  subtotal: number;
  discount_amount: number;
  discount_percent: number;
  tax_amount: number;
  total: number;
  payment_method: PaymentMethod | null;
  payment_details: string | null; // JSON string
  notes: string | null;
  receipt_number: string;
  completed_at: string | null;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface SaleItem {
  id: string;
  sale_id: string;
  product_id: string;
  product_name: string;
  product_sku: string;
  quantity: number;
  unit_price: number;
  discount_amount: number;
  discount_percent: number;
  tax_amount: number;
  total: number;
  notes: string | null;
  created_at: string;
  updated_at: string;
  deleted_at: string | null;
  version: number;
  synced_at: string | null;
  local_only: boolean | number;
}

export interface CreateSaleInput {
  customer_id?: string;
  user_id: string;
  items: CreateSaleItemInput[];
  discount_amount?: number;
  discount_percent?: number;
  payment_method: PaymentMethod;
  payment_details?: Record<string, unknown>;
  notes?: string;
}

export interface CreateSaleItemInput {
  product_id: string;
  quantity: number;
  unit_price?: number;
  discount_amount?: number;
  discount_percent?: number;
  notes?: string;
}

export interface SaleWithItems extends Sale {
  items: SaleItem[];
  customer?: {
    id: string;
    name: string;
    phone: string | null;
  } | null;
}

export interface PaymentDetails {
  card_brand?: string;
  card_last_digits?: string;
  installments?: number;
  authorization_code?: string;
  pix_key?: string;
  pix_transaction_id?: string;
  amount_received?: number;
  change_amount?: number;
  payments?: Array<{
    method: PaymentMethod;
    amount: number;
    details?: Partial<PaymentDetails>;
  }>;
}

// =============================================================================
// SERVIÇO
// =============================================================================

export const salesService = {
  /**
   * Cria uma nova venda completa
   *
   * Esta função:
   * 1. Valida os dados de entrada
   * 2. Cria a venda e os itens
   * 3. Baixa o estoque dos produtos
   * 4. Atualiza o histórico do cliente
   * 5. Adiciona tudo à fila de sincronização
   */
  async create(data: CreateSaleInput): Promise<SaleWithItems> {
    const db = getSqliteDb();
    const client = getSqliteClient();
    const now = new Date().toISOString();
    const saleId = uuidv4();

    // Gera número do recibo único
    const receiptNumber = this.generateReceiptNumber();

    // Busca produtos e calcula totais
    const itemsWithProducts = await Promise.all(
      data.items.map(async (item) => {
        const product = await productsService.findById(item.product_id);
        if (!product) {
          throw new Error(`Produto não encontrado: ${item.product_id}`);
        }
        return { ...item, product };
      })
    );

    // Calcula subtotal
    let subtotal = 0;
    const saleItems: Omit<SaleItem, 'sale_id'>[] = [];

    for (const item of itemsWithProducts) {
      const unitPrice = item.unit_price ?? item.product.price;
      const itemSubtotal = unitPrice * item.quantity;

      // Aplica desconto do item
      let itemDiscount = item.discount_amount || 0;
      if (item.discount_percent) {
        itemDiscount += Math.round(itemSubtotal * (item.discount_percent / 100));
      }

      const itemTotal = Math.max(0, itemSubtotal - itemDiscount);
      subtotal += itemTotal;

      saleItems.push({
        id: uuidv4(),
        product_id: item.product_id,
        product_name: item.product.name,
        product_sku: item.product.sku,
        quantity: item.quantity,
        unit_price: unitPrice,
        discount_amount: item.discount_amount || 0,
        discount_percent: item.discount_percent || 0,
        tax_amount: 0, // TODO: Calcular imposto
        total: itemTotal,
        notes: item.notes || null,
        created_at: now,
        updated_at: now,
        deleted_at: null,
        version: 1,
        synced_at: null,
        local_only: 1,
      });
    }

    // Aplica desconto global
    let globalDiscount = data.discount_amount || 0;
    if (data.discount_percent) {
      globalDiscount += Math.round(subtotal * (data.discount_percent / 100));
    }

    const total = Math.max(0, subtotal - globalDiscount);

    // Monta dados da venda
    const sale = {
      id: saleId,
      customer_id: data.customer_id || null,
      user_id: data.user_id,
      status: 'completed' as SaleStatus,
      subtotal,
      discount_amount: data.discount_amount || 0,
      discount_percent: data.discount_percent || 0,
      tax_amount: 0,
      total,
      payment_method: data.payment_method,
      payment_details: data.payment_details ? JSON.stringify(data.payment_details) : null,
      notes: data.notes || null,
      receipt_number: receiptNumber,
      completed_at: now,
      created_at: now,
      updated_at: now,
      deleted_at: null,
      version: 1,
      synced_at: null,
      local_only: 1,
    };

    // Executa tudo em transação
    client.exec('BEGIN TRANSACTION');

    try {
      // Insere a venda
      await db.insert(salesLocal).values(sale);
      await addToQueue('sales', saleId, 'create', sale);

      // Insere os itens e baixa estoque
      for (const item of saleItems) {
        const itemWithSaleId = { ...item, sale_id: saleId };
        await db.insert(saleItemsLocal).values(itemWithSaleId);
        await addToQueue('sale_items', item.id, 'create', itemWithSaleId);

        // Baixa estoque
        await productsService.updateStock(
          item.product_id,
          -item.quantity,
          'sale',
          data.user_id,
          {
            referenceId: saleId,
          }
        );
      }

      // Atualiza cliente se especificado
      if (data.customer_id) {
        await customersService.updateAfterSale(data.customer_id, total);
      }

      client.exec('COMMIT');

      // Retorna venda completa
      return {
        ...sale,
        items: saleItems.map((item) => ({ ...item, sale_id: saleId })),
      };
    } catch (error) {
      client.exec('ROLLBACK');
      throw error;
    }
  },

  /**
   * Busca venda por ID com itens
   */
  async findById(id: string): Promise<SaleWithItems | null> {
    const db = getSqliteDb();

    const sales = await db
      .select()
      .from(salesLocal)
      .where(eq(salesLocal.id, id))
      .limit(1);

    if (sales.length === 0) return null;

    const sale = sales[0] as Sale;

    const items = await db
      .select()
      .from(saleItemsLocal)
      .where(eq(saleItemsLocal.sale_id, id));

    // Busca cliente se houver
    let customer = null;
    if (sale.customer_id) {
      const c = await customersService.findById(sale.customer_id);
      if (c) {
        customer = {
          id: c.id,
          name: c.name,
          phone: c.phone,
        };
      }
    }

    return {
      ...sale,
      items: items as SaleItem[],
      customer,
    };
  },

  /**
   * Busca venda por número do recibo
   */
  async findByReceiptNumber(receiptNumber: string): Promise<SaleWithItems | null> {
    const db = getSqliteDb();

    const sales = await db
      .select()
      .from(salesLocal)
      .where(eq(salesLocal.receipt_number, receiptNumber))
      .limit(1);

    if (sales.length === 0) return null;

    return this.findById(sales[0].id);
  },

  /**
   * Lista vendas com paginação
   */
  async list(options: {
    page?: number;
    limit?: number;
    status?: SaleStatus;
    startDate?: string;
    endDate?: string;
    customerId?: string;
    userId?: string;
  } = {}): Promise<{
    data: SaleWithItems[];
    total: number;
    page: number;
    limit: number;
  }> {
    const db = getSqliteDb();
    const {
      page = 1,
      limit = 20,
      status,
      startDate,
      endDate,
      customerId,
      userId,
    } = options;

    const offset = (page - 1) * limit;

    // Constrói query base
    let baseConditions = isNull(salesLocal.deleted_at);

    if (status) {
      baseConditions = and(baseConditions, eq(salesLocal.status, status)) as any;
    }

    if (customerId) {
      baseConditions = and(baseConditions, eq(salesLocal.customer_id, customerId)) as any;
    }

    if (userId) {
      baseConditions = and(baseConditions, eq(salesLocal.user_id, userId)) as any;
    }

    if (startDate && endDate) {
      baseConditions = and(
        baseConditions,
        between(salesLocal.created_at, startDate, endDate)
      ) as any;
    }

    // Busca vendas
    const sales = await db
      .select()
      .from(salesLocal)
      .where(baseConditions)
      .orderBy(desc(salesLocal.created_at))
      .limit(limit)
      .offset(offset);

    // Conta total
    const countResult = await db
      .select({ count: sql<number>`COUNT(*)` })
      .from(salesLocal)
      .where(baseConditions);

    const total = countResult[0]?.count || 0;

    // Busca itens para cada venda
    const salesWithItems: SaleWithItems[] = await Promise.all(
      sales.map(async (sale) => {
        const items = await db
          .select()
          .from(saleItemsLocal)
          .where(eq(saleItemsLocal.sale_id, sale.id));

        let customer = null;
        if (sale.customer_id) {
          const c = await customersService.findById(sale.customer_id);
          if (c) {
            customer = { id: c.id, name: c.name, phone: c.phone };
          }
        }

        return {
          ...(sale as Sale),
          items: items as SaleItem[],
          customer,
        };
      })
    );

    return {
      data: salesWithItems,
      total,
      page,
      limit,
    };
  },

  /**
   * Cancela uma venda
   */
  async cancel(saleId: string, userId: string, reason?: string): Promise<SaleWithItems | null> {
    const db = getSqliteDb();
    const client = getSqliteClient();

    const sale = await this.findById(saleId);
    if (!sale) return null;

    if (sale.status !== 'completed') {
      throw new Error('Apenas vendas completas podem ser canceladas');
    }

    const now = new Date().toISOString();

    client.exec('BEGIN TRANSACTION');

    try {
      // Atualiza status da venda
      await db
        .update(salesLocal)
        .set({
          status: 'cancelled',
          notes: reason ? `${sale.notes || ''}\nCANCELADO: ${reason}` : sale.notes,
          updated_at: now,
          version: sale.version + 1,
        })
        .where(eq(salesLocal.id, saleId));

      // Devolve estoque
      for (const item of sale.items) {
        await productsService.updateStock(
          item.product_id,
          item.quantity, // Positivo para devolver
          'return',
          userId,
          {
            reason: `Cancelamento da venda ${sale.receipt_number}`,
            referenceId: saleId,
          }
        );
      }

      // Atualiza cliente se houver
      if (sale.customer_id) {
        // Reverte o total de compras do cliente
        const customer = await customersService.findById(sale.customer_id);
        if (customer) {
          await db
            .update(require('@/lib/db/schema/sqlite-schema').customersLocal)
            .set({
              total_purchases: Math.max(0, customer.total_purchases - sale.total),
              updated_at: now,
            })
            .where(eq(require('@/lib/db/schema/sqlite-schema').customersLocal.id, sale.customer_id));
        }
      }

      // Adiciona à fila de sync
      const updatedSale = await this.findById(saleId);
      if (updatedSale) {
        await addToQueue('sales', saleId, 'update', updatedSale as unknown as Record<string, unknown>);
      }

      client.exec('COMMIT');

      return this.findById(saleId);
    } catch (error) {
      client.exec('ROLLBACK');
      throw error;
    }
  },

  /**
   * Gera número único do recibo
   *
   * Formato: YYYYMMDD-HHMMSS-XXXX
   * Onde XXXX são os últimos 4 caracteres do UUID
   */
  generateReceiptNumber(): string {
    const now = new Date();
    const date = now.toISOString().slice(0, 10).replace(/-/g, '');
    const time = now.toISOString().slice(11, 19).replace(/:/g, '');
    const uuid = uuidv4().slice(-4).toUpperCase();

    return `${date}-${time}-${uuid}`;
  },

  /**
   * Obtém resumo de vendas do dia
   */
  async getDailySummary(date?: string): Promise<{
    total: number;
    count: number;
    averageTicket: number;
    byPaymentMethod: Record<PaymentMethod, { count: number; total: number }>;
  }> {
    const client = getSqliteClient();
    const targetDate = date || new Date().toISOString().slice(0, 10);

    const startOfDay = `${targetDate}T00:00:00.000Z`;
    const endOfDay = `${targetDate}T23:59:59.999Z`;

    // Total e contagem
    const summary = client
      .prepare(
        `SELECT
          COALESCE(SUM(total), 0) as total,
          COUNT(*) as count
         FROM sales
         WHERE status = 'completed'
         AND deleted_at IS NULL
         AND completed_at BETWEEN ? AND ?`
      )
      .get(startOfDay, endOfDay) as { total: number; count: number };

    // Por forma de pagamento
    const byPayment = client
      .prepare(
        `SELECT
          payment_method,
          COUNT(*) as count,
          COALESCE(SUM(total), 0) as total
         FROM sales
         WHERE status = 'completed'
         AND deleted_at IS NULL
         AND completed_at BETWEEN ? AND ?
         GROUP BY payment_method`
      )
      .all(startOfDay, endOfDay) as { payment_method: PaymentMethod; count: number; total: number }[];

    const byPaymentMethod: Record<PaymentMethod, { count: number; total: number }> = {
      cash: { count: 0, total: 0 },
      credit_card: { count: 0, total: 0 },
      debit_card: { count: 0, total: 0 },
      pix: { count: 0, total: 0 },
      bank_transfer: { count: 0, total: 0 },
      store_credit: { count: 0, total: 0 },
      other: { count: 0, total: 0 },
    };

    for (const row of byPayment) {
      if (row.payment_method && byPaymentMethod[row.payment_method]) {
        byPaymentMethod[row.payment_method] = {
          count: row.count,
          total: row.total,
        };
      }
    }

    return {
      total: summary.total,
      count: summary.count,
      averageTicket: summary.count > 0 ? Math.round(summary.total / summary.count) : 0,
      byPaymentMethod,
    };
  },

  /**
   * Obtém vendas por período para relatórios
   */
  async getSalesByPeriod(
    startDate: string,
    endDate: string
  ): Promise<{ date: string; count: number; total: number }[]> {
    const client = getSqliteClient();

    const results = client
      .prepare(
        `SELECT
          DATE(completed_at) as date,
          COUNT(*) as count,
          COALESCE(SUM(total), 0) as total
         FROM sales
         WHERE status = 'completed'
         AND deleted_at IS NULL
         AND completed_at BETWEEN ? AND ?
         GROUP BY DATE(completed_at)
         ORDER BY date`
      )
      .all(startDate, endDate) as { date: string; count: number; total: number }[];

    return results;
  },
};
