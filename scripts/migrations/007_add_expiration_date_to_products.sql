-- Migration: Adiciona campo expiration_date na tabela products
-- Data: 2024-12-19
-- Descrição: Armazena a data de vencimento dos produtos

-- Adiciona coluna expiration_date
ALTER TABLE products ADD COLUMN IF NOT EXISTS expiration_date DATE;

-- Índice para buscar produtos por vencimento
CREATE INDEX IF NOT EXISTS idx_products_expiration_date ON products(expiration_date);

-- Comentário
COMMENT ON COLUMN products.expiration_date IS 'Data de vencimento do produto';
