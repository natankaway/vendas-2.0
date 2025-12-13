-- ==============================================================================
-- MIGRAÇÃO: Gestão de Caixa e Contas a Receber
-- Execute este script no SQL Editor do Supabase
-- ==============================================================================

-- ==============================================================================
-- NOVOS TIPOS ENUM
-- ==============================================================================

-- Status do caixa
DO $$ BEGIN
    CREATE TYPE cash_register_status AS ENUM ('open', 'closed');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- Tipo de movimentação de caixa
DO $$ BEGIN
    CREATE TYPE cash_movement_type AS ENUM ('opening', 'sale', 'withdrawal', 'supply', 'closing');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- ==============================================================================
-- TABELA DE CAIXAS (Sessões de Caixa)
-- ==============================================================================
CREATE TABLE IF NOT EXISTS cash_registers (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  status cash_register_status NOT NULL DEFAULT 'open',
  opening_balance INTEGER NOT NULL DEFAULT 0,
  closing_balance INTEGER,
  expected_balance INTEGER,
  difference INTEGER,
  notes TEXT,
  opened_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  closed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_cash_registers_user ON cash_registers(user_id);
CREATE INDEX IF NOT EXISTS idx_cash_registers_status ON cash_registers(status);
CREATE INDEX IF NOT EXISTS idx_cash_registers_opened ON cash_registers(opened_at);

-- ==============================================================================
-- TABELA DE MOVIMENTAÇÕES DE CAIXA
-- ==============================================================================
CREATE TABLE IF NOT EXISTS cash_movements (
  id TEXT PRIMARY KEY,
  cash_register_id TEXT NOT NULL REFERENCES cash_registers(id) ON DELETE CASCADE,
  type cash_movement_type NOT NULL,
  amount INTEGER NOT NULL,
  description TEXT,
  sale_id TEXT REFERENCES sales(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_cash_movements_register ON cash_movements(cash_register_id);
CREATE INDEX IF NOT EXISTS idx_cash_movements_type ON cash_movements(type);
CREATE INDEX IF NOT EXISTS idx_cash_movements_sale ON cash_movements(sale_id);
CREATE INDEX IF NOT EXISTS idx_cash_movements_created ON cash_movements(created_at);

-- ==============================================================================
-- TABELA DE REGISTROS DE PAGAMENTO (Pagamentos Parciais)
-- ==============================================================================
CREATE TABLE IF NOT EXISTS payment_records (
  id TEXT PRIMARY KEY,
  sale_id TEXT NOT NULL REFERENCES sales(id) ON DELETE CASCADE,
  customer_id TEXT NOT NULL REFERENCES customers(id),
  amount INTEGER NOT NULL,
  payment_method payment_method NOT NULL,
  notes TEXT,
  received_by TEXT NOT NULL REFERENCES users(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ,
  version INTEGER NOT NULL DEFAULT 1,
  synced_at TIMESTAMPTZ,
  local_only BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_payment_records_sale ON payment_records(sale_id);
CREATE INDEX IF NOT EXISTS idx_payment_records_customer ON payment_records(customer_id);
CREATE INDEX IF NOT EXISTS idx_payment_records_created ON payment_records(created_at);

-- ==============================================================================
-- ADICIONAR COLUNA cash_register_id NA TABELA sales
-- ==============================================================================
ALTER TABLE sales ADD COLUMN IF NOT EXISTS cash_register_id TEXT REFERENCES cash_registers(id);
CREATE INDEX IF NOT EXISTS idx_sales_cash_register ON sales(cash_register_id);

-- ==============================================================================
-- TRIGGERS PARA ATUALIZAR updated_at
-- ==============================================================================
DROP TRIGGER IF EXISTS update_cash_registers_updated_at ON cash_registers;
CREATE TRIGGER update_cash_registers_updated_at BEFORE UPDATE ON cash_registers FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_cash_movements_updated_at ON cash_movements;
CREATE TRIGGER update_cash_movements_updated_at BEFORE UPDATE ON cash_movements FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

DROP TRIGGER IF EXISTS update_payment_records_updated_at ON payment_records;
CREATE TRIGGER update_payment_records_updated_at BEFORE UPDATE ON payment_records FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ==============================================================================
-- FUNÇÃO PARA CALCULAR SALDO ATUAL DO CLIENTE
-- ==============================================================================
CREATE OR REPLACE FUNCTION calculate_customer_balance(p_customer_id TEXT)
RETURNS INTEGER AS $$
DECLARE
    total_pending INTEGER;
    total_paid INTEGER;
BEGIN
    -- Total de vendas pendentes (pay_later)
    SELECT COALESCE(SUM(total), 0) INTO total_pending
    FROM sales
    WHERE customer_id = p_customer_id
      AND payment_method = 'pay_later'
      AND status = 'completed'
      AND deleted_at IS NULL;

    -- Total já pago
    SELECT COALESCE(SUM(amount), 0) INTO total_paid
    FROM payment_records
    WHERE customer_id = p_customer_id
      AND deleted_at IS NULL;

    RETURN total_pending - total_paid;
END;
$$ LANGUAGE plpgsql;

-- ==============================================================================
-- FUNÇÃO PARA CALCULAR SALDO ESPERADO DO CAIXA
-- ==============================================================================
CREATE OR REPLACE FUNCTION calculate_cash_register_balance(p_cash_register_id TEXT)
RETURNS INTEGER AS $$
DECLARE
    balance INTEGER;
BEGIN
    SELECT COALESCE(SUM(
        CASE
            WHEN type IN ('opening', 'sale', 'supply') THEN amount
            WHEN type = 'withdrawal' THEN -amount
            ELSE 0
        END
    ), 0) INTO balance
    FROM cash_movements
    WHERE cash_register_id = p_cash_register_id
      AND deleted_at IS NULL;

    RETURN balance;
END;
$$ LANGUAGE plpgsql;

SELECT 'Migração de Gestão de Caixa concluída com sucesso!' as message;
