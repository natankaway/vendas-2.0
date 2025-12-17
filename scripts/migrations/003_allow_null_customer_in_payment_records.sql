-- ==============================================================================
-- MIGRAÇÃO: Permitir customer_id nulo em payment_records
-- Execute este script no SQL Editor do Supabase
-- ==============================================================================

-- ==============================================================================
-- PROBLEMA: Vendas podem ser feitas sem cliente, mas ao receber pagamento
-- o sistema exigia customer_id. Esta migração corrige isso.
-- ==============================================================================

-- Remove a constraint NOT NULL de customer_id
ALTER TABLE payment_records ALTER COLUMN customer_id DROP NOT NULL;

-- Atualiza a função de cálculo de saldo do cliente para ignorar pagamentos sem cliente
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
      AND status = 'pending'
      AND deleted_at IS NULL;

    -- Total já pago
    SELECT COALESCE(SUM(amount), 0) INTO total_paid
    FROM payment_records
    WHERE customer_id = p_customer_id
      AND deleted_at IS NULL;

    RETURN total_pending - total_paid;
END;
$$ LANGUAGE plpgsql;

SELECT 'Migração 003: customer_id agora é opcional em payment_records!' as message;
