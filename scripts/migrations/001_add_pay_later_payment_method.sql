-- ==============================================================================
-- MIGRAÇÃO: Adicionar 'pay_later' ao enum payment_method
-- Execute este script no SQL Editor do Supabase
-- ==============================================================================

-- Adicionar o novo valor 'pay_later' ao enum payment_method
-- O valor é adicionado antes de 'other' para manter uma ordem lógica
ALTER TYPE payment_method ADD VALUE IF NOT EXISTS 'pay_later' BEFORE 'other';

-- Verificar se foi adicionado corretamente
SELECT enumlabel FROM pg_enum WHERE enumtypid = 'payment_method'::regtype ORDER BY enumsortorder;
