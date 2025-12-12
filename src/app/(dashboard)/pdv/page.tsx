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
        'flex flex-col items-center p-2 sm:p-3 bg-white rounded-lg border border-gray-100 hover:border-blue-200 hover:shadow-sm transition-all',
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

      <span className="text-[10px] sm:text-xs font-medium text-center line-clamp-2 w-full text-gray-700 leading-tight">
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
    <div className="flex items-center gap-2 p-2 sm:p-3 border-b last:border-0">
      <div className="flex-1 min-w-0">
        <p className="font-medium truncate text-sm">{item.product.name}</p>
        <p className="text-xs text-gray-500">
          {formatCurrency(item.unitPrice)} x {item.quantity}
        </p>
      </div>

      <div className="flex items-center gap-1 flex-shrink-0">
        <button
          className="w-7 h-7 flex items-center justify-center border rounded-md hover:bg-gray-50"
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
          className="w-8 h-7 text-center text-sm font-medium border rounded-md focus:outline-none focus:ring-1 focus:ring-blue-500"
        />
        <button
          className="w-7 h-7 flex items-center justify-center border rounded-md hover:bg-gray-50"
          onClick={() => onUpdateQuantity(item.id, item.quantity + 1)}
        >
          <Plus className="h-3 w-3" />
        </button>
      </div>

      <div className="flex items-center gap-1 flex-shrink-0">
        <span className="font-bold text-sm tabular-nums w-16 text-right">
          {formatCurrency(item.total)}
        </span>
        <button
          className="w-7 h-7 flex items-center justify-center text-red-500 hover:bg-red-50 rounded-md"
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
}: {
  method: PaymentMethod;
  label: string;
  icon: any;
  selected: boolean;
  onClick: (method: PaymentMethod) => void;
}) {
  return (
    <button
      onClick={() => onClick(method)}
      className={cn(
        'flex flex-col items-center justify-center p-3 rounded-xl border-2 transition-all',
        selected
          ? 'border-blue-500 bg-blue-50 text-blue-600'
          : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
      )}
    >
      <Icon className={cn('h-5 w-5 mb-1', selected && 'text-blue-600')} />
      <span className={cn('text-xs', selected && 'font-medium')}>{label}</span>
    </button>
  );
}

// =============================================================================
// PÁGINA PRINCIPAL
// =============================================================================

