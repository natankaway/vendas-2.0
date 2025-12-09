/**
 * Store do Carrinho do PDV
 *
 * Gerencia o estado do carrinho de compras durante uma venda.
 * Inclui cálculos de totais, descontos e impostos.
 */

import { create } from 'zustand';
import { persist } from 'zustand/middleware';
import { v4 as uuidv4 } from 'uuid';
import type { Product, Customer } from '@/lib/types';

// =============================================================================
// TIPOS
// =============================================================================

export interface CartItem {
  /**
   * ID único do item no carrinho (não é o ID do produto)
   */
  id: string;

  /**
   * Dados do produto
   */
  product: Product;

  /**
   * Quantidade
   */
  quantity: number;

  /**
   * Preço unitário (pode ser diferente do preço do produto se houver desconto)
   */
  unitPrice: number;

  /**
   * Desconto em valor absoluto (centavos)
   */
  discountAmount: number;

  /**
   * Desconto em percentual
   */
  discountPercent: number;

  /**
   * Observações do item
   */
  notes: string | null;

  /**
   * Total do item (já com desconto)
   */
  total: number;
}

export type PaymentMethod =
  | 'cash'
  | 'credit_card'
  | 'debit_card'
  | 'pix'
  | 'bank_transfer'
  | 'store_credit'
  | 'other';

interface CartState {
  /**
   * Itens no carrinho
   */
  items: CartItem[];

  /**
   * Cliente selecionado
   */
  customer: Customer | null;

  /**
   * Desconto global em valor (centavos)
   */
  globalDiscountAmount: number;

  /**
   * Desconto global em percentual
   */
  globalDiscountPercent: number;

  /**
   * Forma de pagamento selecionada
   */
  paymentMethod: PaymentMethod | null;

  /**
   * Detalhes do pagamento
   */
  paymentDetails: Record<string, unknown>;

  /**
   * Observações da venda
   */
  notes: string;

  // Valores calculados
  subtotal: number;
  discountTotal: number;
  taxTotal: number;
  total: number;
  itemCount: number;

  // Actions
  addItem: (product: Product, quantity?: number) => void;
  removeItem: (itemId: string) => void;
  updateItemQuantity: (itemId: string, quantity: number) => void;
  updateItemDiscount: (itemId: string, discountAmount?: number, discountPercent?: number) => void;
  updateItemNotes: (itemId: string, notes: string) => void;
  setCustomer: (customer: Customer | null) => void;
  setGlobalDiscount: (amount?: number, percent?: number) => void;
  setPaymentMethod: (method: PaymentMethod | null) => void;
  setPaymentDetails: (details: Record<string, unknown>) => void;
  setNotes: (notes: string) => void;
  clearCart: () => void;
  getCartData: () => CartData;
}

export interface CartData {
  items: CartItem[];
  customer: Customer | null;
  subtotal: number;
  discountAmount: number;
  discountPercent: number;
  taxAmount: number;
  total: number;
  paymentMethod: PaymentMethod | null;
  paymentDetails: Record<string, unknown>;
  notes: string;
}

// =============================================================================
// HELPERS DE CÁLCULO
// =============================================================================

/**
 * Calcula o total de um item
 */
const calculateItemTotal = (
  unitPrice: number,
  quantity: number,
  discountAmount: number,
  discountPercent: number
): number => {
  const subtotal = unitPrice * quantity;
  let discount = discountAmount;

  if (discountPercent > 0) {
    discount += Math.round(subtotal * (discountPercent / 100));
  }

  return Math.max(0, subtotal - discount);
};

/**
 * Recalcula os totais do carrinho
 */
const recalculateTotals = (
  items: CartItem[],
  globalDiscountAmount: number,
  globalDiscountPercent: number
): {
  subtotal: number;
  discountTotal: number;
  taxTotal: number;
  total: number;
  itemCount: number;
} => {
  // Soma dos itens
  const subtotal = items.reduce((sum, item) => sum + item.unitPrice * item.quantity, 0);

  // Descontos dos itens
  const itemDiscounts = items.reduce(
    (sum, item) => sum + (item.unitPrice * item.quantity - item.total),
    0
  );

  // Desconto global
  let globalDiscount = globalDiscountAmount;
  if (globalDiscountPercent > 0) {
    globalDiscount += Math.round((subtotal - itemDiscounts) * (globalDiscountPercent / 100));
  }

  const discountTotal = itemDiscounts + globalDiscount;

  // Calcula impostos (por enquanto 0, pode ser configurável)
  const taxTotal = 0;

  // Total final
  const total = Math.max(0, subtotal - discountTotal + taxTotal);

  // Contagem de itens (considerando quantidade)
  const itemCount = items.reduce((sum, item) => sum + item.quantity, 0);

  return { subtotal, discountTotal, taxTotal, total, itemCount };
};

// =============================================================================
// STORE
// =============================================================================

