# Instruções de Migração

Gerado em: 2025-12-19T16:13:25.103Z

## IMPORTANTE
Execute primeiro: `scripts/migrations/007_add_expiration_date_to_products.sql`

## Ordem de Execução

Execute os arquivos na ordem numérica:

1. `01_categories.sql` (16 categorias)
2. `02_customers.sql` (clientes)
3. `03_products.sql` (produtos)
4. `04_sales_part01.sql` até `04_sales_part38.sql` (18681 vendas em 38 partes)
5. `05_sale_items_part01.sql` até `05_sale_items_part108.sql` (53578 itens em 108 partes)
6. `06_update_product_names.sql`
7. `07_update_customer_totals.sql`
