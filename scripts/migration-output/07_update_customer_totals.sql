
-- Atualização de totais de compras dos clientes
UPDATE customers SET total_purchases = COALESCE((
    SELECT SUM(s.total)
    FROM sales s
    WHERE s.customer_id = customers.id
    AND s.status = 'completed'
  ), 0);