const initialState = {
  items: [],
  customer: null,
  globalDiscountAmount: 0,
  globalDiscountPercent: 0,
  paymentMethod: null,
  paymentDetails: {},
  notes: '',
  subtotal: 0,
  discountTotal: 0,
  taxTotal: 0,
  total: 0,
  itemCount: 0,
};

export const useCartStore = create<CartState>()(
  persist(
    (set, get) => ({
      ...initialState,

      addItem: (product, quantity = 1) => {
        set((state) => {
          // Verifica se o produto já está no carrinho
          const existingItem = state.items.find(
            (item) => item.product.id === product.id
          );

          let newItems: CartItem[];

          if (existingItem) {
            // Atualiza quantidade do item existente
            newItems = state.items.map((item) => {
              if (item.id === existingItem.id) {
                const newQuantity = item.quantity + quantity;
                const total = calculateItemTotal(
                  item.unitPrice,
                  newQuantity,
                  item.discountAmount,
                  item.discountPercent
                );
                return { ...item, quantity: newQuantity, total };
              }
              return item;
            });
          } else {
            // Adiciona novo item
            const unitPrice = product.price;
            const total = calculateItemTotal(unitPrice, quantity, 0, 0);

            const newItem: CartItem = {
              id: uuidv4(),
              product,
              quantity,
              unitPrice,
              discountAmount: 0,
              discountPercent: 0,
              notes: null,
              total,
            };

            newItems = [...state.items, newItem];
          }

          const totals = recalculateTotals(
            newItems,
            state.globalDiscountAmount,
            state.globalDiscountPercent
          );

          return { items: newItems, ...totals };
        });
      },

      removeItem: (itemId) => {
        set((state) => {
          const newItems = state.items.filter((item) => item.id !== itemId);
          const totals = recalculateTotals(
            newItems,
            state.globalDiscountAmount,
            state.globalDiscountPercent
          );
          return { items: newItems, ...totals };
        });
      },

      updateItemQuantity: (itemId, quantity) => {
        set((state) => {
          if (quantity <= 0) {
            // Remove o item se quantidade for 0 ou negativa
            const newItems = state.items.filter((item) => item.id !== itemId);
            const totals = recalculateTotals(
              newItems,
              state.globalDiscountAmount,
              state.globalDiscountPercent
            );
            return { items: newItems, ...totals };
          }

          const newItems = state.items.map((item) => {
            if (item.id === itemId) {
              const total = calculateItemTotal(
                item.unitPrice,
                quantity,
                item.discountAmount,
                item.discountPercent
              );
              return { ...item, quantity, total };
            }
            return item;
          });

          const totals = recalculateTotals(
            newItems,
            state.globalDiscountAmount,
            state.globalDiscountPercent
          );

          return { items: newItems, ...totals };
        });
      },

      updateItemDiscount: (itemId, discountAmount = 0, discountPercent = 0) => {
        set((state) => {
          const newItems = state.items.map((item) => {
            if (item.id === itemId) {
              const total = calculateItemTotal(
                item.unitPrice,
                item.quantity,
                discountAmount,
                discountPercent
              );
              return { ...item, discountAmount, discountPercent, total };
            }
            return item;
          });

          const totals = recalculateTotals(
            newItems,
            state.globalDiscountAmount,
            state.globalDiscountPercent
          );

          return { items: newItems, ...totals };
        });
      },

      updateItemNotes: (itemId, notes) => {
        set((state) => ({
          items: state.items.map((item) =>
            item.id === itemId ? { ...item, notes } : item
          ),
        }));
      },

      setCustomer: (customer) => {
        set({ customer });
      },

      setGlobalDiscount: (amount = 0, percent = 0) => {
        set((state) => {
          const totals = recalculateTotals(state.items, amount, percent);
          return {
            globalDiscountAmount: amount,
            globalDiscountPercent: percent,
            ...totals,
          };
        });
      },

      setPaymentMethod: (method) => {
        set({ paymentMethod: method });
      },

      setPaymentDetails: (details) => {
        set({ paymentDetails: details });
      },

      setNotes: (notes) => {
        set({ notes });
      },

      clearCart: () => {
        set(initialState);
      },

      getCartData: () => {
        const state = get();
        return {
          items: state.items,
          customer: state.customer,
          subtotal: state.subtotal,
          discountAmount: state.discountTotal,
          discountPercent: state.globalDiscountPercent,
          taxAmount: state.taxTotal,
          total: state.total,
          paymentMethod: state.paymentMethod,
          paymentDetails: state.paymentDetails,
          notes: state.notes,
        };
      },
    }),
    {
      name: 'cart-store',
      // Persiste o carrinho para não perder dados se fechar o navegador
      partialize: (state) => ({
        items: state.items,
        customer: state.customer,
        globalDiscountAmount: state.globalDiscountAmount,
        globalDiscountPercent: state.globalDiscountPercent,
        notes: state.notes,
        subtotal: state.subtotal,
        discountTotal: state.discountTotal,
        taxTotal: state.taxTotal,
        total: state.total,
        itemCount: state.itemCount,
      }),
    }
  )
);
