/**
 * Tipos globais do sistema de PDV
 *
 * Este arquivo contém todas as definições de tipos usadas no sistema.
 * Centralizar tipos aqui facilita manutenção e garante consistência.
 */

// =============================================================================
// TIPOS BASE
// =============================================================================

/**
 * Tipo base para todas as entidades do sistema
 * Todos os registros têm esses campos para controle de sincronização
 */
export interface BaseEntity {
  id: string; // UUID v4 - gerado no cliente para evitar conflitos
  created_at: string; // ISO timestamp
  updated_at: string; // ISO timestamp
  deleted_at: string | null; // Soft delete para sincronização
  version: number; // Versão para controle de conflitos
  synced_at: string | null; // Última sincronização com Supabase
  local_only: boolean; // True se ainda não foi sincronizado
}

// =============================================================================
// USUÁRIOS E AUTENTICAÇÃO
// =============================================================================

/**
 * Roles disponíveis no sistema
 * - admin: Acesso total, pode gerenciar usuários e configurações
 * - manager: Pode gerenciar produtos, clientes e ver relatórios
 * - cashier: Apenas operações de PDV
 */
export type UserRole = 'admin' | 'manager' | 'cashier';

/**
 * Status do usuário no sistema
 */
export type UserStatus = 'active' | 'inactive' | 'pending';

/**
 * Entidade de usuário
 */
export interface User extends BaseEntity {
  email: string;
  name: string;
  role: UserRole;
  status: UserStatus;
  avatar_url: string | null;
  phone: string | null;
  last_login_at: string | null;
  // Hash da senha para autenticação offline
  password_hash: string | null;
}

/**
 * Dados para criação de usuário
 */
export interface CreateUserInput {
  email: string;
  name: string;
  password: string;
  role: UserRole;
  phone?: string;
}

/**
 * Dados para atualização de usuário
 */
export interface UpdateUserInput {
  name?: string;
  role?: UserRole;
  status?: UserStatus;
  phone?: string;
  avatar_url?: string;
}

/**
 * Sessão do usuário (armazenada localmente)
 */
export interface UserSession {
  user: User;
  access_token: string;
  refresh_token: string;
  expires_at: number;
}

// =============================================================================
// CLIENTES
// =============================================================================

/**
 * Entidade de cliente
 */
export interface Customer extends BaseEntity {
  name: string;
  email: string | null;
  phone: string | null;
  document: string | null; // CPF/CNPJ
  document_type: 'cpf' | 'cnpj' | null;
  address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  notes: string | null;
  credit_limit: number;
  current_balance: number; // Saldo devedor
  total_purchases: number; // Total de compras realizadas
  last_purchase_at: string | null;
}

/**
 * Dados para criação de cliente
 */
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

/**
 * Dados para atualização de cliente
 */
export interface UpdateCustomerInput extends Partial<CreateCustomerInput> {}

// =============================================================================
// PRODUTOS
// =============================================================================

/**
 * Categorias de produtos
 */
export interface ProductCategory extends BaseEntity {
  name: string;
  description: string | null;
  color: string | null; // Cor para exibição no PDV
  icon: string | null;
  parent_id: string | null; // Para subcategorias
  sort_order: number;
}

/**
 * Entidade de produto
 */
export interface Product extends BaseEntity {
  name: string;
  description: string | null;
  sku: string; // Código interno único
  barcode: string | null; // Código de barras EAN
  category_id: string | null;
  price: number; // Preço de venda em centavos
  cost_price: number; // Preço de custo em centavos
  stock_quantity: number;
  min_stock_quantity: number; // Alerta de estoque mínimo
  max_stock_quantity: number | null;
  unit: string; // UN, KG, L, etc
  is_active: boolean;
  is_weighable: boolean; // Produto pesável (balança)
  allow_decimal_quantity: boolean;
  tax_rate: number; // Taxa de imposto em %
  image_url: string | null;
}

/**
 * Dados para criação de produto
 */
export interface CreateProductInput {
  name: string;
  description?: string;
  sku: string;
  barcode?: string;
  category_id?: string;
  price: number;
  cost_price?: number;
  stock_quantity?: number;
  min_stock_quantity?: number;
  max_stock_quantity?: number;
  unit?: string;
  is_weighable?: boolean;
  allow_decimal_quantity?: boolean;
  tax_rate?: number;
  image_url?: string;
}

/**
 * Dados para atualização de produto
 */
