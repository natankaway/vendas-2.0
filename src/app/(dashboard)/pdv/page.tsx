/**
 * Página do PDV (Ponto de Venda)
 *
 * Esta é a interface principal de vendas do sistema.
 * Funciona 100% offline e sincroniza quando há conexão.
 *
 * Layout:
 * - Esquerda: Grid de produtos e busca
 * - Direita: Carrinho e finalização
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
  RotateCcw,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
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
        'pdv-product-card',
        isOutOfStock && 'opacity-50 cursor-not-allowed'
      )}
    >
      {product.image_url ? (
        <img
          src={product.image_url}
          alt={product.name}
          className="w-16 h-16 object-cover rounded-lg mb-2"
        />
      ) : (
        <div className="w-16 h-16 bg-muted rounded-lg mb-2 flex items-center justify-center text-2xl">
          {product.name.charAt(0).toUpperCase()}
        </div>
      )}

      <span className="text-sm font-medium text-center truncate w-full">
        {product.name}
      </span>
      <span className="text-lg font-bold text-primary">
        {formatCurrency(product.price)}
      </span>

      {isLowStock && !isOutOfStock && (
        <span className="text-xs text-warning">Estoque baixo</span>
      )}
      {isOutOfStock && (
        <span className="text-xs text-destructive">Sem estoque</span>
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
}: {
  item: any;
  onUpdateQuantity: (id: string, qty: number) => void;
  onRemove: (id: string) => void;
}) {
  const [inputValue, setInputValue] = useState(String(item.quantity));

  // Atualiza o input quando a quantidade muda externamente
  useEffect(() => {
    setInputValue(String(item.quantity));
  }, [item.quantity]);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    // Permite apenas números
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

  return (
    <div className="pdv-cart-item">
      <div className="flex-1 min-w-0">
        <p className="font-medium truncate">{item.product.name}</p>
        <p className="text-sm text-muted-foreground">
          {formatCurrency(item.unitPrice)} x {item.quantity}
        </p>
      </div>

      <div className="flex items-center gap-1">
        <Button
          variant="outline"
          size="icon-sm"
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
          className="w-12 h-8 text-center font-medium border rounded-md focus:outline-none focus:ring-2 focus:ring-primary focus:border-transparent"
        />
        <Button
          variant="outline"
          size="icon-sm"
          onClick={() => onUpdateQuantity(item.id, item.quantity + 1)}
        >
          <Plus className="h-3 w-3" />
        </Button>
      </div>

      <div className="flex items-center gap-2 ml-2">
        <span className="font-bold tabular-nums w-24 text-right">
          {formatCurrency(item.total)}
        </span>
        <Button
          variant="ghost"
          size="icon-sm"
          className="text-destructive"
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
        'flex flex-col items-center justify-center p-4 rounded-lg border-2 transition-all',
        selected
          ? 'border-primary bg-primary/10'
          : 'border-muted hover:border-primary/50'
      )}
    >
      <Icon className={cn('h-6 w-6 mb-1', selected && 'text-primary')} />
      <span className={cn('text-sm', selected && 'font-medium text-primary')}>
        {label}
      </span>
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
    setPaymentDetails,
    clearCart,
    getCartData,
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
    staleTime: 1000 * 60, // 1 minuto
  });

  // Busca categorias
  const { data: categoriesData } = useQuery({
    queryKey: ['categories'],
    queryFn: async () => {
      const response = await fetch('/api/categorias');
      if (!response.ok) throw new Error('Erro ao buscar categorias');
      return response.json();
    },
    staleTime: 1000 * 60 * 5, // 5 minutos
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
    staleTime: 1000 * 30, // 30 segundos
  });

  // Mutation para criar venda
  const createSaleMutation = useMutation({
    mutationFn: async (saleData: any) => {
      const response = await fetch('/api/vendas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(saleData),
      });

      if (!response.ok) {
        const error = await response.json();
        throw new Error(error.message || 'Erro ao criar venda');
      }

      return response.json();
    },
    onSuccess: (response) => {
      // A API retorna {success: true, data: {...}}
      const saleData = response.data;
      setLastSale(saleData);
      setShowPaymentDialog(false);
      setShowReceiptDialog(true);
      clearCart();
      queryClient.invalidateQueries({ queryKey: ['products'] });

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

    // Prepara dados do pagamento
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

    // Monta dados da venda
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

  // Foco automático no campo de busca
  useEffect(() => {
    searchInputRef.current?.focus();
  }, []);

  // Listener para leitor de código de barras
  useEffect(() => {
    let barcodeBuffer = '';
    let barcodeTimeout: NodeJS.Timeout;

    const handleKeyDown = (e: KeyboardEvent) => {
      // Ignora se estiver digitando em um input
      if (
        document.activeElement?.tagName === 'INPUT' &&
        document.activeElement !== searchInputRef.current
      ) {
        return;
      }

      // Limpa buffer após 50ms sem input (fim do código de barras)
      clearTimeout(barcodeTimeout);
      barcodeTimeout = setTimeout(() => {
        if (barcodeBuffer.length >= 8) {
          handleBarcodeSearch(barcodeBuffer);
        }
        barcodeBuffer = '';
      }, 50);

      // Enter = fim do código de barras
      if (e.key === 'Enter' && barcodeBuffer.length >= 8) {
        handleBarcodeSearch(barcodeBuffer);
        barcodeBuffer = '';
        return;
      }

      // Apenas números e letras
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
    <div className="pdv-container -m-4 lg:-m-6">
      <div className="flex flex-1 overflow-hidden">
        {/* Área de Produtos */}
        <div className="flex-1 flex flex-col overflow-hidden">
          {/* Barra de Busca */}
          <div className="p-4 bg-card border-b">
            <div className="flex gap-4">
              <div className="flex-1">
                <Input
                  ref={searchInputRef}
                  placeholder="Buscar produto por nome, código ou código de barras..."
                  leftIcon={<Search className="h-4 w-4" />}
                  onChange={(e) => handleSearch(e.target.value)}
                />
              </div>
            </div>

            {/* Categorias */}
            {categories.length > 0 && (
              <div className="flex gap-2 mt-3 overflow-x-auto pb-2 scrollbar-thin">
                <Button
                  variant={selectedCategory === null ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setSelectedCategory(null)}
                >
                  Todos
                </Button>
                {categories.map((cat: any) => (
                  <Button
                    key={cat.id}
                    variant={selectedCategory === cat.id ? 'default' : 'outline'}
                    size="sm"
                    onClick={() => setSelectedCategory(cat.id)}
                  >
                    {cat.name}
                  </Button>
                ))}
              </div>
            )}
          </div>

          {/* Grid de Produtos */}
          <div className="flex-1 overflow-y-auto p-4">
            {loadingProducts ? (
              <div className="flex items-center justify-center h-full">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary" />
              </div>
            ) : products.length === 0 ? (
              <div className="flex flex-col items-center justify-center h-full text-muted-foreground">
                <Search className="h-12 w-12 mb-4" />
                <p>Nenhum produto encontrado</p>
              </div>
            ) : (
              <div className="pdv-products-grid">
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
        </div>

        {/* Carrinho */}
        <div className="w-96 pdv-cart flex flex-col">
          {/* Header do Carrinho */}
          <div className="p-4 border-b">
            <div className="flex items-center justify-between">
              <h2 className="text-lg font-semibold">Carrinho</h2>
              {itemCount > 0 && (
                <Button
                  variant="ghost"
                  size="sm"
                  className="text-destructive"
                  onClick={clearCart}
                >
                  <Trash2 className="h-4 w-4 mr-1" />
                  Limpar
                </Button>
              )}
            </div>

            {/* Cliente */}
            <div className="mt-3">
              {customer ? (
                <div className="flex items-center justify-between p-2 bg-muted rounded-md">
                  <div className="flex items-center">
                    <User className="h-4 w-4 mr-2" />
                    <span className="text-sm font-medium">{customer.name}</span>
                  </div>
                  <Button
                    variant="ghost"
                    size="icon-sm"
                    onClick={() => setCustomer(null)}
                  >
                    <X className="h-4 w-4" />
                  </Button>
                </div>
              ) : (
                <Button
                  variant="outline"
                  className="w-full"
                  onClick={() => setShowCustomerDialog(true)}
                >
                  <User className="h-4 w-4 mr-2" />
                  Selecionar Cliente
                </Button>
              )}
            </div>
          </div>

          {/* Itens do Carrinho */}
          <div className="flex-1 overflow-y-auto">
            {items.length === 0 ? (
              <div className="flex flex-col items-center justify-center h-full text-muted-foreground p-4">
                <ShoppingCart className="h-12 w-12 mb-4" />
                <p>Carrinho vazio</p>
                <p className="text-sm">Adicione produtos para começar</p>
              </div>
            ) : (
              items.map((item) => (
                <CartItemRow
                  key={item.id}
                  item={item}
                  onUpdateQuantity={updateItemQuantity}
                  onRemove={removeItem}
                />
              ))
            )}
          </div>

          {/* Totais */}
          <div className="p-4 border-t bg-muted/50">
            <div className="space-y-2">
              <div className="flex justify-between text-sm">
                <span>Subtotal ({itemCount} itens)</span>
                <span>{formatCurrency(subtotal)}</span>
              </div>
              {discountTotal > 0 && (
                <div className="flex justify-between text-sm text-success">
                  <span>Desconto</span>
                  <span>-{formatCurrency(discountTotal)}</span>
                </div>
              )}
              <div className="flex justify-between text-xl font-bold pt-2 border-t">
                <span>Total</span>
                <span className="text-primary">{formatCurrency(total)}</span>
              </div>
            </div>

            <Button
              className="w-full mt-4"
              size="lg"
              disabled={items.length === 0}
              onClick={() => setShowPaymentDialog(true)}
            >
              Finalizar Venda
            </Button>
          </div>
        </div>
      </div>

      {/* Dialog de Pagamento */}
      <Dialog open={showPaymentDialog} onOpenChange={setShowPaymentDialog}>
        <DialogContent className="max-w-md">
          <DialogHeader>
            <DialogTitle>Forma de Pagamento</DialogTitle>
          </DialogHeader>

          <div className="space-y-4">
            {/* Total */}
            <div className="text-center p-4 bg-muted rounded-lg">
              <p className="text-sm text-muted-foreground">Total a pagar</p>
              <p className="text-3xl font-bold text-primary">
                {formatCurrency(total)}
              </p>
            </div>

            {/* Formas de Pagamento */}
            <div className="grid grid-cols-2 gap-3">
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

            {/* Campo de valor recebido (dinheiro) */}
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
                  <div className="flex justify-between text-sm">
                    <span>Troco:</span>
                    <span className="font-bold">
                      {formatCurrency(
                        Math.max(
                          0,
                          parseFloat(cashReceived.replace(',', '.')) * 100 - total
                        )
                      )}
                    </span>
                  </div>
                )}
              </div>
            )}
          </div>

          <DialogFooter>
            <Button variant="outline" onClick={() => setShowPaymentDialog(false)}>
              Cancelar
            </Button>
            <Button
              onClick={handleFinalizeSale}
              loading={createSaleMutation.isPending}
              disabled={!paymentMethod}
            >
              <Check className="h-4 w-4 mr-2" />
              Confirmar
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Dialog do Recibo */}
      <Dialog open={showReceiptDialog} onOpenChange={setShowReceiptDialog}>
        <DialogContent className="max-w-sm">
          <DialogHeader>
            <DialogTitle>Venda Realizada!</DialogTitle>
          </DialogHeader>

          {lastSale && (
            <div className="receipt">
              <div className="receipt-header">
                <h3 className="font-bold text-lg">VENDAS PDV</h3>
                <p className="text-xs">CUPOM NÃO FISCAL</p>
                <p className="text-xs mt-2">
                  {new Date(lastSale.created_at).toLocaleString('pt-BR')}
                </p>
                <p className="text-xs">Recibo: {lastSale.receipt_number}</p>
              </div>

              <div className="space-y-1">
                {lastSale.items?.map((item: any) => (
                  <div key={item.id} className="receipt-item">
                    <span className="truncate">
                      {item.quantity}x {item.product_name}
                    </span>
                    <span className="tabular-nums">
                      {formatCurrency(item.total)}
                    </span>
                  </div>
                ))}
              </div>

              <div className="receipt-total">
                <span>TOTAL</span>
                <span>{formatCurrency(lastSale.total)}</span>
              </div>

              <div className="receipt-footer">
                <p>Obrigado pela preferência!</p>
              </div>
            </div>
          )}

          <DialogFooter className="flex-col gap-2">
            <Button
              className="w-full"
              onClick={() => {
                // TODO: Implementar impressão
                window.print();
              }}
            >
              <Printer className="h-4 w-4 mr-2" />
              Imprimir
            </Button>
            <Button
              variant="outline"
              className="w-full"
              onClick={() => setShowReceiptDialog(false)}
            >
              Nova Venda
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Dialog de Seleção de Cliente */}
      <Dialog open={showCustomerDialog} onOpenChange={setShowCustomerDialog}>
        <DialogContent className="max-w-md">
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
                  <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-primary" />
                </div>
              ) : customersData?.data?.length === 0 ? (
                <div className="text-center py-8 text-muted-foreground">
                  <User className="h-8 w-8 mx-auto mb-2" />
                  <p>Nenhum cliente encontrado</p>
                </div>
              ) : (
                customersData?.data?.map((c: Customer) => (
                  <button
                    key={c.id}
                    className="w-full p-3 text-left rounded-lg border hover:bg-muted transition-colors"
                    onClick={() => {
                      setCustomer(c);
                      setShowCustomerDialog(false);
                      setCustomerSearch('');
                      toast({
                        title: 'Cliente selecionado',
                        description: c.name,
                      });
                    }}
                  >
                    <p className="font-medium">{c.name}</p>
                    <p className="text-sm text-muted-foreground">
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

// Ícone do ShoppingCart para uso no componente
function ShoppingCart({ className }: { className?: string }) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2"
      strokeLinecap="round"
      strokeLinejoin="round"
      className={className}
    >
      <circle cx="8" cy="21" r="1" />
      <circle cx="19" cy="21" r="1" />
      <path d="M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12" />
    </svg>
  );
}
