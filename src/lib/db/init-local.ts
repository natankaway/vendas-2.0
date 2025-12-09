/**
 * Inicialização do Banco SQLite Local
 *
 * Este script cria as tabelas necessárias no banco SQLite local.
 * É executado automaticamente no postinstall e pode ser executado manualmente.
 *
 * Uso: npm run db:init-local
 */

import Database from 'better-sqlite3';
import path from 'path';
import fs from 'fs';

/**
 * SQL para criação das tabelas
 *
 * Mantém a mesma estrutura do Postgres, adaptada para SQLite.
 */
const CREATE_TABLES_SQL = `
-- =============================================================================
-- TABELA DE USUÁRIOS
-- =============================================================================
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  password_hash TEXT,
  role TEXT NOT NULL DEFAULT 'cashier' CHECK(role IN ('admin', 'manager', 'cashier')),
  status TEXT NOT NULL DEFAULT 'active' CHECK(status IN ('active', 'inactive', 'pending')),
  avatar_url TEXT,
  phone TEXT,
  last_login_at TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS users_email_idx ON users(email);
CREATE INDEX IF NOT EXISTS users_role_idx ON users(role);
CREATE INDEX IF NOT EXISTS users_status_idx ON users(status);

-- =============================================================================
-- TABELA DE CLIENTES
-- =============================================================================
CREATE TABLE IF NOT EXISTS customers (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  phone TEXT,
  document TEXT,
  document_type TEXT CHECK(document_type IN ('cpf', 'cnpj') OR document_type IS NULL),
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  notes TEXT,
  credit_limit INTEGER NOT NULL DEFAULT 0,
  current_balance INTEGER NOT NULL DEFAULT 0,
  total_purchases INTEGER NOT NULL DEFAULT 0,
  last_purchase_at TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS customers_name_idx ON customers(name);
CREATE INDEX IF NOT EXISTS customers_phone_idx ON customers(phone);
CREATE INDEX IF NOT EXISTS customers_document_idx ON customers(document);
CREATE INDEX IF NOT EXISTS customers_email_idx ON customers(email);

-- =============================================================================
-- TABELA DE CATEGORIAS DE PRODUTOS
-- =============================================================================
CREATE TABLE IF NOT EXISTS product_categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT,
  parent_id TEXT REFERENCES product_categories(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS categories_name_idx ON product_categories(name);
CREATE INDEX IF NOT EXISTS categories_parent_idx ON product_categories(parent_id);

-- =============================================================================
-- TABELA DE PRODUTOS
-- =============================================================================
CREATE TABLE IF NOT EXISTS products (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  sku TEXT NOT NULL UNIQUE,
  barcode TEXT,
  category_id TEXT REFERENCES product_categories(id),
  price INTEGER NOT NULL,
  cost_price INTEGER NOT NULL DEFAULT 0,
  stock_quantity REAL NOT NULL DEFAULT 0,
  min_stock_quantity REAL NOT NULL DEFAULT 0,
  max_stock_quantity REAL,
  unit TEXT NOT NULL DEFAULT 'UN',
  is_active INTEGER NOT NULL DEFAULT 1,
  is_weighable INTEGER NOT NULL DEFAULT 0,
  allow_decimal_quantity INTEGER NOT NULL DEFAULT 0,
  tax_rate REAL NOT NULL DEFAULT 0,
  image_url TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS products_name_idx ON products(name);
CREATE INDEX IF NOT EXISTS products_sku_idx ON products(sku);
CREATE INDEX IF NOT EXISTS products_barcode_idx ON products(barcode);
CREATE INDEX IF NOT EXISTS products_category_idx ON products(category_id);
CREATE INDEX IF NOT EXISTS products_active_idx ON products(is_active);

-- =============================================================================
-- TABELA DE MOVIMENTAÇÕES DE ESTOQUE
-- =============================================================================
CREATE TABLE IF NOT EXISTS stock_movements (
  id TEXT PRIMARY KEY,
  product_id TEXT NOT NULL REFERENCES products(id),
  quantity REAL NOT NULL,
  type TEXT NOT NULL CHECK(type IN ('purchase', 'sale', 'adjustment', 'return', 'loss')),
  reason TEXT,
  reference_id TEXT,
  unit_cost INTEGER,
  user_id TEXT NOT NULL REFERENCES users(id),
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS stock_movements_product_idx ON stock_movements(product_id);
CREATE INDEX IF NOT EXISTS stock_movements_type_idx ON stock_movements(type);
CREATE INDEX IF NOT EXISTS stock_movements_user_idx ON stock_movements(user_id);
CREATE INDEX IF NOT EXISTS stock_movements_created_idx ON stock_movements(created_at);

-- =============================================================================
-- TABELA DE VENDAS
-- =============================================================================
CREATE TABLE IF NOT EXISTS sales (
  id TEXT PRIMARY KEY,
  customer_id TEXT REFERENCES customers(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  status TEXT NOT NULL DEFAULT 'pending' CHECK(status IN ('pending', 'completed', 'cancelled', 'refunded')),
  subtotal INTEGER NOT NULL DEFAULT 0,
  discount_amount INTEGER NOT NULL DEFAULT 0,
  discount_percent REAL NOT NULL DEFAULT 0,
  tax_amount INTEGER NOT NULL DEFAULT 0,
  total INTEGER NOT NULL DEFAULT 0,
  payment_method TEXT CHECK(payment_method IN ('cash', 'credit_card', 'debit_card', 'pix', 'bank_transfer', 'store_credit', 'other') OR payment_method IS NULL),
  payment_details TEXT,
  notes TEXT,
  receipt_number TEXT NOT NULL UNIQUE,
  completed_at TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS sales_customer_idx ON sales(customer_id);
CREATE INDEX IF NOT EXISTS sales_user_idx ON sales(user_id);
CREATE INDEX IF NOT EXISTS sales_status_idx ON sales(status);
CREATE INDEX IF NOT EXISTS sales_receipt_idx ON sales(receipt_number);
CREATE INDEX IF NOT EXISTS sales_created_idx ON sales(created_at);
CREATE INDEX IF NOT EXISTS sales_completed_idx ON sales(completed_at);

-- =============================================================================
-- TABELA DE ITENS DE VENDA
-- =============================================================================
CREATE TABLE IF NOT EXISTS sale_items (
  id TEXT PRIMARY KEY,
  sale_id TEXT NOT NULL REFERENCES sales(id) ON DELETE CASCADE,
  product_id TEXT NOT NULL REFERENCES products(id),
  product_name TEXT NOT NULL,
  product_sku TEXT NOT NULL,
  quantity REAL NOT NULL,
  unit_price INTEGER NOT NULL,
  discount_amount INTEGER NOT NULL DEFAULT 0,
  discount_percent REAL NOT NULL DEFAULT 0,
  tax_amount INTEGER NOT NULL DEFAULT 0,
  total INTEGER NOT NULL,
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  deleted_at TEXT,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TEXT,
  local_only INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS sale_items_sale_idx ON sale_items(sale_id);
CREATE INDEX IF NOT EXISTS sale_items_product_idx ON sale_items(product_id);

-- =============================================================================
-- TABELA DE FILA DE SINCRONIZAÇÃO
-- =============================================================================
CREATE TABLE IF NOT EXISTS sync_queue (
  id TEXT PRIMARY KEY,
  entity_type TEXT NOT NULL,
  entity_id TEXT NOT NULL,
  operation TEXT NOT NULL CHECK(operation IN ('create', 'update', 'delete')),
  data TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK(status IN ('pending', 'syncing', 'completed', 'failed', 'conflict')),
  priority INTEGER NOT NULL DEFAULT 0,
  attempts INTEGER NOT NULL DEFAULT 0,
  max_attempts INTEGER NOT NULL DEFAULT 3,
  last_attempt_at TEXT,
  next_attempt_at TEXT,
  error_message TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS sync_queue_status_idx ON sync_queue(status);
CREATE INDEX IF NOT EXISTS sync_queue_entity_type_idx ON sync_queue(entity_type);
CREATE INDEX IF NOT EXISTS sync_queue_priority_idx ON sync_queue(priority);
CREATE INDEX IF NOT EXISTS sync_queue_next_attempt_idx ON sync_queue(next_attempt_at);

-- =============================================================================
-- TABELA DE LOGS DE SINCRONIZAÇÃO
-- =============================================================================
CREATE TABLE IF NOT EXISTS sync_logs (
  id TEXT PRIMARY KEY,
  started_at TEXT NOT NULL DEFAULT (datetime('now')),
  completed_at TEXT,
  status TEXT NOT NULL DEFAULT 'running' CHECK(status IN ('running', 'completed', 'failed')),
  items_processed INTEGER NOT NULL DEFAULT 0,
  items_succeeded INTEGER NOT NULL DEFAULT 0,
  items_failed INTEGER NOT NULL DEFAULT 0,
  items_conflicted INTEGER NOT NULL DEFAULT 0,
  error_message TEXT,
  details TEXT
);

CREATE INDEX IF NOT EXISTS sync_logs_started_idx ON sync_logs(started_at);
CREATE INDEX IF NOT EXISTS sync_logs_status_idx ON sync_logs(status);

-- =============================================================================
-- TABELA DE CONFLITOS DE SINCRONIZAÇÃO
-- =============================================================================
CREATE TABLE IF NOT EXISTS sync_conflicts (
  id TEXT PRIMARY KEY,
  entity_type TEXT NOT NULL,
  entity_id TEXT NOT NULL,
  local_data TEXT NOT NULL,
  remote_data TEXT NOT NULL,
  local_updated_at TEXT NOT NULL,
  remote_updated_at TEXT NOT NULL,
  resolution TEXT CHECK(resolution IN ('local_wins', 'remote_wins', 'merged', 'manual') OR resolution IS NULL),
  resolved_data TEXT,
  resolved_at TEXT,
  resolved_by TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS sync_conflicts_entity_idx ON sync_conflicts(entity_type, entity_id);
CREATE INDEX IF NOT EXISTS sync_conflicts_unresolved_idx ON sync_conflicts(resolved_at);

-- =============================================================================
-- TABELA DE CONFIGURAÇÕES LOCAIS
-- =============================================================================
CREATE TABLE IF NOT EXISTS local_settings (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);

-- =============================================================================
-- TRIGGERS PARA UPDATED_AT
-- =============================================================================
CREATE TRIGGER IF NOT EXISTS users_updated_at
  AFTER UPDATE ON users
  BEGIN
    UPDATE users SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS customers_updated_at
  AFTER UPDATE ON customers
  BEGIN
    UPDATE customers SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS product_categories_updated_at
  AFTER UPDATE ON product_categories
  BEGIN
    UPDATE product_categories SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS products_updated_at
  AFTER UPDATE ON products
  BEGIN
    UPDATE products SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS stock_movements_updated_at
  AFTER UPDATE ON stock_movements
  BEGIN
    UPDATE stock_movements SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS sales_updated_at
  AFTER UPDATE ON sales
  BEGIN
    UPDATE sales SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS sale_items_updated_at
  AFTER UPDATE ON sale_items
  BEGIN
    UPDATE sale_items SET updated_at = datetime('now') WHERE id = NEW.id;
  END;

CREATE TRIGGER IF NOT EXISTS local_settings_updated_at
  AFTER UPDATE ON local_settings
  BEGIN
    UPDATE local_settings SET updated_at = datetime('now') WHERE key = NEW.key;
  END;
`;