export interface UpdateProductInput extends Partial<Omit<CreateProductInput, 'sku'>> {
  is_active?: boolean;
}

/**
 * Movimentação de estoque
 */
export interface StockMovement extends BaseEntity {
  product_id: string;
  quantity: number; // Positivo para entrada, negativo para saída
  type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
  reason: string | null;
  reference_id: string | null; // ID da venda, compra, etc
  unit_cost: number | null;
  user_id: string;
}

// =============================================================================
// VENDAS
// =============================================================================

/**
 * Status da venda
 */
export type SaleStatus = 'pending' | 'completed' | 'cancelled' | 'refunded';

/**
 * Formas de pagamento
 */
export type PaymentMethod =
  | 'cash'
  | 'credit_card'
  | 'debit_card'
  | 'pix'
  | 'bank_transfer'
  | 'store_credit'
  | 'other';

/**
 * Entidade de venda
 */
export interface Sale extends BaseEntity {
  customer_id: string | null;
  user_id: string; // Operador que realizou a venda
  status: SaleStatus;
  subtotal: number; // Em centavos
  discount_amount: number;
  discount_percent: number;
  tax_amount: number;
  total: number;
  payment_method: PaymentMethod;
  payment_details: PaymentDetails | null;
  notes: string | null;
  receipt_number: string;
  completed_at: string | null;
}

/**
 * Detalhes do pagamento
 */
export interface PaymentDetails {
  // Para cartão
  card_brand?: string;
  card_last_digits?: string;
  installments?: number;
  authorization_code?: string;

  // Para PIX
  pix_key?: string;
  pix_transaction_id?: string;

  // Para dinheiro
  amount_received?: number;
  change_amount?: number;

  // Para múltiplos pagamentos
  payments?: Array<{
    method: PaymentMethod;
    amount: number;
    details?: Partial<PaymentDetails>;
  }>;
}

/**
 * Item de venda
 */
export interface SaleItem extends BaseEntity {
  sale_id: string;
  product_id: string;
  product_name: string; // Snapshot do nome no momento da venda
  product_sku: string;
  quantity: number;
  unit_price: number; // Preço unitário em centavos
  discount_amount: number;
  discount_percent: number;
  tax_amount: number;
  total: number;
  notes: string | null;
}

/**
 * Dados para criação de venda
 */
export interface CreateSaleInput {
  customer_id?: string;
  items: CreateSaleItemInput[];
  discount_amount?: number;
  discount_percent?: number;
  payment_method: PaymentMethod;
  payment_details?: PaymentDetails;
  notes?: string;
}

/**
 * Dados para item de venda
 */
export interface CreateSaleItemInput {
  product_id: string;
  quantity: number;
  unit_price?: number; // Se não informado, usa o preço do produto
  discount_amount?: number;
  discount_percent?: number;
  notes?: string;
}

// =============================================================================
// SINCRONIZAÇÃO
// =============================================================================

/**
 * Status de sincronização
 */
export type SyncStatus = 'pending' | 'syncing' | 'completed' | 'failed' | 'conflict';

/**
 * Tipo de operação na fila de sincronização
 */
export type SyncOperationType = 'create' | 'update' | 'delete';

/**
 * Entidade na fila de sincronização
 */
export interface SyncQueueItem {
  id: string;
  entity_type: string; // Nome da tabela
  entity_id: string; // ID do registro
  operation: SyncOperationType;
  data: Record<string, unknown>; // Dados da operação
  status: SyncStatus;
  attempts: number;
  last_attempt_at: string | null;
  error_message: string | null;
  created_at: string;
  priority: number; // Maior = mais prioritário
}

/**
 * Log de sincronização
 */
export interface SyncLog {
  id: string;
  started_at: string;
  completed_at: string | null;
  status: 'running' | 'completed' | 'failed';
  items_processed: number;
  items_succeeded: number;
  items_failed: number;
  error_message: string | null;
  details: SyncLogDetail[];
}

/**
 * Detalhe do log de sincronização
 */
export interface SyncLogDetail {
  entity_type: string;
  entity_id: string;
  operation: SyncOperationType;
  status: 'success' | 'failed' | 'conflict';
  error_message: string | null;
  resolved_at: string | null;
  resolution: 'local_wins' | 'remote_wins' | 'merged' | null;
}

/**
 * Conflito de sincronização
 */
