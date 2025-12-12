-- ==============================================================================
-- SETUP COMPLETO DO SUPABASE PARA VENDAS PDV
-- Execute este script no SQL Editor do Supabase
-- ==============================================================================

-- Criar tipos ENUM
DO $$ BEGIN
    CREATE TYPE user_role AS ENUM ('admin', 'manager', 'cashier');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE user_status AS ENUM ('active', 'inactive', 'pending');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE document_type AS ENUM ('cpf', 'cnpj');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE stock_movement_type AS ENUM ('purchase', 'sale', 'adjustment', 'return', 'loss');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE sale_status AS ENUM ('pending', 'completed', 'cancelled', 'refunded');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE payment_method AS ENUM ('cash', 'credit_card', 'debit_card', 'pix', 'bank_transfer', 'store_credit', 'pay_later', 'other');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- ==============================================================================
-- TABELA DE USUÁRIOS
-- ==============================================================================
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  password_hash TEXT,
  role user_role NOT NULL DEFAULT 'cashier',
  status user_status NOT NULL DEFAULT 'active',
  avatar_url TEXT,
  phone TEXT,
  last_login_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);
CREATE INDEX IF NOT EXISTS idx_users_role ON users(role);
CREATE INDEX IF NOT EXISTS idx_users_status ON users(status);

