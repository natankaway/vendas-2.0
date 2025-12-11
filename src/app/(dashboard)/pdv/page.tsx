/**
 * Página do PDV (Ponto de Venda)
 *
 * Esta é a interface principal de vendas do sistema.
 * Funciona 100% offline e sincroniza quando há conexão.
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

/**
 * Card de produto no grid
 */
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
        'flex flex-col items-center p-3 sm:p-4 bg-white rounded-xl border-2 border-transparent hover:border-blue-200 hover:shadow-md transition-all',
        isOutOfStock && 'opacity-50 cursor-not-allowed'
      )}
    >
      {product.image_url ? (
        <img
          src={product.image_url}
          alt={product.name}
          className="w-12 h-12 sm:w-16 sm:h-16 object-cover rounded-lg mb-2"
        />
      ) : (
        <div className="w-12 h-12 sm:w-16 sm:h-16 bg-gradient-to-br from-blue-100 to-purple-100 rounded-lg mb-2 flex items-center justify-center text-xl sm:text-2xl font-bold text-blue-600">
          {product.name.charAt(0).toUpperCase()}
        </div>
      )}

      <span className="text-xs sm:text-sm font-medium text-center truncate w-full text-gray-700">
        {product.name}
      </span>
      <span className="text-sm sm:text-lg font-bold text-blue-600">
        {formatCurrency(product.price)}
      </span>

      {isLowStock && !isOutOfStock && (
        <span className="text-[10px] sm:text-xs text-orange-500 font-medium">Estoque baixo</span>
      )}
      {isOutOfStock && (
        <span className="text-[10px] sm:text-xs text-red-500 font-medium">Sem estoque</span>
      )}
    </button>
  );
}

/**
 * Item no carrinho
 */
function CartItemRow({
  item,
  onUpdateQuantity,
  onRemove,
  compact = false,
}: {
  item: any;
  onUpdateQuantity: (id: string, qty: number) => void;
  onRemove: (id: string) => void;
  compact?: boolean;
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

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.currentTarget.blur();
    }
  };

  if (compact) {
    return (
      <div className="flex items-center gap-2 p-2 bg-gray-50 rounded-lg">
        <div className="flex-1 min-w-0">
          <p className="text-sm font-medium truncate">{item.product.name}</p>
          <p className="text-xs text-gray-500">
            {formatCurrency(item.unitPrice)} x {item.quantity}
          </p>
        </div>
        <span className="font-bold text-sm text-blue-600">{formatCurrency(item.total)}</span>
        <Button
          variant="ghost"
          size="icon"
          className="h-7 w-7 text-red-500"
          onClick={() => onRemove(item.id)}
        >
          <X className="h-4 w-4" />
        </Button>
      </div>
    );
  }

  return (
    <div className="flex items-center gap-2 p-3 border-b last:border-0">
      <div className="flex-1 min-w-0">
        <p className="font-medium truncate text-sm sm:text-base">{item.product.name}</p>
        <p className="text-xs sm:text-sm text-gray-500">
          {formatCurrency(item.unitPrice)} x {item.quantity}
        </p>
      </div>

      <div className="flex items-center gap-1">
        <Button
          variant="outline"
          size="icon"
          className="h-7 w-7 sm:h-8 sm:w-8"
          onClick={() => onUpdateQuantity(item.id, item.quantity - 1)}
        >
          <Minus className="h-3 w-3" />
        </Button>
        <input
          type="text"
          inputMode="numeric"
          value={inputValue}
          onChange={handleInputChange}
          onBlur={handleInputBlur}
          onKeyDown={handleKeyDown}
          className="w-10 sm:w-12 h-7 sm:h-8 text-center text-sm font-medium border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
        <Button
          variant="outline"
          size="icon"
          className="h-7 w-7 sm:h-8 sm:w-8"
          onClick={() => onUpdateQuantity(item.id, item.quantity + 1)}
        >
          <Plus className="h-3 w-3" />
        </Button>
      </div>

      <div className="flex items-center gap-1 sm:gap-2 ml-1 sm:ml-2">
        <span className="font-bold text-sm sm:text-base tabular-nums text-right min-w-[70px] sm:min-w-[90px]">
          {formatCurrency(item.total)}
        </span>
        <Button
          variant="ghost"
          size="icon"
          className="h-7 w-7 sm:h-8 sm:w-8 text-red-500"
          onClick={() => onRemove(item.id)}
        >
          <Trash2 className="h-4 w-4" />
        </Button>
      </div>
    </div>
  );
}