export interface SyncConflict {
  id: string;
  entity_type: string;
  entity_id: string;
  local_data: Record<string, unknown>;
  remote_data: Record<string, unknown>;
  local_updated_at: string;
  remote_updated_at: string;
  created_at: string;
  resolved_at: string | null;
  resolution: 'local_wins' | 'remote_wins' | 'merged' | 'manual' | null;
  resolved_data: Record<string, unknown> | null;
}

// =============================================================================
// RELATÓRIOS
// =============================================================================

/**
 * Período para relatórios
 */
export interface DateRange {
  start: string; // ISO date
  end: string;
}

/**
 * Resumo de vendas
 */
export interface SalesSummary {
  period: DateRange;
  total_sales: number;
  total_revenue: number;
  total_discount: number;
  total_tax: number;
  average_ticket: number;
  sales_by_payment_method: Record<PaymentMethod, { count: number; total: number }>;
  sales_by_day: Array<{ date: string; count: number; total: number }>;
  sales_by_hour: Array<{ hour: number; count: number; total: number }>;
}

/**
 * Relatório de produtos mais vendidos
 */
export interface TopProductsReport {
  period: DateRange;
  products: Array<{
    product_id: string;
    product_name: string;
    product_sku: string;
    quantity_sold: number;
    total_revenue: number;
    average_price: number;
  }>;
}

/**
 * Relatório de estoque
 */
export interface StockReport {
  total_products: number;
  total_stock_value: number;
  low_stock_products: Product[];
  out_of_stock_products: Product[];
  stock_movements: StockMovement[];
}

// =============================================================================
// UI E ESTADO
// =============================================================================

/**
 * Estado de conexão
 */
export type ConnectionStatus = 'online' | 'offline' | 'syncing';

/**
 * Item do carrinho no PDV
 */
export interface CartItem {
  id: string; // ID temporário do item no carrinho
  product: Product;
  quantity: number;
  unit_price: number;
  discount_amount: number;
  discount_percent: number;
  notes: string | null;
  total: number;
}

/**
 * Estado do carrinho
 */
export interface CartState {
  items: CartItem[];
  customer: Customer | null;
  subtotal: number;
  discount_amount: number;
  discount_percent: number;
  tax_amount: number;
  total: number;
}

/**
 * Notificação do sistema
 */
export interface Notification {
  id: string;
  type: 'success' | 'error' | 'warning' | 'info';
  title: string;
  message: string;
  duration?: number; // ms, 0 para persistente
  action?: {
    label: string;
    onClick: () => void;
  };
}

/**
 * Configurações da aplicação
 */
export interface AppSettings {
  company_name: string;
  company_document: string;
  company_address: string;
  company_phone: string;
  company_logo_url: string | null;
  receipt_header: string;
  receipt_footer: string;
  tax_rate: number;
  currency: string;
  locale: string;
  timezone: string;
  low_stock_alert: boolean;
  auto_sync: boolean;
  sync_interval: number; // ms
  offline_mode_enabled: boolean;
}

// =============================================================================
// RESPOSTAS DA API
// =============================================================================

/**
 * Resposta padrão da API
 */
export interface ApiResponse<T> {
  success: boolean;
  data?: T;
  error?: {
    code: string;
    message: string;
    details?: Record<string, unknown>;
  };
  meta?: {
    total?: number;
    page?: number;
    limit?: number;
    has_more?: boolean;
  };
}

/**
 * Parâmetros de paginação
 */
export interface PaginationParams {
  page?: number;
  limit?: number;
  sort_by?: string;
  sort_order?: 'asc' | 'desc';
}

/**
 * Parâmetros de filtro genéricos
 */
export interface FilterParams {
  search?: string;
  created_after?: string;
  created_before?: string;
  updated_after?: string;
  updated_before?: string;
}

// =============================================================================
// UTILITÁRIOS DE TIPO
// =============================================================================

/**
 * Torna campos específicos opcionais
 */
export type PartialBy<T, K extends keyof T> = Omit<T, K> & Partial<Pick<T, K>>;

/**
 * Torna campos específicos obrigatórios
 */
export type RequiredBy<T, K extends keyof T> = Omit<T, K> & Required<Pick<T, K>>;

/**
 * Remove campos de BaseEntity para inputs
 */
export type WithoutBase<T extends BaseEntity> = Omit<
  T,
  keyof BaseEntity
>;

/**
 * Tipo para resultado de query que pode vir do cache ou do servidor
 */
export interface QueryResult<T> {
  data: T;
  source: 'cache' | 'local' | 'remote';
  stale: boolean;
  synced_at: string | null;
}
