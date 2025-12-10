/**
 * Script para configurar o banco de dados Supabase
 *
 * Execute: node scripts/setup-database.js
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

// Carregar variáveis de ambiente
require('dotenv').config({ path: '.env.local' });

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SERVICE_ROLE_KEY) {
  console.error('❌ Variáveis de ambiente não encontradas!');
  console.error('Certifique-se de que .env.local contém:');
  console.error('  - NEXT_PUBLIC_SUPABASE_URL');
  console.error('  - SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

// Extrair o project ref da URL
const projectRef = SUPABASE_URL.replace('https://', '').replace('.supabase.co', '');

console.log('🚀 Configurando banco de dados Supabase...');
console.log(`📍 Projeto: ${projectRef}`);

// SQL statements separados para execução individual
const sqlStatements = [
  // ENUMs
  `DO $$ BEGIN CREATE TYPE user_role AS ENUM ('admin', 'manager', 'cashier'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,
  `DO $$ BEGIN CREATE TYPE user_status AS ENUM ('active', 'inactive', 'pending'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,
  `DO $$ BEGIN CREATE TYPE document_type AS ENUM ('cpf', 'cnpj'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,
  `DO $$ BEGIN CREATE TYPE stock_movement_type AS ENUM ('purchase', 'sale', 'adjustment', 'return', 'loss'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,
  `DO $$ BEGIN CREATE TYPE sale_status AS ENUM ('pending', 'completed', 'cancelled', 'refunded'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,
  `DO $$ BEGIN CREATE TYPE payment_method AS ENUM ('cash', 'credit_card', 'debit_card', 'pix', 'bank_transfer', 'store_credit', 'other'); EXCEPTION WHEN duplicate_object THEN null; END $$;`,

  // Users table
  `CREATE TABLE IF NOT EXISTS users (
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
  );`,

  // Customers table
  `CREATE TABLE IF NOT EXISTS customers (
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
  );`,

  // Product categories table
  `CREATE TABLE IF NOT EXISTS product_categories (
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
  );`,

  // Products table
  `CREATE TABLE IF NOT EXISTS products (
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
  );`,

  // Sales table
  `CREATE TABLE IF NOT EXISTS sales (
    id TEXT PRIMARY KEY,
    customer_id TEXT REFERENCES customers(id),
    user_id TEXT NOT NULL,
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
  );`,

  // Sale items table
  `CREATE TABLE IF NOT EXISTS sale_items (
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
  );`,

  // Stock movements table
  `CREATE TABLE IF NOT EXISTS stock_movements (
    id TEXT PRIMARY KEY,
    product_id TEXT NOT NULL REFERENCES products(id),
    quantity REAL NOT NULL,
    type stock_movement_type NOT NULL,
    reason TEXT,
    reference_id TEXT,
    unit_cost INTEGER,
    user_id TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ,
    version INTEGER NOT NULL DEFAULT 1,
    synced_at TIMESTAMPTZ,
    local_only BOOLEAN NOT NULL DEFAULT FALSE
  );`,

  // Trigger function
  `CREATE OR REPLACE FUNCTION update_updated_at_column()
  RETURNS TRIGGER AS $$
  BEGIN
      NEW.updated_at = NOW();
      RETURN NEW;
  END;
  $$ language 'plpgsql';`,

  // Triggers
  `DROP TRIGGER IF EXISTS update_users_updated_at ON users; CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON users FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();`,
  `DROP TRIGGER IF EXISTS update_customers_updated_at ON customers; CREATE TRIGGER update_customers_updated_at BEFORE UPDATE ON customers FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();`,
  `DROP TRIGGER IF EXISTS update_products_updated_at ON products; CREATE TRIGGER update_products_updated_at BEFORE UPDATE ON products FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();`,
  `DROP TRIGGER IF EXISTS update_sales_updated_at ON sales; CREATE TRIGGER update_sales_updated_at BEFORE UPDATE ON sales FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();`,

  // Insert admin user
  `INSERT INTO users (id, email, name, role, status, password_hash)
  VALUES ('admin-001', 'admin@vendas.com', 'Administrador', 'admin', 'active', 'a7c5e3e7c6b8d5f2e1a9b4c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8')
  ON CONFLICT (id) DO NOTHING;`,

  // Insert categories
  `INSERT INTO product_categories (id, name, color, sort_order) VALUES
    ('cat-001', 'Bebidas', '#3b82f6', 1),
    ('cat-002', 'Alimentos', '#10b981', 2),
    ('cat-003', 'Doces', '#f59e0b', 3),
    ('cat-004', 'Higiene', '#8b5cf6', 4),
    ('cat-005', 'Limpeza', '#06b6d4', 5)
  ON CONFLICT (id) DO NOTHING;`,

  // Insert products
  `INSERT INTO products (id, name, sku, barcode, category_id, price, cost_price, stock_quantity, min_stock_quantity) VALUES
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
  ON CONFLICT (id) DO NOTHING;`
];

// Função para executar SQL via API REST do Supabase
async function executeSQL(sql) {
  return new Promise((resolve, reject) => {
    const url = new URL(`${SUPABASE_URL}/rest/v1/rpc/exec_sql`);

    const postData = JSON.stringify({ query: sql });

    const options = {
      hostname: url.hostname,
      path: url.pathname,
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'apikey': SERVICE_ROLE_KEY,
        'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
        'Content-Length': Buffer.byteLength(postData),
        'Prefer': 'return=minimal'
      }
    };

    const req = https.request(options, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        if (res.statusCode >= 200 && res.statusCode < 300) {
          resolve({ success: true, data });
        } else {
          resolve({ success: false, status: res.statusCode, data });
        }
      });
    });

    req.on('error', reject);
    req.write(postData);
    req.end();
  });
}

// Função para criar a função exec_sql no Supabase primeiro
async function createExecSqlFunction() {
  // Tentar criar via Management API ou diretamente
  console.log('ℹ️  A função exec_sql precisa ser criada manualmente no Supabase.');
  console.log('');
  console.log('📋 Copie e execute o seguinte SQL no Supabase SQL Editor:');
  console.log('');
  console.log('=' .repeat(60));

  // Ler o arquivo SQL completo
  const sqlContent = fs.readFileSync(path.join(__dirname, 'setup-supabase.sql'), 'utf8');
  console.log(sqlContent);

  console.log('=' .repeat(60));
  console.log('');
  console.log('🔗 Acesse: https://supabase.com/dashboard/project/' + projectRef + '/sql/new');
}

// Função alternativa: tentar inserir dados via REST API
async function insertDataViaRest() {
  console.log('\n🔄 Tentando inserir dados via REST API...\n');

  const baseUrl = SUPABASE_URL + '/rest/v1';

  // Função helper para fazer requisições
  const makeRequest = (endpoint, method, data) => {
    return new Promise((resolve, reject) => {
      const url = new URL(baseUrl + endpoint);
      const postData = data ? JSON.stringify(data) : '';

      const options = {
        hostname: url.hostname,
        path: url.pathname + url.search,
        method: method,
        headers: {
          'Content-Type': 'application/json',
          'apikey': SERVICE_ROLE_KEY,
          'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
          'Prefer': 'return=minimal,resolution=ignore-duplicates'
        }
      };

      if (postData) {
        options.headers['Content-Length'] = Buffer.byteLength(postData);
      }

      const req = https.request(options, (res) => {
        let responseData = '';
        res.on('data', chunk => responseData += chunk);
        res.on('end', () => {
          resolve({
            success: res.statusCode >= 200 && res.statusCode < 300,
            status: res.statusCode,
            data: responseData
          });
        });
      });

      req.on('error', reject);
      if (postData) req.write(postData);
      req.end();
    });
  };

  // Verificar se as tabelas existem
  console.log('📊 Verificando tabelas...');
  const tablesCheck = await makeRequest('/users?select=id&limit=1', 'GET');

  if (tablesCheck.status === 404 || tablesCheck.data.includes('relation') && tablesCheck.data.includes('does not exist')) {
    console.log('❌ Tabelas não encontradas. Execute o SQL manualmente primeiro.');
    await createExecSqlFunction();
    return;
  }

  if (tablesCheck.success) {
    console.log('✅ Tabelas já existem! Inserindo dados de exemplo...\n');

    // Inserir categorias
    console.log('📁 Inserindo categorias...');
    const categories = [
      { id: 'cat-001', name: 'Bebidas', color: '#3b82f6', sort_order: 1 },
      { id: 'cat-002', name: 'Alimentos', color: '#10b981', sort_order: 2 },
      { id: 'cat-003', name: 'Doces', color: '#f59e0b', sort_order: 3 },
      { id: 'cat-004', name: 'Higiene', color: '#8b5cf6', sort_order: 4 },
      { id: 'cat-005', name: 'Limpeza', color: '#06b6d4', sort_order: 5 }
    ];

    const catResult = await makeRequest('/product_categories', 'POST', categories);
    console.log(catResult.success ? '  ✅ Categorias inseridas' : `  ⚠️  Status: ${catResult.status}`);

    // Inserir usuário admin
    console.log('👤 Inserindo usuário admin...');
    const adminUser = {
      id: 'admin-001',
      email: 'admin@vendas.com',
      name: 'Administrador',
      role: 'admin',
      status: 'active',
      password_hash: 'a7c5e3e7c6b8d5f2e1a9b4c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8'
    };

    const userResult = await makeRequest('/users', 'POST', [adminUser]);
    console.log(userResult.success ? '  ✅ Usuário admin criado' : `  ⚠️  Status: ${userResult.status}`);

    // Inserir produtos
    console.log('📦 Inserindo produtos...');
    const products = [
      { id: 'prod-001', name: 'Coca-Cola 2L', sku: 'BEB001', barcode: '7891234567890', category_id: 'cat-001', price: 1299, cost_price: 850, stock_quantity: 50, min_stock_quantity: 10 },
      { id: 'prod-002', name: 'Água Mineral 500ml', sku: 'BEB002', barcode: '7891234567891', category_id: 'cat-001', price: 299, cost_price: 150, stock_quantity: 100, min_stock_quantity: 20 },
      { id: 'prod-003', name: 'Suco de Laranja 1L', sku: 'BEB003', barcode: '7891234567892', category_id: 'cat-001', price: 899, cost_price: 550, stock_quantity: 30, min_stock_quantity: 5 },
      { id: 'prod-004', name: 'Pão de Forma', sku: 'ALI001', barcode: '7891234567893', category_id: 'cat-002', price: 799, cost_price: 450, stock_quantity: 25, min_stock_quantity: 5 },
      { id: 'prod-005', name: 'Arroz 5kg', sku: 'ALI002', barcode: '7891234567894', category_id: 'cat-002', price: 2499, cost_price: 1800, stock_quantity: 40, min_stock_quantity: 10 },
      { id: 'prod-006', name: 'Feijão 1kg', sku: 'ALI003', barcode: '7891234567895', category_id: 'cat-002', price: 899, cost_price: 600, stock_quantity: 35, min_stock_quantity: 8 },
      { id: 'prod-007', name: 'Chocolate ao Leite', sku: 'DOC001', barcode: '7891234567896', category_id: 'cat-003', price: 599, cost_price: 350, stock_quantity: 60, min_stock_quantity: 15 },
      { id: 'prod-008', name: 'Bala Sortida 100g', sku: 'DOC002', barcode: '7891234567897', category_id: 'cat-003', price: 299, cost_price: 150, stock_quantity: 80, min_stock_quantity: 20 },
      { id: 'prod-009', name: 'Sabonete', sku: 'HIG001', barcode: '7891234567898', category_id: 'cat-004', price: 399, cost_price: 200, stock_quantity: 45, min_stock_quantity: 10 },
      { id: 'prod-010', name: 'Detergente 500ml', sku: 'LIM001', barcode: '7891234567899', category_id: 'cat-005', price: 349, cost_price: 180, stock_quantity: 55, min_stock_quantity: 12 }
    ];

    const prodResult = await makeRequest('/products', 'POST', products);
    console.log(prodResult.success ? '  ✅ Produtos inseridos' : `  ⚠️  Status: ${prodResult.status}`);

    console.log('\n✅ Configuração concluída!');
    console.log('\n📋 Credenciais de acesso:');
    console.log('   Email: admin@vendas.com');
    console.log('   Senha: admin123');
  } else {
    console.log('❌ Erro ao verificar tabelas. Execute o SQL manualmente.');
    await createExecSqlFunction();
  }
}

// Executar
insertDataViaRest().catch(console.error);