/**
 * Botão de forma de pagamento
 */
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
        'flex flex-col items-center justify-center p-3 sm:p-4 rounded-xl border-2 transition-all',
        selected
          ? 'border-blue-500 bg-blue-50 text-blue-600'
          : 'border-gray-200 hover:border-blue-300 hover:bg-gray-50'
      )}
    >
      <Icon className={cn('h-5 w-5 sm:h-6 sm:w-6 mb-1', selected && 'text-blue-600')} />
      <span className={cn('text-xs sm:text-sm', selected && 'font-medium')}>{label}</span>
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

  // Estado local
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState<string | null>(null);
  const [showPaymentDialog, setShowPaymentDialog] = useState(false);
  const [showReceiptDialog, setShowReceiptDialog] = useState(false);
  const [showCustomerDialog, setShowCustomerDialog] = useState(false);
  const [showCartDrawer, setShowCartDrawer] = useState(false);
  const [customerSearch, setCustomerSearch] = useState('');
  const [lastSale, setLastSale] = useState<any>(null);
  const [cashReceived, setCashReceived] = useState('');

  // Store do carrinho
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

  // Busca produtos da API
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

  // Busca categorias
  const { data: categoriesData } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const response = await fetch('/api/categorias');
      if (!response.ok) throw new Error('Erro ao buscar categorias');
      return response.json();
    },
    staleTime: 1000 * 60 * 5,
  });

  // Busca clientes
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

  // Mutation para criar venda
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

  // Handler de busca com debounce
  const handleSearch = useCallback(
    debounce((value: string) => {
      setSearchQuery(value);
    }, 300),
    []
  );

  // Handler para adicionar produto por código de barras
  const handleBarcodeSearch = useCallback(
    async (code: string) => {
      const product = productsData?.data?.find(
        (p: Product) => p.barcode === code || p.sku === code
      );

      if (product) {
        addItem(product, 1);
        toast({
          title: 'Produto adicionado',
          description: product.name,
        });
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

  // Handler para finalizar venda
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

  // Foco automático no campo de busca (apenas desktop)
  useEffect(() => {
    if (window.innerWidth >= 1024) {
      searchInputRef.current?.focus();
    }
  }, []);

  // Listener para leitor de código de barras
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
    <div className="h-[calc(100vh-8rem)] sm:h-[calc(100vh-7rem)] -m-4 lg:-m-6 flex flex-col lg:flex-row overflow-hidden">
      {/* Área de Produtos */}
      <div className="flex-1 flex flex-col overflow-hidden bg-gray-50">
        {/* Barra de Busca */}
        <div className="p-3 sm:p-4 bg-white border-b shadow-sm">
          <div className="flex gap-2 sm:gap-4">
            <div className="flex-1">
              <Input
                ref={searchInputRef}
                placeholder="Buscar produto..."
                leftIcon={<Search className="h-4 w-4" />}
                onChange={(e) => handleSearch(e.target.value)}
                className="text-base"
              />
            </div>
          </div>

          {/* Categorias */}
          {categories.length > 0 && (
            <div className="flex gap-2 mt-3 overflow-x-auto pb-1 scrollbar-thin">
              <Button
                variant={selectedCategory === null ? 'default' : 'outline'}
                size="sm"
                onClick={() => setSelectedCategory(null)}
                className="flex-shrink-0"
              >
                Todos
              </Button>
              {categories.map((cat: any) => (
                <Button
                  key={cat.id}
                  variant={selectedCategory === cat.id ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setSelectedCategory(cat.id)}
                  className="flex-shrink-0"
                >
                  {cat.name}
                </Button>
              ))}
            </div>
          )}
        </div>

        {/* Grid de Produtos */}
        <div className="flex-1 overflow-y-auto p-3 sm:p-4">
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
            <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-2 sm:gap-3">
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
            <span className="font-bold">{formatCurrency(total)}</span>
            {itemCount > 0 && (
              <span className="absolute -top-2 -right-2 w-6 h-6 bg-red-500 text-white text-xs font-bold rounded-full flex items-center justify-center">
                {itemCount}
              </span>
            )}
          </button>
        </div>
      </div>

      {/* Carrinho - Desktop */}
      <div className="hidden lg:flex w-80 xl:w-96 flex-col bg-white border-l shadow-lg">
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

      {/* Carrinho Drawer - Mobile */}
      {showCartDrawer && (
        <div className="lg:hidden fixed inset-0 z-50">
          <div
            className="absolute inset-0 bg-black/50"
            onClick={() => setShowCartDrawer(false)}
          />
          <div className="absolute inset-y-0 right-0 w-full sm:w-96 bg-white shadow-xl flex flex-col">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="text-lg font-semibold">Carrinho</h2>
              <Button variant="ghost" size="icon" onClick={() => setShowCartDrawer(false)}>
                <X className="h-5 w-5" />
              </Button>
            </div>
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
              onCheckout={() => {
                setShowCartDrawer(false);
                setShowPaymentDialog(true);
              }}
            />
          </div>
        </div>
      )}

      {/* Dialog de Pagamento */}
      <Dialog open={showPaymentDialog} onOpenChange={setShowPaymentDialog}>
        <DialogContent className="max-w-md mx-4">
          <DialogHeader>
            <DialogTitle>Forma de Pagamento</DialogTitle>
          </DialogHeader>

          <div className="space-y-4">
            <div className="text-center p-4 bg-gradient-to-br from-blue-50 to-purple-50 rounded-xl">
              <p className="text-sm text-gray-500">Total a pagar</p>
              <p className="text-3xl font-bold text-blue-600">{formatCurrency(total)}</p>
            </div>

            <div className="grid grid-cols-2 gap-2 sm:gap-3">
              <PaymentMethodButton
                method="cash"
                label="Dinheiro"
                icon={Banknote}
                selected={paymentMethod === 'cash'}
                onClick={setPaymentMethod}
              />
              <PaymentMethodButton
                method="credit_card"
                label="Crédito"
                icon={CreditCard}
                selected={paymentMethod === 'credit_card'}
                onClick={setPaymentMethod}
              />
              <PaymentMethodButton
                method="debit_card"
                label="Débito"
                icon={CreditCard}
                selected={paymentMethod === 'debit_card'}
                onClick={setPaymentMethod}
              />
              <PaymentMethodButton
                method="pix"
                label="PIX"
                icon={Smartphone}
                selected={paymentMethod === 'pix'}
                onClick={setPaymentMethod}
              />
            </div>

            {paymentMethod === 'cash' && (
              <div className="space-y-2">
                <Label>Valor Recebido</Label>
                <Input
                  type="text"
                  placeholder="0,00"
                  value={cashReceived}
                  onChange={(e) => setCashReceived(e.target.value)}
                  className="text-right text-lg"
                />
                {cashReceived && (
                  <div className="flex justify-between text-sm p-2 bg-green-50 rounded-lg">
                    <span className="text-green-700">Troco:</span>
                    <span className="font-bold text-green-700">
                      {formatCurrency(
                        Math.max(0, parseFloat(cashReceived.replace(',', '.')) * 100 - total)
                      )}
                    </span>
                  </div>
                )}
              </div>
            )}
          </div>

          <DialogFooter className="flex-col sm:flex-row gap-2">
            <Button variant="outline" onClick={() => setShowPaymentDialog(false)} className="w-full sm:w-auto">
              Cancelar
            </Button>
            <Button
              onClick={handleFinalizeSale}
              disabled={!paymentMethod || createSaleMutation.isPending}
              className="w-full sm:w-auto"
            >
              {createSaleMutation.isPending ? (
                <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white mr-2" />
              ) : (
                <Check className="h-4 w-4 mr-2" />
              )}
              Confirmar
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Dialog do Recibo */}
      <Dialog open={showReceiptDialog} onOpenChange={setShowReceiptDialog}>
        <DialogContent className="max-w-sm mx-4">
          <DialogHeader>
            <DialogTitle className="text-center text-green-600">Venda Realizada!</DialogTitle>
          </DialogHeader>

          {lastSale && (
            <div className="bg-white border rounded-lg p-4 font-mono text-sm">
              <div className="text-center border-b pb-3 mb-3">
                <h3 className="font-bold text-lg">VENDAS PDV</h3>
                <p className="text-[10px] text-gray-500">CUPOM NÃO FISCAL</p>
                <p className="text-xs mt-2">
                  {new Date(lastSale.created_at).toLocaleString('pt-BR')}
                </p>
                <p className="text-xs font-medium">Recibo: {lastSale.receipt_number}</p>
              </div>

              <div className="space-y-1 border-b pb-3 mb-3">
                {lastSale.items?.map((item: any) => (
                  <div key={item.id} className="flex justify-between text-xs">
                    <span className="truncate flex-1 mr-2">
                      {item.quantity}x {item.product_name}
                    </span>
                    <span className="tabular-nums">{formatCurrency(item.total)}</span>
                  </div>
                ))}
              </div>

              <div className="flex justify-between font-bold text-base">
                <span>TOTAL</span>
                <span>{formatCurrency(lastSale.total)}</span>
              </div>

              <div className="text-center text-xs text-gray-500 mt-3 pt-3 border-t">
                <p>Obrigado pela preferência!</p>
              </div>
            </div>
          )}

          <DialogFooter className="flex-col gap-2">
            <Button className="w-full" onClick={() => window.print()}>
              <Printer className="h-4 w-4 mr-2" />
              Imprimir
            </Button>
            <Button variant="outline" className="w-full" onClick={() => setShowReceiptDialog(false)}>
              Nova Venda
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Dialog de Seleção de Cliente */}
      <Dialog open={showCustomerDialog} onOpenChange={setShowCustomerDialog}>
        <DialogContent className="max-w-md mx-4">
          <DialogHeader>
            <DialogTitle>Selecionar Cliente</DialogTitle>
          </DialogHeader>

          <div className="space-y-4">
            <Input
              placeholder="Buscar por nome, telefone ou documento..."
              leftIcon={<Search className="h-4 w-4" />}
              value={customerSearch}
              onChange={(e) => setCustomerSearch(e.target.value)}
            />

            <div className="max-h-64 overflow-y-auto space-y-2">
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
                customersData?.data?.map((c: Customer) => (
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
                    <p className="text-sm text-gray-500">
                      {c.phone || c.email || c.document || 'Sem contato'}
                    </p>
                  </button>
                ))
              )}
            </div>
          </div>

          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => {
                setShowCustomerDialog(false);
                setCustomerSearch('');
              }}
            >
              Cancelar
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
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
}) {
  return (
    <>
      {/* Header do Carrinho */}
      <div className="p-4 border-b">
        <div className="flex items-center justify-between">
          <h2 className="text-lg font-semibold">Carrinho</h2>
          {itemCount > 0 && (
            <Button variant="ghost" size="sm" className="text-red-500" onClick={onClearCart}>
              <Trash2 className="h-4 w-4 mr-1" />
              Limpar
            </Button>
          )}
        </div>

        {/* Cliente */}
        <div className="mt-3">
          {customer ? (
            <div className="flex items-center justify-between p-2 bg-blue-50 rounded-lg">
              <div className="flex items-center">
                <User className="h-4 w-4 mr-2 text-blue-600" />
                <span className="text-sm font-medium text-blue-700">{customer.name}</span>
              </div>
              <Button variant="ghost" size="icon" className="h-7 w-7" onClick={onRemoveCustomer}>
                <X className="h-4 w-4" />
              </Button>
            </div>
          ) : (
            <Button variant="outline" className="w-full" onClick={onSelectCustomer}>
              <User className="h-4 w-4 mr-2" />
              Selecionar Cliente
            </Button>
          )}
        </div>
      </div>

      {/* Itens do Carrinho */}
      <div className="flex-1 overflow-y-auto">
        {items.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-full text-gray-400 p-4">
            <ShoppingBag className="h-12 w-12 mb-4" />
            <p>Carrinho vazio</p>
            <p className="text-sm">Adicione produtos para começar</p>
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
      <div className="p-4 border-t bg-gray-50">
        <div className="space-y-2">
          <div className="flex justify-between text-sm">
            <span className="text-gray-600">Subtotal ({itemCount} itens)</span>
            <span>{formatCurrency(subtotal)}</span>
          </div>
          {discountTotal > 0 && (
            <div className="flex justify-between text-sm text-green-600">
              <span>Desconto</span>
              <span>-{formatCurrency(discountTotal)}</span>
            </div>
          )}
          <div className="flex justify-between text-xl font-bold pt-2 border-t">
            <span>Total</span>
            <span className="text-blue-600">{formatCurrency(total)}</span>
          </div>
        </div>

        <Button
          className="w-full mt-4 h-12 text-base"
          size="lg"
          disabled={items.length === 0}
          onClick={onCheckout}
        >
          Finalizar Venda
        </Button>
      </div>
    </>
  );
}
