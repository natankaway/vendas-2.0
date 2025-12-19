-- Migration: Adiciona coluna unit na tabela sale_items
-- Data: 2024-12-19
-- Descrição: Armazena a unidade de medida do produto no momento da venda

-- Adiciona coluna unit
ALTER TABLE sale_items ADD COLUMN IF NOT EXISTS unit TEXT DEFAULT 'un';

-- Atualiza itens existentes buscando a unidade do produto
UPDATE sale_items si
SET unit = COALESCE(p.unit, 'un')
FROM products p
WHERE si.product_id = p.id AND si.unit IS NULL;

-- Comentário
COMMENT ON COLUMN sale_items.unit IS 'Unidade de medida do produto (snapshot no momento da venda)';