export default function PDVPage() {
  const queryClient = useQueryClient();
  const { user } = useAuthStore();
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
      setLastSale(saleData);
      setShowPaymentDialog(false);
      setShowCartDrawer(false);
      setShowReceiptDialog(true);
      clearCart();
      queryClient.invalidateQueries({ queryKey: ['products'] });
      queryClient.invalidateQueries({ queryKey: ['sales'] });

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

    let paymentDetails: any = {};

    if (paymentMethod === 'cash') {
      const received = parseFloat(cashReceived.replace(',', '.')) * 100;
      if (received < total) {
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

  return (
    <div className="fixed inset-0 top-14 lg:top-0 lg:left-64 flex flex-col lg:flex-row overflow-hidden bg-gray-100">
      {/* Área de Produtos */}
      <div className="flex-1 flex flex-col min-w-0 overflow-hidden">
        {/* Barra de Busca */}
        <div className="p-2 sm:p-3 bg-white border-b shadow-sm flex-shrink-0">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-400" />
            <input
              ref={searchInputRef}
              type="text"
              placeholder="Buscar produto..."
              onChange={(e) => handleSearch(e.target.value)}
              className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
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
                    : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
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
                      : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
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
      <div className="hidden lg:flex w-80 flex-col bg-white border-l shadow-lg flex-shrink-0">
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
        <div className="lg:hidden fixed inset-0 top-14 bg-white flex flex-col" style={{ zIndex: 9999 }}>
          {/* Header fixo do modal */}
          <div className="flex items-center justify-between p-4 border-b bg-white flex-shrink-0">
            <h2 className="text-xl font-bold">Carrinho</h2>
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
                className="p-2 bg-gray-100 hover:bg-gray-200 rounded-full"
              >
                <X className="h-6 w-6" />
              </button>
            </div>
          </div>

          {/* Cliente */}
          <div className="p-4 border-b flex-shrink-0">
            {customer ? (
              <div className="flex items-center justify-between p-3 bg-blue-50 rounded-lg">
                <div className="flex items-center min-w-0">
                  <User className="h-5 w-5 mr-2 text-blue-600 flex-shrink-0" />
                  <span className="font-medium text-blue-700 truncate">{customer.name}</span>
                </div>
                <button className="p-1.5 hover:bg-blue-100 rounded" onClick={() => setCustomer(null)}>
                  <X className="h-5 w-5 text-blue-600" />
                </button>
              </div>
            ) : (
              <button
                className="w-full py-3 text-gray-600 border-2 border-dashed rounded-lg hover:bg-gray-50 flex items-center justify-center gap-2"
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
              <div className="flex flex-col items-center justify-center h-full text-gray-400 p-4">
                <ShoppingBag className="h-16 w-16 mb-4" />
                <p className="text-lg">Carrinho vazio</p>
                <p className="text-sm mt-1">Adicione produtos para começar</p>
              </div>
            ) : (
              <div className="divide-y">
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
          <div className="p-4 border-t bg-gray-50 flex-shrink-0">
            <div className="space-y-2 mb-4">
              <div className="flex justify-between text-gray-600">
                <span>Subtotal ({itemCount} itens)</span>
                <span>{formatCurrency(subtotal)}</span>
              </div>
              {discountTotal > 0 && (
                <div className="flex justify-between text-green-600">
                  <span>Desconto</span>
                  <span>-{formatCurrency(discountTotal)}</span>
                </div>
              )}
              <div className="flex justify-between text-xl font-bold pt-2 border-t">
                <span>Total</span>
                <span className="text-blue-600">{formatCurrency(total)}</span>
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
          <div className="bg-white w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold">Forma de Pagamento</h2>
              <button onClick={() => setShowPaymentDialog(false)} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="h-5 w-5" />
              </button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-4">
              <div className="text-center p-4 bg-gradient-to-br from-blue-50 to-purple-50 rounded-xl">
                <p className="text-sm text-gray-500">Total a pagar</p>
                <p className="text-3xl font-bold text-blue-600">{formatCurrency(total)}</p>
              </div>

              <div className="grid grid-cols-2 gap-2">
                <PaymentMethodButton method="cash" label="Dinheiro" icon={Banknote} selected={paymentMethod === 'cash'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="credit_card" label="Crédito" icon={CreditCard} selected={paymentMethod === 'credit_card'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="debit_card" label="Débito" icon={CreditCard} selected={paymentMethod === 'debit_card'} onClick={setPaymentMethod} />
                <PaymentMethodButton method="pix" label="PIX" icon={Smartphone} selected={paymentMethod === 'pix'} onClick={setPaymentMethod} />
              </div>

              {paymentMethod === 'cash' && (
                <div className="space-y-2">
                  <label className="block text-sm font-medium text-gray-700">Valor Recebido</label>
                  <input
                    type="text"
                    inputMode="decimal"
                    placeholder="0,00"
                    value={cashReceived}
                    onChange={(e) => setCashReceived(e.target.value)}
                    className="w-full px-3 py-2 text-right text-lg border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                  />
                  {cashReceived && (
                    <div className="flex justify-between text-sm p-2 bg-green-50 rounded-lg">
                      <span className="text-green-700">Troco:</span>
                      <span className="font-bold text-green-700">
                        {formatCurrency(Math.max(0, parseFloat(cashReceived.replace(',', '.')) * 100 - total))}
                      </span>
                    </div>
                  )}
                </div>
              )}
            </div>

            <div className="flex gap-3 p-4 border-t bg-gray-50 flex-shrink-0">
              <button onClick={() => setShowPaymentDialog(false)} className="flex-1 py-3 bg-gray-200 text-gray-700 rounded-xl font-medium">
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
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center" style={{ zIndex: 10000 }}>
          <div className="bg-white w-full max-w-sm sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold text-green-600">Venda Realizada!</h2>
              <button onClick={() => setShowReceiptDialog(false)} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="h-5 w-5" />
              </button>
            </div>

            <div className="flex-1 overflow-y-auto p-4 font-mono text-sm">
              <div className="text-center mb-4">
                <h3 className="font-bold text-lg">VENDAS PDV</h3>
                <p className="text-[10px] text-gray-400">CUPOM NÃO FISCAL</p>
                <p className="text-xs mt-2">{new Date(lastSale.created_at).toLocaleString('pt-BR')}</p>
                <p className="text-xs font-medium">Recibo: {lastSale.receipt_number}</p>
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="space-y-1">
                {lastSale.items?.map((item: any) => (
                  <div key={item.id} className="flex justify-between text-xs">
                    <span className="truncate flex-1 mr-2">{item.quantity}x {item.product_name}</span>
                    <span className="tabular-nums">{formatCurrency(item.total)}</span>
                  </div>
                ))}
              </div>

              <div className="border-t border-dashed border-gray-300 my-4" />

              <div className="flex justify-between font-bold text-base">
                <span>TOTAL</span>
                <span>{formatCurrency(lastSale.total)}</span>
              </div>

              <div className="text-center text-xs text-gray-400 mt-4 pt-4 border-t border-dashed">
                <p>Obrigado pela preferência!</p>
              </div>
            </div>

            <div className="flex gap-3 p-4 border-t bg-gray-50 flex-shrink-0">
              <button className="flex-1 py-3 bg-blue-600 text-white rounded-xl font-medium flex items-center justify-center gap-2" onClick={() => window.print()}>
                <Printer className="h-4 w-4" />
                Imprimir
              </button>
              <button className="flex-1 py-3 bg-gray-200 text-gray-700 rounded-xl font-medium" onClick={() => setShowReceiptDialog(false)}>
                Nova Venda
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Dialog de Seleção de Cliente */}
      {showCustomerDialog && (
        <div className="fixed inset-0 bg-black/60 flex items-end sm:items-center justify-center" style={{ zIndex: 10000 }}>
          <div className="bg-white w-full max-w-md sm:rounded-2xl sm:m-4 max-h-[90vh] overflow-hidden flex flex-col rounded-t-2xl">
            <div className="flex items-center justify-between p-4 border-b flex-shrink-0">
              <h2 className="text-lg font-semibold">Selecionar Cliente</h2>
              <button onClick={() => { setShowCustomerDialog(false); setCustomerSearch(''); }} className="p-2 hover:bg-gray-100 rounded-full">
                <X className="h-5 w-5" />
              </button>
            </div>

            <div className="p-4 border-b flex-shrink-0">
              <div className="relative">
                <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-400" />
                <input
                  type="text"
                  placeholder="Buscar cliente..."
                  value={customerSearch}
                  onChange={(e) => setCustomerSearch(e.target.value)}
                  className="w-full pl-9 pr-3 py-2 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-blue-500"
                />
              </div>
            </div>

            <div className="flex-1 overflow-y-auto p-4">
              {loadingCustomers ? (
                <div className="flex items-center justify-center py-8">
                  <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-blue-600" />
                </div>
              ) : customersData?.data?.length === 0 ? (
                <div className="text-center py-8 text-gray-400">
                  <User className="h-8 w-8 mx-auto mb-2" />
                  <p>Nenhum cliente encontrado</p>
                </div>
              ) : (
                <div className="space-y-2">
                  {customersData?.data?.map((c: Customer) => (
                    <button
                      key={c.id}
                      className="w-full p-3 text-left rounded-lg border hover:bg-gray-50 transition-colors"
                      onClick={() => {
                        setCustomer(c);
                        setShowCustomerDialog(false);
                        setCustomerSearch('');
                        toast({ title: 'Cliente selecionado', description: c.name });
                      }}
                    >
                      <p className="font-medium">{c.name}</p>
                      <p className="text-sm text-gray-500">{c.phone || c.email || c.document || 'Sem contato'}</p>
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
      <div className="p-3 border-b flex-shrink-0">
        <div className="flex items-center justify-between">
          <h2 className="font-semibold text-lg">Carrinho</h2>
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
                className="p-2 bg-gray-100 hover:bg-gray-200 rounded-full transition-colors"
                aria-label="Fechar carrinho"
              >
                <X className="h-5 w-5 text-gray-700" />
              </button>
            )}
          </div>
        </div>

        {/* Cliente */}
        <div className="mt-2">
          {customer ? (
            <div className="flex items-center justify-between p-2 bg-blue-50 rounded-lg">
              <div className="flex items-center min-w-0">
                <User className="h-4 w-4 mr-2 text-blue-600 flex-shrink-0" />
                <span className="text-sm font-medium text-blue-700 truncate">{customer.name}</span>
              </div>
              <button className="p-1 hover:bg-blue-100 rounded flex-shrink-0" onClick={onRemoveCustomer}>
                <X className="h-4 w-4 text-blue-600" />
              </button>
            </div>
          ) : (
            <button className="w-full py-2 text-sm text-gray-600 border border-dashed rounded-lg hover:bg-gray-50 flex items-center justify-center gap-2" onClick={onSelectCustomer}>
              <User className="h-4 w-4" />
              Selecionar Cliente
            </button>
          )}
        </div>
      </div>

      {/* Itens do Carrinho */}
      <div className="flex-1 overflow-y-auto min-h-0">
        {items.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-full text-gray-400 p-4">
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
      <div className="p-3 border-t bg-gray-50 flex-shrink-0">
        <div className="space-y-1 text-sm">
          <div className="flex justify-between text-gray-600">
            <span>Subtotal ({itemCount} itens)</span>
            <span>{formatCurrency(subtotal)}</span>
          </div>
          {discountTotal > 0 && (
            <div className="flex justify-between text-green-600">
              <span>Desconto</span>
              <span>-{formatCurrency(discountTotal)}</span>
            </div>
          )}
          <div className="flex justify-between text-lg font-bold pt-2 border-t">
            <span>Total</span>
            <span className="text-blue-600">{formatCurrency(total)}</span>
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