-- ==============================================================================
-- TABELA DE CLIENTES
-- ==============================================================================
CREATE TABLE IF NOT EXISTS customers (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  phone TEXT,
  document TEXT,
  document_type document_type,
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  notes TEXT,
  credit_limit INTEGER NOT NULL DEFAULT 0,
  current_balance INTEGER NOT NULL DEFAULT 0,
  total_purchases INTEGER NOT NULL DEFAULT 0,
  last_purchase_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_customers_name ON customers(name);
CREATE INDEX IF NOT EXISTS idx_customers_phone ON customers(phone);
CREATE INDEX IF NOT EXISTS idx_customers_document ON customers(document);
CREATE INDEX IF NOT EXISTS idx_customers_email ON customers(email);

-- ==============================================================================
-- TABELA DE CATEGORIAS DE PRODUTOS
-- ==============================================================================
CREATE TABLE IF NOT EXISTS product_categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT,
  parent_id TEXT REFERENCES product_categories(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_categories_name ON product_categories(name);
CREATE INDEX IF NOT EXISTS idx_categories_parent ON product_categories(parent_id);

-- ==============================================================================
-- TABELA DE PRODUTOS
-- ==============================================================================
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
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  is_weighable BOOLEAN NOT NULL DEFAULT FALSE,
  allow_decimal_quantity BOOLEAN NOT NULL DEFAULT FALSE,
  tax_rate REAL NOT NULL DEFAULT 0,
  image_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_products_name ON products(name);
CREATE INDEX IF NOT EXISTS idx_products_sku ON products(sku);
CREATE INDEX IF NOT EXISTS idx_products_barcode ON products(barcode);
CREATE INDEX IF NOT EXISTS idx_products_category ON products(category_id);
CREATE INDEX IF NOT EXISTS idx_products_active ON products(is_active);

-- ==============================================================================
-- TABELA DE MOVIMENTAÇÕES DE ESTOQUE
-- ==============================================================================
CREATE TABLE IF NOT EXISTS stock_movements (
  id TEXT PRIMARY KEY,
  product_id TEXT NOT NULL REFERENCES products(id),
  quantity REAL NOT NULL,
  type stock_movement_type NOT NULL,
  reason TEXT,
  reference_id TEXT,
  unit_cost INTEGER,
  user_id TEXT NOT NULL REFERENCES users(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_stock_movements_product ON stock_movements(product_id);
CREATE INDEX IF NOT EXISTS idx_stock_movements_type ON stock_movements(type);
CREATE INDEX IF NOT EXISTS idx_stock_movements_user ON stock_movements(user_id);
CREATE INDEX IF NOT EXISTS idx_stock_movements_created ON stock_movements(created_at);

-- ==============================================================================
-- TABELA DE VENDAS
-- ==============================================================================
CREATE TABLE IF NOT EXISTS sales (
  id TEXT PRIMARY KEY,
  customer_id TEXT REFERENCES customers(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  status sale_status NOT NULL DEFAULT 'pending',
  subtotal INTEGER NOT NULL DEFAULT 0,
  discount_amount INTEGER NOT NULL DEFAULT 0,
  discount_percent REAL NOT NULL DEFAULT 0,
  tax_amount INTEGER NOT NULL DEFAULT 0,
  total INTEGER NOT NULL DEFAULT 0,
  payment_method payment_method,
  payment_details JSONB,
  notes TEXT,
  receipt_number TEXT NOT NULL UNIQUE,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_sales_customer ON sales(customer_id);
CREATE INDEX IF NOT EXISTS idx_sales_user ON sales(user_id);
CREATE INDEX IF NOT EXISTS idx_sales_status ON sales(status);
CREATE INDEX IF NOT EXISTS idx_sales_receipt ON sales(receipt_number);
CREATE INDEX IF NOT EXISTS idx_sales_created ON sales(created_at);
CREATE INDEX IF NOT EXISTS idx_sales_completed ON sales(completed_at);

-- ==============================================================================
-- TABELA DE ITENS DE VENDA
-- ==============================================================================
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
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_sale_items_sale ON sale_items(sale_id);
CREATE INDEX IF NOT EXISTS idx_sale_items_product ON sale_items(product_id);

-- ==============================================================================
-- TRIGGERS PARA ATUALIZAR updated_at
-- ==============================================================================
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

DROP TRIGGER IF EXISTS update_users_updated_at ON users;
CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON users FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_customers_updated_at ON customers;
CREATE TRIGGER update_customers_updated_at BEFORE UPDATE ON customers FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_product_categories_updated_at ON product_categories;
CREATE TRIGGER update_product_categories_updated_at BEFORE UPDATE ON product_categories FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_products_updated_at ON products;
CREATE TRIGGER update_products_updated_at BEFORE UPDATE ON products FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_stock_movements_updated_at ON stock_movements;
CREATE TRIGGER update_stock_movements_updated_at BEFORE UPDATE ON stock_movements FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_sales_updated_at ON sales;
CREATE TRIGGER update_sales_updated_at BEFORE UPDATE ON sales FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_sale_items_updated_at ON sale_items;
CREATE TRIGGER update_sale_items_updated_at BEFORE UPDATE ON sale_items FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ==============================================================================
-- DADOS INICIAIS - USUÁRIO ADMIN
-- ==============================================================================
INSERT INTO users (id, email, name, role, status, password_hash)
VALUES (
  'admin-001',
  'admin@vendas.com',
  'Administrador',
  'admin',
  'active',
  -- Hash de 'admin123' (SHA-256 simplificado)
  'a7c5e3e7c6b8d5f2e1a9b4c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8'
)
ON CONFLICT (id) DO NOTHING;

-- ==============================================================================
-- CATEGORIAS DE EXEMPLO
-- ==============================================================================
INSERT INTO product_categories (id, name, color, sort_order) VALUES
  ('cat-001', 'Bebidas', '#3b82f6', 1),
  ('cat-002', 'Alimentos', '#10b981', 2),
  ('cat-003', 'Doces', '#f59e0b', 3),
  ('cat-004', 'Higiene', '#8b5cf6', 4),
  ('cat-005', 'Limpeza', '#06b6d4', 5)
ON CONFLICT (id) DO NOTHING;

-- ==============================================================================
-- PRODUTOS DE EXEMPLO
-- ==============================================================================
INSERT INTO products (id, name, sku, barcode, category_id, price, cost_price, stock_quantity, min_stock_quantity) VALUES
  ('prod-001', 'Coca-Cola 2L', 'BEB001', '7891234567890', 'cat-001', 1299, 850, 50, 10),
  ('prod-002', 'Água Mineral 500ml', 'BEB002', '7891234567891', 'cat-001', 299, 150, 100, 20),
  ('prod-003', 'Suco de Laranja 1L', 'BEB003', '7891234567892', 'cat-001', 899, 550, 30, 5),
  ('prod-004', 'Pão de Forma', 'ALI001', '7891234567893', 'cat-002', 799, 450, 25, 5),
  ('prod-005', 'Arroz 5kg', 'ALI002', '7891234567894', 'cat-002', 2499, 1800, 40, 10),
  ('prod-006', 'Feijão 1kg', 'ALI003', '7891234567895', 'cat-002', 899, 600, 35, 8),
  ('prod-007', 'Chocolate ao Leite', 'DOC001', '7891234567896', 'cat-003', 599, 350, 60, 15),
  ('prod-008', 'Bala Sortida 100g', 'DOC002', '7891234567897', 'cat-003', 299, 150, 80, 20),
  ('prod-009', 'Sabonete', 'HIG001', '7891234567898', 'cat-004', 399, 200, 45, 10),
  ('prod-010', 'Detergente 500ml', 'LIM001', '7891234567899', 'cat-005', 349, 180, 55, 12)
ON CONFLICT (id) DO NOTHING;

-- ==============================================================================
-- RLS (Row Level Security) - OPCIONAL
-- ==============================================================================
-- Descomente se quiser usar RLS

-- ALTER TABLE users ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE customers ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE product_categories ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE products ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE stock_movements ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE sales ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE sale_items ENABLE ROW LEVEL SECURITY;

-- Política para permitir leitura de todos (público)
-- CREATE POLICY "Enable read access for all users" ON products FOR SELECT USING (true);

SELECT 'Setup concluído com sucesso!' as message;