/**
 * Inicializa o banco de dados SQLite local
 */
async function initLocalDb(): Promise<void> {
  console.log('🗃️  Inicializando banco de dados SQLite local...');

  // Determina o caminho do banco
  const dbPath = process.env.LOCAL_DB_PATH
    ? path.isAbsolute(process.env.LOCAL_DB_PATH)
      ? process.env.LOCAL_DB_PATH
      : path.resolve(process.cwd(), process.env.LOCAL_DB_PATH)
    : path.resolve(process.cwd(), 'data', 'local.db');

  // Cria o diretório se não existir
  const dbDir = path.dirname(dbPath);
  if (!fs.existsSync(dbDir)) {
    fs.mkdirSync(dbDir, { recursive: true });
    console.log(`📁 Diretório criado: ${dbDir}`);
  }

  // Abre/cria o banco
  const db = new Database(dbPath);

  // Configurações de performance
  db.pragma('journal_mode = WAL');
  db.pragma('synchronous = NORMAL');
  db.pragma('cache_size = -64000');
  db.pragma('foreign_keys = ON');
  db.pragma('temp_store = MEMORY');

  console.log(`📂 Banco de dados: ${dbPath}`);

  // Executa as migrations
  try {
    db.exec(CREATE_TABLES_SQL);
    console.log('✅ Tabelas criadas/verificadas com sucesso!');
  } catch (error) {
    console.error('❌ Erro ao criar tabelas:', error);
    throw error;
  }

  // Verifica as tabelas criadas
  const tables = db
    .prepare("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name")
    .all() as { name: string }[];

  console.log('\n📋 Tabelas disponíveis:');
  tables.forEach((t) => console.log(`   - ${t.name}`));

  // Fecha a conexão
  db.close();

  console.log('\n✨ Banco de dados local inicializado com sucesso!');
}

// Executa se chamado diretamente
initLocalDb().catch((error) => {
  console.error('Falha ao inicializar banco local:', error);
  process.exit(1);
});

export { initLocalDb };
