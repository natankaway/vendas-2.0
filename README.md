# Vendas PDV - Sistema de Ponto de Venda Offline-First

Sistema completo de PDV (Ponto de Venda) com sincronização offline-first, construído com Next.js, Supabase e SQLite.

## Características

- **100% Funcional Offline**: Todas as operações funcionam sem internet
- **Sincronização Automática**: Dados sincronizam automaticamente quando há conexão
- **PWA**: Instalável como aplicativo no desktop e mobile
- **Multi-plataforma**: Funciona em Linux, Windows e macOS
- **Seguro**: Autenticação via Supabase com suporte a login offline

## Stack Tecnológico

| Camada | Tecnologia |
|--------|------------|
| Frontend | Next.js 14 (App Router) + React 18 + TypeScript |
| Backend | API Routes do Next.js |
| Banco Online | Supabase (PostgreSQL) |
| Banco Local | SQLite (better-sqlite3) |
| ORM | Drizzle ORM |
| UI | Tailwind CSS + Radix UI |
| Estado | Zustand + React Query |
| PWA | next-pwa |

## Requisitos

- Node.js 18.17 ou superior
- npm 9+ ou yarn 1.22+
- Conta no Supabase (gratuita)

## Instalação

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
cd vendas-2.0
```

### 2. Instale as dependências

```bash
npm install
```

### 3. Configure as variáveis de ambiente

Copie o arquivo de exemplo:

```bash
cp .env.example .env.local
```

Edite `.env.local` com suas credenciais do Supabase:

```env
NEXT_PUBLIC_SUPABASE_URL=https://seu-projeto.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=sua-anon-key
DATABASE_URL=postgresql://postgres:senha@db.seu-projeto.supabase.co:5432/postgres
LOCAL_DB_PATH=./data/local.db
```

### 4. Configure o Supabase

Acesse o SQL Editor do seu projeto Supabase e execute o SQL de criação das tabelas (veja seção "Setup do Supabase" abaixo).

### 5. Inicialize o banco local

```bash
npm run db:init-local
```

### 6. Inicie o servidor

```bash
npm run dev
```

Acesse [http://localhost:3000](http://localhost:3000)

## Setup do Supabase

Execute no SQL Editor do Supabase:

```sql
-- Criar tipos ENUM
CREATE TYPE user_role AS ENUM ('admin', 'manager', 'cashier');
CREATE TYPE user_status AS ENUM ('active', 'inactive', 'pending');
CREATE TYPE document_type AS ENUM ('cpf', 'cnpj');
CREATE TYPE stock_movement_type AS ENUM ('purchase', 'sale', 'adjustment', 'return', 'loss');
CREATE TYPE sale_status AS ENUM ('pending', 'completed', 'cancelled', 'refunded');
CREATE TYPE payment_method AS ENUM ('cash', 'credit_card', 'debit_card', 'pix', 'bank_transfer', 'store_credit', 'other');

-- Tabela de usuários
CREATE TABLE users (
  id TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  password_hash TEXT,
  role user_role NOT NULL DEFAULT 'cashier',
  status user_status NOT NULL DEFAULT 'active',
  avatar_url TEXT,
  phone TEXT,
  last_login_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de clientes
CREATE TABLE customers (
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
  last_purchase_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de categorias
CREATE TABLE product_categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT,
  parent_id TEXT REFERENCES product_categories(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de produtos
CREATE TABLE products (
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
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de movimentações de estoque
CREATE TABLE stock_movements (
  id TEXT PRIMARY KEY,
  product_id TEXT NOT NULL REFERENCES products(id),
  quantity REAL NOT NULL,
  type stock_movement_type NOT NULL,
  reason TEXT,
  reference_id TEXT,
  unit_cost INTEGER,
  user_id TEXT NOT NULL REFERENCES users(id),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de vendas
CREATE TABLE sales (
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
  completed_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Tabela de itens de venda
CREATE TABLE sale_items (
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
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMP,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMP,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

-- Criar índices
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_customers_name ON customers(name);
CREATE INDEX idx_customers_phone ON customers(phone);
CREATE INDEX idx_products_name ON products(name);
CREATE INDEX idx_products_sku ON products(sku);
CREATE INDEX idx_products_barcode ON products(barcode);
CREATE INDEX idx_sales_receipt ON sales(receipt_number);
CREATE INDEX idx_sales_created ON sales(created_at);
```

## Estrutura do Projeto

```
vendas-2.0/
├── src/
│   ├── app/                    # App Router (Next.js 14)
│   │   ├── (auth)/            # Rotas de autenticação
│   │   ├── (dashboard)/       # Rotas autenticadas
│   │   │   ├── pdv/           # Ponto de Venda
│   │   │   ├── produtos/      # Gestão de Produtos
│   │   │   ├── clientes/      # Gestão de Clientes
│   │   │   └── relatorios/    # Relatórios
│   │   └── api/               # API Routes
│   ├── components/            # Componentes React
│   │   └── ui/               # Componentes base
│   └── lib/                   # Bibliotecas
│       ├── db/               # Bancos de dados
│       ├── supabase/         # Cliente Supabase
│       ├── sync/             # Sincronização
│       ├── services/         # Serviços de dados
│       ├── stores/           # Estado (Zustand)
│       └── hooks/            # Hooks customizados
├── public/                    # Arquivos estáticos
└── data/                      # Banco SQLite local
```

## Módulos do Sistema

### PDV (Ponto de Venda)
- Grid de produtos com busca e categorias
- Carrinho de compras com desconto
- Múltiplas formas de pagamento
- Seleção de cliente
- Impressão de recibo
- Leitor de código de barras

### Produtos
- CRUD completo
- Código de barras e SKU
- Controle de estoque automático
- Categorias hierárquicas
- Alertas de estoque baixo

### Clientes
- CRUD completo
- CPF/CNPJ com validação
- Histórico de compras
- Limite de crédito

### Vendas
- Registro completo
- Cancelamento com estorno
- Múltiplos pagamentos

### Usuários
- Autenticação Supabase
- Login offline
- Roles: admin, manager, cashier

## Sistema de Sincronização

### Fluxo

1. Operação salva no SQLite local
2. Adicionada à fila de sync
3. Quando online, push para Supabase
4. Pull de alterações remotas
5. Merge automático de conflitos

### Resolução de Conflitos

- Timestamp mais recente prevalece
- Campo `version` para detecção
- Conflitos críticos para revisão manual

## Scripts

```bash
npm run dev          # Desenvolvimento
npm run build        # Build produção
npm run start        # Iniciar produção
npm run db:init-local # Criar banco local
```

## Instalação como PWA

### Chrome/Edge (Desktop)
Clique no ícone de instalação na barra de endereço.

### Android
Menu → "Adicionar à tela inicial"

### iOS
Compartilhar → "Adicionar à Tela de Início"

## Licença

MIT
