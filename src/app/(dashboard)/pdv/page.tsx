/**
 * Página do PDV (Ponto de Venda)
 *
 * Esta é a interface principal de vendas do sistema.
 * Layout totalmente responsivo para desktop, tablet e mobile.
 */

'use client';

import { useState, useEffect, useCallback, useRef } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  Search,
  Plus,
  Minus,
  Trash2,
  User,
  CreditCard,
  Banknote,
  Smartphone,
  X,
  Check,
  Printer,
  ShoppingBag,
  Clock,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogFooter,
} from '@/components/ui/dialog';
import { Label } from '@/components/ui/label';
import { toast } from '@/components/ui/use-toast';
import { useCartStore, type PaymentMethod } from '@/lib/stores/cart-store';
import { useAuthStore } from '@/lib/stores/auth-store';
import { useSidebarStore } from '@/lib/stores/sidebar-store';
import { formatCurrency, cn, debounce } from '@/lib/utils';
import type { Product, Customer } from '@/lib/types';

// =============================================================================
// COMPONENTES AUXILIARES
// =============================================================================

function ProductCard({
  product,
  onAdd,
}: {
  product: Product;
  onAdd: (product: Product) => void;
}) {
  const isOutOfStock = product.stock_quantity <= 0;
  const isLowStock = product.stock_quantity <= product.min_stock_quantity;

  return (
    <button
      onClick={() => !isOutOfStock && onAdd(product)}
      disabled={isOutOfStock}
      className={cn(
        'flex flex-col items-center p-2 sm:p-3 bg-white dark:bg-gray-800 rounded-lg border border-gray-100 dark:border-gray-700 hover:border-blue-200 dark:hover:border-blue-500 hover:shadow-sm transition-all',
        isOutOfStock && 'opacity-50 cursor-not-allowed'
      )}
    >
      {product.image_url ? (
        <img
          src={product.image_url}
          alt={product.name}
          className="w-10 h-10 sm:w-14 sm:h-14 object-cover rounded-lg mb-1"
        />
      ) : (
        <div className="w-10 h-10 sm:w-14 sm:h-14 bg-gradient-to-br from-blue-100 to-purple-100 rounded-lg mb-1 flex items-center justify-center text-base sm:text-xl font-bold text-blue-600">
          {product.name.charAt(0).toUpperCase()}
        </div>
      )}

      <span className="text-[10px] sm:text-xs font-medium text-center line-clamp-2 w-full text-gray-700 dark:text-gray-200 leading-tight">
        {product.name}
      </span>
      <span className="text-xs sm:text-sm font-bold text-blue-600 mt-0.5">
        {formatCurrency(product.price)}
      </span>

      {isLowStock && !isOutOfStock && (
        <span className="text-[8px] sm:text-[10px] text-orange-500 font-medium">Baixo</span>
      )}
      {isOutOfStock && (
        <span className="text-[8px] sm:text-[10px] text-red-500 font-medium">Esgotado</span>
      )}
    </button>
  );
}

function CartItemRow({
  item,
  onUpdateQuantity,
  onRemove,
}: {
  item: any;
  onUpdateQuantity: (id: string, qty: number) => void;
  onRemove: (id: string) => void;
}) {
  const [inputValue, setInputValue] = useState(String(item.quantity));

  useEffect(() => {
    setInputValue(String(item.quantity));
  }, [item.quantity]);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    if (value === '' || /^\d+$/.test(value)) {
      setInputValue(value);
    }
  };

  const handleInputBlur = () => {
    const qty = parseInt(inputValue) || 1;
    if (qty !== item.quantity) {
      onUpdateQuantity(item.id, Math.max(1, qty));
    } else {
      setInputValue(String(item.quantity));
    }
  };

  return (
    <div className="flex items-center gap-2 p-2 sm:p-3 border-b dark:border-gray-700 last:border-0">
      <div className="flex-1 min-w-0">
        <p className="font-medium truncate text-sm dark:text-white">{item.product.name}</p>
        <p className="text-xs text-gray-500 dark:text-gray-400">
          {formatCurrency(item.unitPrice)} x {item.quantity}
        </p>
      </div>

      <div className="flex items-center gap-1 flex-shrink-0">
        <button
          className="w-7 h-7 flex items-center justify-center border dark:border-gray-600 rounded-md hover:bg-gray-50 dark:hover:bg-gray-700 dark:text-gray-300"
          onClick={() => onUpdateQuantity(item.id, item.quantity - 1)}
        >
          <Minus className="h-3 w-3" />
        </button>
        <input
          type="text"
          inputMode="numeric"
          value={inputValue}
          onChange={handleInputChange}
          onBlur={handleInputBlur}
          className="w-8 h-7 text-center text-sm font-medium border dark:border-gray-600 rounded-md focus:outline-none focus:ring-1 focus:ring-blue-500 dark:bg-gray-700 dark:text-white"
        />
        <button
          className="w-7 h-7 flex items-center justify-center border dark:border-gray-600 rounded-md hover:bg-gray-50 dark:hover:bg-gray-700 dark:text-gray-300"
          onClick={() => onUpdateQuantity(item.id, item.quantity + 1)}
        >
          <Plus className="h-3 w-3" />
        </button>
      </div>

      <div className="flex items-center gap-1 flex-shrink-0">
        <span className="font-bold text-sm tabular-nums w-16 text-right dark:text-white">
          {formatCurrency(item.total)}
        </span>
        <button
          className="w-7 h-7 flex items-center justify-center text-red-500 hover:bg-red-50 dark:hover:bg-red-900/30 rounded-md"
          onClick={() => onRemove(item.id)}
        >
          <Trash2 className="h-4 w-4" />
        </button>
      </div>
    </div>
  );
}

function PaymentMethodButton({
  method,
  label,
  icon: Icon,
  selected,
  onClick,
  disabled = false,
}: {
  method: PaymentMethod;
  label: string;
  icon: any;
  selected: boolean;
  onClick: (method: PaymentMethod) => void;
  disabled?: boolean;
}) {
  return (
    <button
      onClick={() => !disabled && onClick(method)}
      disabled={disabled}
      className={cn(
        'flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all',
        disabled
          ? 'border-gray-200 dark:border-gray-700 bg-gray-100 dark:bg-gray-800 text-gray-400 dark:text-gray-600 cursor-not-allowed opacity-50'
          : selected
            ? 'border-blue-500 bg-blue-50 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400'
            : 'border-gray-200 dark:border-gray-600 hover:border-blue-300 hover:bg-gray-50 dark:hover:bg-gray-700 dark:text-gray-300'
      )}
    >
      <Icon className={cn('h-5 w-5 mb-1', selected && !disabled && 'text-blue-600 dark:text-blue-400')} />
      <span className={cn('text-xs', selected && !disabled && 'font-medium')}>{label}</span>
    </button>
  );
}

// =============================================================================
// PÁGINA PRINCIPAL
// =============================================================================

export default function PDVPage() {
  const queryClient = useQueryClient();
  const { user } = useAuthStore();
  const { isCollapsed: sidebarCollapsed } = useSidebarStore();
  const searchInputRef = useRef<HTMLInputElement>(null);

  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState<string | null>(null);
  const [showPaymentDialog, setShowPaymentDialog] = useState(false);
  const [showReceiptDialog, setShowReceiptDialog] = useState(false);
  const [showCustomerDialog, setShowCustomerDialog] = useState(false);
  const [showCartDrawer, setShowCartDrawer] = useState(false);
  const [customerSearch, setCustomerSearch] = useState('');
  const [lastSale, setLastSale] = useState<any>(null);
  const [cashReceived, setCashReceived] = useState('');

  // Load company settings from database
  const { data: companySettings } = useQuery({
    queryKey: ['company-settings'],
    queryFn: async () => {
      const res = await fetch('/api/configuracoes/empresa');
      const data = await res.json();
      return data.data as {
        name: string;
        logo: string | null;
        address: string;
        phone: string;
        document: string;
      };
    },
    staleTime: 60000,
  });

  const {
    items,
    customer,
    subtotal,
    discountTotal,
    total,
    itemCount,
    paymentMethod,
    addItem,
    removeItem,
    updateItemQuantity,
    setCustomer,
    setPaymentMethod,
    clearCart,
  } = useCartStore();

  const { data: productsData, isLoading: loadingProducts } = useQuery({
    queryKey: ['products', 'pdv', searchQuery, selectedCategory],
    queryFn: async () => {
      const params = new URLSearchParams();
      if (searchQuery) params.set('search', searchQuery);
      if (selectedCategory) params.set('category', selectedCategory);
      params.set('active', 'true');

      const response = await fetch(`/api/produtos?${params}`);
      if (!response.ok) throw new Error('Erro ao buscar produtos');
      return response.json();
    },
    staleTime: 1000 * 60,
  });

  const { data: categoriesData } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const response = await fetch('/api/categorias');
      if (!response.ok) throw new Error('Erro ao buscar categorias');
      return response.json();
    },
    staleTime: 1000 * 60 * 5,
  });

  const { data: customersData, isLoading: loadingCustomers } = useQuery({
    queryKey: ['customers', 'pdv', customerSearch],
    queryFn: async () => {
      const params = new URLSearchParams();
      if (customerSearch) params.set('search', customerSearch);
      params.set('limit', '20');
      const response = await fetch(`/api/clientes?${params}`);
      if (!response.ok) throw new Error('Erro ao buscar clientes');
      return response.json();
    },
    enabled: showCustomerDialog,
    staleTime: 1000 * 30,
  });

  const createSaleMutation = useMutation({
    mutationFn: async (saleData: any) => {
      const response = await fetch('/api/vendas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(saleData),
      });

      const result = await response.json();

      if (!response.ok) {
        let errorMessage = result.error || 'Erro ao criar venda';
        if (result.details && Array.isArray(result.details)) {
          errorMessage = result.details.join('\n');
        }
        throw new Error(errorMessage);
      }

      return result;
    },
    onSuccess: (response) => {
      const saleData = response.data;
      // Include customer and payment info in lastSale for receipt
      setLastSale({
        ...saleData,
        customer: customer,
        payment_method: paymentMethod,
        payment_details: paymentMethod === 'cash' ? {
          amount_received: parseFloat(cashReceived.replace(',', '.') || '0') * 100,
          change_amount: parseFloat(cashReceived.replace(',', '.') || '0') * 100 - saleData.total,
        } : null,
      });
      setShowPaymentDialog(false);
      setShowCartDrawer(false);
      setShowReceiptDialog(true);
      setCashReceived('');
      clearCart();
      queryClient.invalidateQueries({ queryKey: ['products'] });
      queryClient.invalidateQueries({ queryKey: ['sales'] });
      queryClient.invalidateQueries({ queryKey: ['accounts-receivable'] });
      queryClient.invalidateQueries({ queryKey: ['accounts-receivable-summary'] });

      toast({
        title: 'Venda realizada!',
        description: `Recibo: ${saleData.receipt_number}`,
      });
    },
    onError: (error: Error) => {
      toast({
        title: 'Erro na venda',
        description: error.message,
        variant: 'destructive',
      });
    },
  });

  const handleSearch = useCallback(
    debounce((value: string) => {
      setSearchQuery(value);
    }, 300),
    []
  );

  const handleBarcodeSearch = useCallback(
    async (code: string) => {
      const product = productsData?.data?.find(
        (p: Product) => p.barcode === code || p.sku === code
      );

      if (product) {
        addItem(product, 1);
        toast({ title: 'Produto adicionado', description: product.name });
      } else {
        toast({
          title: 'Produto não encontrado',
          description: `Código: ${code}`,
          variant: 'destructive',
        });
      }
    },
    [productsData, addItem]
  );

  const handleFinalizeSale = () => {
    if (items.length === 0) {
      toast({
        title: 'Carrinho vazio',
        description: 'Adicione produtos ao carrinho para finalizar',
        variant: 'destructive',
      });
      return;
    }

    if (!paymentMethod) {
      toast({
        title: 'Forma de pagamento',
        description: 'Selecione uma forma de pagamento',
        variant: 'destructive',
      });
      return;
    }

    // Validação: "Receber Depois" requer cliente
    if (paymentMethod === 'pay_later' && !customer) {
      toast({
        title: 'Cliente obrigatório',
        description: 'Selecione um cliente para usar "Receber Depois"',
        variant: 'destructive',
      });
      return;
    }

    let paymentDetails: any = {};

    if (paymentMethod === 'cash') {
      const receivedValue = cashReceived.replace(',', '.').trim();
      if (!receivedValue || receivedValue === '' || parseFloat(receivedValue) <= 0) {
        toast({
          title: 'Valor obrigatório',
          description: 'Informe o valor recebido para pagamento em dinheiro',
          variant: 'destructive',
        });
        return;
      }
      const received = parseFloat(receivedValue) * 100;
      if (isNaN(received) || received < total) {
        toast({
          title: 'Valor insuficiente',
          description: 'O valor recebido é menor que o total',
          variant: 'destructive',
        });
        return;
      }
      paymentDetails = {
        amount_received: received,
        change_amount: received - total,
      };
    }

    const saleData = {
      customer_id: customer?.id,
      user_id: user?.id,
      items: items.map((item) => ({
        product_id: item.product.id,
        product_name: item.product.name,
        quantity: item.quantity,
        unit_price: item.unitPrice,
        unit: item.product.unit || 'un',
        discount_amount: item.discountAmount,
        discount_percent: item.discountPercent,
        notes: item.notes,
      })),
      discount_amount: discountTotal,
      payment_method: paymentMethod,
      payment_details: paymentDetails,
    };

    createSaleMutation.mutate(saleData);
  };

  useEffect(() => {
    if (window.innerWidth >= 1024) {
      searchInputRef.current?.focus();
    }
  }, []);

  useEffect(() => {
    let barcodeBuffer = '';
    let barcodeTimeout: NodeJS.Timeout;

    const handleKeyDown = (e: KeyboardEvent) => {
      if (
        document.activeElement?.tagName === 'INPUT' &&
        document.activeElement !== searchInputRef.current
      ) {
        return;
      }

      clearTimeout(barcodeTimeout);
      barcodeTimeout = setTimeout(() => {
        if (barcodeBuffer.length >= 8) {
          handleBarcodeSearch(barcodeBuffer);
        }
        barcodeBuffer = '';
      }, 50);

      if (e.key === 'Enter' && barcodeBuffer.length >= 8) {
        handleBarcodeSearch(barcodeBuffer);
        barcodeBuffer = '';
        return;
      }

      if (/^[a-zA-Z0-9]$/.test(e.key)) {
        barcodeBuffer += e.key;
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => {
      window.removeEventListener('keydown', handleKeyDown);
      clearTimeout(barcodeTimeout);
    };
  }, [handleBarcodeSearch]);

  const products = productsData?.data || [];
  const categories = categoriesData?.data || [];

  // Calcula o left baseado no estado real do sidebar
  const sidebarWidth = sidebarCollapsed ? 'lg:left-20' : 'lg:left-64';

  return (
    <div className={cn(
      "fixed inset-0 top-14 lg:top-16 flex flex-col lg:flex-row overflow-hidden bg-gray-100 dark:bg-gray-900 transition-all duration-300",
      sidebarWidth
    )}>
      {/* Área de Produtos */}
      <div className="flex-1 flex flex-col min-w-0 overflow-hidden">
        {/* Barra de Busca */}
        <div className="p-2 sm:p-3 bg-white dark:bg-gray-800 border-b dark:border-gray-700 shadow-sm flex-shrink-0">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-400" />
            <input
              ref={searchInputRef}
              type="text"
              placeholder="Buscar produto..."
              onChange={(e) => handleSearch(e.target.value)}
              className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent bg-white dark:bg-gray-700 dark:text-white dark:placeholder-gray-400"
            />
          </div>

          {/* Categorias */}
          {categories.length > 0 && (
            <div className="flex gap-2 mt-2 overflow-x-auto pb-1 -mx-2 px-2">
              <button
                onClick={() => setSelectedCategory(null)}
                className={cn(
                  'px-3 py-1.5 text-xs font-medium rounded-full whitespace-nowrap transition-colors',
                  selectedCategory === null
                    ? 'bg-blue-600 text-white'
                    : 'bg-gray-100 dark:bg-gray-700 text-gray-600 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-600'
                )}
              >
                Todos
              </button>
              {categories.map((cat: any) => (
                <button
                  key={cat.id}
                  onClick={() => setSelectedCategory(cat.id)}
                  className={cn(
                    'px-3 py-1.5 text-xs font-medium rounded-full whitespace-nowrap transition-colors',
                    selectedCategory === cat.id
                      ? 'bg-blue-600 text-white'
                      : 'bg-gray-100 dark:bg-gray-700 text-gray-600 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-600'
                  )}
                >
                  {cat.name}
                </button>
              ))}
            </div>
          )}
        </div>

        {/* Grid de Produtos */}
        <div className="flex-1 overflow-y-auto p-2 sm:p-3">
          {loadingProducts ? (
            <div className="flex items-center justify-center h-full">
              <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600" />
            </div>
          ) : products.length === 0 ? (
            <div className="flex flex-col items-center justify-center h-full text-gray-400">
              <Search className="h-12 w-12 mb-4" />
              <p>Nenhum produto encontrado</p>
            </div>
          ) : (
            <div className="grid grid-cols-3 xs:grid-cols-4 sm:grid-cols-5 md:grid-cols-6 lg:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-2">
              {products.map((product: Product) => (
                <ProductCard
                  key={product.id}
                  product={product}
                  onAdd={addItem}
                />
              ))}
            </div>
          )}
        </div>

        {/* Botão flutuante do carrinho - Mobile */}
        <div className="lg:hidden fixed bottom-4 right-4 z-30">
          <button
            onClick={() => setShowCartDrawer(true)}
            className="relative flex items-center gap-2 px-4 py-3 bg-blue-600 text-white rounded-full shadow-lg hover:bg-blue-700 transition-all"
          >
            <ShoppingBag className="h-5 w-5" />
            <span className="font-bold text-sm">{formatCurrency(total)}</span>
            {itemCount > 0 && (
              <span className="absolute -top-2 -right-2 w-6 h-6 bg-red-500 text-white text-xs font-bold rounded-full flex items-center justify-center">
                {itemCount}
              </span>
            )}
          </button>
        </div>
      </div>

      {/* Carrinho - Desktop */}
      <div className="hidden lg:flex w-80 flex-col bg-white dark:bg-gray-800 border-l dark:border-gray-700 shadow-lg flex-shrink-0">
        <CartContent
          items={items}
          customer={customer}
          subtotal={subtotal}
          discountTotal={discountTotal}
          total={total}
          itemCount={itemCount}
          onUpdateQuantity={updateItemQuantity}
          onRemove={removeItem}
          onClearCart={clearCart}
          onSelectCustomer={() => setShowCustomerDialog(true)}
          onRemoveCustomer={() => setCustomer(null)}
          onCheckout={() => setShowPaymentDialog(true)}
        />
      </div>

      {/* Carrinho Modal - Mobile (Full Screen) */}
      {showCartDrawer && (
        <div className="lg:hidden fixed inset-0 top-14 bg-white dark:bg-gray-900 flex flex-col" style={{ zIndex: 9999 }}>
          {/* Header fixo do modal */}
          <div className="flex items-center justify-between p-4 border-b dark:border-gray-700 bg-white dark:bg-gray-900 flex-shrink-0">
            <h2 className="text-xl font-bold dark:text-white">Carrinho</h2>
            <div className="flex items-center gap-3">
              {itemCount > 0 && (
                <button
                  className="text-sm text-red-500 hover:text-red-600 flex items-center gap-1"
                  onClick={clearCart}
                >
                  <Trash2 className="h-4 w-4" />
                  Limpar
                </button>
              )}
              <button
                onClick={() => setShowCartDrawer(false)}
                className="p-2 bg-gray-100 dark:bg-gray-700 hover:bg-gray-200 dark:hover:bg-gray-600 rounded-full"
              >
                <X className="h-6 w-6 dark:text-gray-300" />
              </button>
            </div>
          </div>

          {/* Cliente */}
          <div className="p-4 border-b dark:border-gray-700 flex-shrink-0">
            {customer ? (
              <div className="flex items-center justify-between p-3 bg-blue-50 dark:bg-blue-900/30 rounded-lg">
                <div className="flex items-center min-w-0">
                  <User className="h-5 w-5 mr-2 text-blue-600 dark:text-blue-400 flex-shrink-0" />
                  <span className="font-medium text-blue-700 dark:text-blue-300 truncate">{customer.name}</span>
                </div>
                <button className="p-1.5 hover:bg-blue-100 dark:hover:bg-blue-900/50 rounded" onClick={() => setCustomer(null)}>
                  <X className="h-5 w-5 text-blue-600 dark:text-blue-400" />
                </button>
              </div>
            ) : (
              <button
                className="w-full py-3 text-gray-600 dark:text-gray-400 border-2 border-dashed dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-800 flex items-center justify-center gap-2"
                onClick={() => setShowCustomerDialog(true)}
              >
                <User className="h-5 w-5" />
                Selecionar Cliente
              </button>
            )}
          </div>

          {/* Lista de itens */}
          <div className="flex-1 overflow-y-auto">
            {items.length === 0 ? (
              <div className="flex flex-col items-center justify-center h-full text-gray-400 dark:text-gray-500 p-4">
                <ShoppingBag className="h-16 w-16 mb-4" />
                <p className="text-lg">Carrinho vazio</p>
                <p className="text-sm mt-1">Adicione produtos para começar</p>
              </div>
            ) : (
              <div className="divide-y dark:divide-gray-700">
                {items.map((item) => (
                  <CartItemRow
                    key={item.id}
                    item={item}
                    onUpdateQuantity={updateItemQuantity}
                    onRemove={removeItem}
                  />
                ))}
              </div>
            )}
          </div>

          {/* Totais e botão finalizar */}
          <div className="p-4 border-t dark:border-gray-700 bg-gray-50 dark:bg-gray-800 flex-shrink-0">
            <div className="space-y-2 mb-4">
              <div className="flex justify-between text-gray-600 dark:text-gray-400">
                <span>Subtotal ({itemCount} itens)</span>
                <span>{formatCurrency(subtotal)}</span>
              </div>
              {discountTotal > 0 && (
                <div className="flex justify-between text-green-600 dark:text-green-400">
                  <span>Desconto</span>
                  <span>-{formatCurrency(discountTotal)}</span>
                </div>
              )}
              <div className="flex justify-between text-xl font-bold pt-2 border-t dark:border-gray-600 dark:text-white">
                <span>Total</span>
                <span className="text-blue-600 dark:text-blue-400">{formatCurrency(total)}</span>
              </div>
            </div>

            <button
              className="w-full py-4 bg-blue-600 text-white text-lg font-semibold rounded-xl disabled:opacity-50 disabled:cursor-not-allowed"
              disabled={items.length === 0}
              onClick={() => {
                setShowCartDrawer(false);
                setShowPaymentDialog(true);
              }}
            >
              Finalizar Venda
            </button>
          </div>
        </div>
      )}

      {/* Dialog de Pagamento */}
      {showPaymentDialog && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center" style={{ zIndex: 10000 }}>
          <div className="bg-white dark:bg-gray-800 w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b dark:border-gray-700 flex-shrink-0">
              <h2 className="text-lg font-semibold dark:text-white">Forma de Pagamento</h2>
              <button onClick={() => setShowPaymentDialog(false)} className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full">
                <X className="h-5 w-5 dark:text-gray-300" />
              </button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-4">
              <div className="text-center p-4 bg-gradient-to-br from-blue-50 to-purple-50 dark:from-blue-900/30 dark:to-purple-900/30 rounded-xl">
                <p className="text-sm text-gray-500 dark:text-gray-400">Total a pagar</p>
                <p className="text-3xl font-bold text-blue-600 dark:text-blue-400">{formatCurrency(total)}</p>
              </div>

              <div className="grid grid-cols-2 gap-2">
                <PaymentMethodButton method="cash" label="Dinheiro" icon={Banknote} selected={paymentMethod === 'cash'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="credit_card" label="Crédito" icon={CreditCard} selected={paymentMethod === 'credit_card'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="debit_card" label="Débito" icon={CreditCard} selected={paymentMethod === 'debit_card'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="pix" label="PIX" icon={Smartphone} selected={paymentMethod === 'pix'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="pay_later" label="Receber Depois" icon={Clock} selected={paymentMethod === 'pay_later'} onClick={setPaymentMethod} disabled={!customer} />
              </div>

              {!customer && (
                <div className="p-3 bg-gray-100 dark:bg-gray-700 border border-gray-200 dark:border-gray-600 rounded-lg">
                  <p className="text-sm text-gray-600 dark:text-gray-400">
                    <strong>Dica:</strong> Para usar "Receber Depois", selecione um cliente primeiro.
                  </p>
                </div>
              )}

              {paymentMethod === 'pay_later' && customer && (
                <div className="p-3 bg-yellow-50 dark:bg-yellow-900/30 border border-yellow-200 dark:border-yellow-700 rounded-lg">
                  <p className="text-sm text-yellow-800 dark:text-yellow-200">
                    <strong>Atenção:</strong> A venda ficará pendente para <strong>{customer.name}</strong> até o pagamento ser recebido.
                    Você poderá registrar o pagamento em Contas a Receber.
                  </p>
                </div>
              )}

              {paymentMethod === 'cash' && (
                <div className="space-y-2">
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">Valor Recebido *</label>
                  <input
                    type="text"
                    inputMode="decimal"
                    placeholder="0,00"
                    value={cashReceived}
                    onChange={(e) => setCashReceived(e.target.value)}
                    className="w-full px-3 py-2 text-right text-lg border border-gray-200 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 dark:bg-gray-700 dark:text-white"
                  />
                  {cashReceived && (
                    <div className="flex justify-between text-sm p-2 bg-green-50 dark:bg-green-900/30 rounded-lg">
                      <span className="text-green-700 dark:text-green-400">Troco:</span>
                      <span className="font-bold text-green-700 dark:text-green-400">
                        {formatCurrency(Math.max(0, parseFloat(cashReceived.replace(',', '.') || '0') * 100 - total))}
                      </span>
                    </div>
                  )}
                </div>
              )}
            </div>

            <div className="flex gap-3 p-4 border-t dark:border-gray-700 bg-gray-50 dark:bg-gray-900 flex-shrink-0">
              <button onClick={() => setShowPaymentDialog(false)} className="flex-1 py-3 bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-200 rounded-xl font-medium hover:bg-gray-300 dark:hover:bg-gray-600 transition-colors">
                Cancelar
              </button>
              <button
                onClick={handleFinalizeSale}
                disabled={!paymentMethod || createSaleMutation.isPending}
                className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium disabled:opacity-50 flex items-center justify-center gap-2"
              >
                {createSaleMutation.isPending ? (
                  <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white" />
                ) : (
                  <Check className="h-4 w-4" />
                )}
                Confirmar
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Dialog do Recibo */}
      {showReceiptDialog && lastSale && (
        <div className="fixed inset-0 bg-black/60 flex items-center justify-center p-4" style={{ zIndex: 10000 }}>
          <div className="bg-white dark:bg-gray-800 w-full max-w-sm rounded-2xl max-h-[85vh] overflow-hidden flex flex-col shadow-xl">
            <div className="flex items-center justify-between p-4 border-b dark:border-gray-700 flex-shrink-0">
              <h2 className="text-lg font-semibold text-green-600 dark:text-green-400">Venda Realizada!</h2>
              <button onClick={() => setShowReceiptDialog(false)} className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full">
                <X className="h-5 w-5 dark:text-gray-300" />
              </button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 font-mono text-sm dark:text-gray-200 print-receipt">
              <div className="text-center mb-4">
                {/* Logo da empresa */}
                {companySettings?.logo && (
                  <div className="flex justify-center mb-2">
                    <img
                      src={companySettings.logo}
                      alt="Logo"
                      className="max-h-16 max-w-[150px] object-contain"
                    />
                  </div>
                )}
                <h3 className="font-bold text-lg dark:text-white print:text-black">
                  {companySettings?.name || 'KAWAY POS'}
                </h3>
                {companySettings?.document && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.document}</p>
                )}
                {companySettings?.address && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.address}</p>
                )}
                {companySettings?.phone && (
                  <p className="text-[10px] text-gray-500 dark:text-gray-400">{companySettings.phone}</p>
                )}
                <p className="text-[10px] text-gray-400 dark:text-gray-500 mt-1">CUPOM NÃO FISCAL</p>
                <p className="text-xs mt-2">{new Date(lastSale.created_at).toLocaleString('pt-BR')}</p>
                <p className="text-xs font-medium">Recibo: {lastSale.receipt_number}</p>
              </div>

              {/* Cliente */}
              {lastSale.customer && (
                <>
                  <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />
                  <div className="text-xs space-y-0.5">
                    <div className="flex justify-between">
                      <span className="text-gray-500 dark:text-gray-400">Cliente:</span>
                      <span className="font-medium">{lastSale.customer.name}</span>
                    </div>
                    {lastSale.customer.address && (
                      <div className="flex justify-between">
                        <span className="text-gray-500 dark:text-gray-400">Endereço:</span>
                        <span className="text-right max-w-[60%] truncate">{lastSale.customer.address}</span>
                      </div>
                    )}
                    {lastSale.customer.phone && (
                      <div className="flex justify-between">
                        <span className="text-gray-500 dark:text-gray-400">Telefone:</span>
                        <span>{lastSale.customer.phone}</span>
                      </div>
                    )}
                  </div>
                </>
              )}

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              {/* Itens */}
              <div className="space-y-2">
                {lastSale.items?.map((item: any, index: number) => (
                  <div key={item.id}>
                    {index > 0 && <div className="border-t border-dotted border-gray-200 dark:border-gray-700 my-1" />}
                    <div className="text-xs">
                      <div className="font-medium truncate">{item.product_name}</div>
                      <div className="flex justify-between text-gray-600 dark:text-gray-400">
                        <span>{item.quantity} {item.unit || 'un'} x {formatCurrency(item.unit_price)}</span>
                        <span className="font-medium tabular-nums dark:text-gray-200">{formatCurrency(item.total)}</span>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />

              {/* Totais */}
              {lastSale.discount_amount > 0 && (
                <div className="flex justify-between text-xs mb-1">
                  <span>Subtotal:</span>
                  <span>{formatCurrency(lastSale.subtotal)}</span>
                </div>
              )}
              {lastSale.discount_amount > 0 && (
                <div className="flex justify-between text-xs text-green-600 dark:text-green-400 mb-1">
                  <span>Desconto:</span>
                  <span>-{formatCurrency(lastSale.discount_amount)}</span>
                </div>
              )}
              <div className="flex justify-between font-bold text-base dark:text-white">
                <span>TOTAL</span>
                <span>{formatCurrency(lastSale.total)}</span>
              </div>

              {/* Forma de Pagamento */}
              <div className="border-t border-dashed border-gray-300 dark:border-gray-600 my-3" />
              <div className="text-xs">
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Pagamento:</span>
                  <span className="font-medium">
                    {lastSale.payment_method === 'cash' && 'Dinheiro'}
                    {lastSale.payment_method === 'credit_card' && 'Cartão Crédito'}
                    {lastSale.payment_method === 'debit_card' && 'Cartão Débito'}
                    {lastSale.payment_method === 'pix' && 'PIX'}
                    {lastSale.payment_method === 'pay_later' && 'A Receber'}
                    {!['cash', 'credit_card', 'debit_card', 'pix', 'pay_later'].includes(lastSale.payment_method) && lastSale.payment_method}
                  </span>
                </div>
                {lastSale.payment_details?.amount_received && (
                  <>
                    <div className="flex justify-between mt-1">
                      <span className="text-gray-500 dark:text-gray-400">Recebido:</span>
                      <span>{formatCurrency(lastSale.payment_details.amount_received)}</span>
                    </div>
                    <div className="flex justify-between">
                      <span className="text-gray-500 dark:text-gray-400">Troco:</span>
                      <span>{formatCurrency(lastSale.payment_details.change_amount || 0)}</span>
                    </div>
                  </>
                )}
              </div>

              <div className="text-center text-xs text-gray-400 dark:text-gray-500 mt-4 pt-4 border-t border-dashed dark:border-gray-600">
                <p>Obrigado pela preferência!</p>
                <p className="text-[10px] mt-1">DOCUMENTO SEM VALOR FISCAL</p>
              </div>
            </div>

            <div className="flex gap-3 p-4 border-t dark:border-gray-700 bg-gray-50 dark:bg-gray-900 flex-shrink-0">
              <button className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium flex items-center justify-center gap-2 hover:bg-blue-700 transition-colors" onClick={() => window.print()}>
                <Printer className="h-4 w-4" />
                Imprimir
              </button>
              <button className="flex-1 py-3 bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-200 rounded-xl font-medium hover:bg-gray-300 dark:hover:bg-gray-600 transition-colors" onClick={() => setShowReceiptDialog(false)}>
                Nova Venda
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Dialog de Seleção de Cliente */}
      {showCustomerDialog && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center" style={{ zIndex: 10000 }}>
          <div className="bg-white dark:bg-gray-800 w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b dark:border-gray-700 flex-shrink-0">
              <h2 className="text-lg font-semibold dark:text-white">Selecionar Cliente</h2>
              <button onClick={() => { setShowCustomerDialog(false); setCustomerSearch(''); }} className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full">
                <X className="h-5 w-5 dark:text-gray-300" />
              </button>
            </div>

            <div className="p-4 border-b dark:border-gray-700 flex-shrink-0">
              <div className="relative">
                <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-400" />
                <input
                  type="text"
                  placeholder="Buscar cliente..."
                  value={customerSearch}
                  onChange={(e) => setCustomerSearch(e.target.value)}
                  className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400"
                />
              </div>
            </div>

            <div className="flex-1 overflow-y-auto p-4">
              {loadingCustomers ? (
                <div className="flex items-center justify-center py-8">
                  <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600" />
                </div>
              ) : customersData?.data?.length === 0 ? (
                <div className="text-center py-8 text-gray-400 dark:text-gray-500">
                  <User className="h-8 w-8 mx-auto mb-2" />
                  <p>Nenhum cliente encontrado</p>
                </div>
              ) : (
                <div className="space-y-2">
                  {customersData?.data?.map((c: Customer) => (
                    <button
                      key={c.id}
                      className="w-full p-3 text-left rounded-lg border dark:border-gray-600 hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                      onClick={() => {
                        setCustomer(c);
                        setShowCustomerDialog(false);
                        setCustomerSearch('');
                        toast({ title: 'Cliente selecionado', description: c.name });
                      }}
                    >
                      <p className="font-medium dark:text-white">{c.name}</p>
                      <p className="text-sm text-gray-500 dark:text-gray-400">{c.phone || c.email || c.document || 'Sem contato'}</p>
                    </button>
                  ))}
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

// =============================================================================
// COMPONENTE DO CONTEÚDO DO CARRINHO
// =============================================================================

function CartContent({
  items,
  customer,
  subtotal,
  discountTotal,
  total,
  itemCount,
  onUpdateQuantity,
  onRemove,
  onClearCart,
  onSelectCustomer,
  onRemoveCustomer,
  onCheckout,
  onClose,
  showCloseButton = false,
}: {
  items: any[];
  customer: Customer | null;
  subtotal: number;
  discountTotal: number;
  total: number;
  itemCount: number;
  onUpdateQuantity: (id: string, qty: number) => void;
  onRemove: (id: string) => void;
  onClearCart: () => void;
  onSelectCustomer: () => void;
  onRemoveCustomer: () => void;
  onCheckout: () => void;
  onClose?: () => void;
  showCloseButton?: boolean;
}) {
  return (
    <>
      {/* Header do Carrinho */}
      <div className="p-3 border-b dark:border-gray-700 flex-shrink-0">
        <div className="flex items-center justify-between">
          <h2 className="font-semibold text-lg dark:text-white">Carrinho</h2>
          <div className="flex items-center gap-2">
            {itemCount > 0 && (
              <button className="text-xs text-red-500 hover:text-red-600 flex items-center gap-1" onClick={onClearCart}>
                <Trash2 className="h-3 w-3" />
                Limpar
              </button>
            )}
            {showCloseButton && onClose && (
              <button
                onClick={onClose}
                className="p-2 bg-gray-100 dark:bg-gray-700 hover:bg-gray-200 dark:hover:bg-gray-600 rounded-full transition-colors"
                aria-label="Fechar carrinho"
              >
                <X className="h-5 w-5 text-gray-700 dark:text-gray-300" />
              </button>
            )}
          </div>
        </div>

        {/* Cliente */}
        <div className="mt-2">
          {customer ? (
            <div className="flex items-center justify-between p-2 bg-blue-50 dark:bg-blue-900/30 rounded-lg">
              <div className="flex items-center min-w-0">
                <User className="h-4 w-4 mr-2 text-blue-600 dark:text-blue-400 flex-shrink-0" />
                <span className="text-sm font-medium text-blue-700 dark:text-blue-300 truncate">{customer.name}</span>
              </div>
              <button className="p-1 hover:bg-blue-100 dark:hover:bg-blue-900/50 rounded flex-shrink-0" onClick={onRemoveCustomer}>
                <X className="h-4 w-4 text-blue-600 dark:text-blue-400" />
              </button>
            </div>
          ) : (
            <button className="w-full py-2 text-sm text-gray-600 dark:text-gray-400 border border-dashed dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700 flex items-center justify-center gap-2" onClick={onSelectCustomer}>
              <User className="h-4 w-4" />
              Selecionar Cliente
            </button>
          )}
        </div>
      </div>

      {/* Itens do Carrinho */}
      <div className="flex-1 overflow-y-auto min-h-0">
        {items.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-full text-gray-400 dark:text-gray-500 p-4">
            <ShoppingBag className="h-10 w-10 mb-2" />
            <p className="text-sm">Carrinho vazio</p>
          </div>
        ) : (
          items.map((item) => (
            <CartItemRow
              key={item.id}
              item={item}
              onUpdateQuantity={onUpdateQuantity}
              onRemove={onRemove}
            />
          ))
        )}
      </div>

      {/* Totais */}
      <div className="p-3 border-t dark:border-gray-700 bg-gray-50 dark:bg-gray-800 flex-shrink-0">
        <div className="space-y-1 text-sm">
          <div className="flex justify-between text-gray-600 dark:text-gray-400">
            <span>Subtotal ({itemCount} itens)</span>
            <span>{formatCurrency(subtotal)}</span>
          </div>
          {discountTotal > 0 && (
            <div className="flex justify-between text-green-600 dark:text-green-400">
              <span>Desconto</span>
              <span>-{formatCurrency(discountTotal)}</span>
            </div>
          )}
          <div className="flex justify-between text-lg font-bold pt-2 border-t dark:border-gray-600 dark:text-white">
            <span>Total</span>
            <span className="text-blue-600 dark:text-blue-400">{formatCurrency(total)}</span>
          </div>
        </div>

        <button
          className="w-full mt-3 py-3 bg-blue-600 text-white font-medium rounded-xl disabled:opacity-50 disabled:cursor-not-allowed"
          disabled={items.length === 0}
          onClick={onCheckout}
        >
          Finalizar Venda
        </button>
      </div>
    </>
  );
}
