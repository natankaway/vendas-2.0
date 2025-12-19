-- Migração de Produtos
-- Total: 184 registros

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '24bd337a-cbe3-4404-b235-550edb556d40',
  'Antartica Chopp',
  NULL,
  'PROD-4',
  NULL,
  NULL,
  6000,
  0,
  'CX',
  156,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c1ae4922-0188-4c63-b1b9-b3865f784d2d',
  'Brahma Chopp',
  NULL,
  'PROD-5',
  NULL,
  NULL,
  5300,
  0,
  'CX',
  105,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '57136f01-f5f5-4d79-8f21-6f7c15fff36f',
  'Antartica 600ml',
  NULL,
  'PROD-6',
  NULL,
  NULL,
  14200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e0650b3b-9337-455a-b8e3-5227d29d15e6',
  'Brahma 600ml',
  NULL,
  'PROD-7',
  NULL,
  NULL,
  15200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b8ab4bd6-179b-47c8-9e47-19dd107aab39',
  'Antartica 1L',
  NULL,
  'PROD-8',
  NULL,
  NULL,
  8800,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e3d845b7-7587-498b-8bba-2ad32827e87f',
  'Brahma 1L',
  NULL,
  'PROD-9',
  NULL,
  NULL,
  8800,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '48310698-ec7d-46f3-a79a-ed4bf1f49d61',
  'Itaipava 1L',
  NULL,
  'PROD-10',
  NULL,
  NULL,
  7500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '05c019a2-8e19-417a-a3d4-552efa6fbc70',
  'Coca-Cola Ret',
  NULL,
  'PROD-11',
  NULL,
  NULL,
  7350,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3161a21d-f4b5-4b22-b102-27d6d343a205',
  'Brahma Latão',
  NULL,
  'PROD-12',
  NULL,
  NULL,
  4900,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a276ead3-d980-4ca2-94f0-ea16f986c70d',
  'Antartica Latão',
  NULL,
  'PROD-13',
  NULL,
  NULL,
  4600,
  0,
  'CX',
  218,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '06c315e2-d741-4d41-b5dc-86dd777e67bd',
  'Brahma Brt',
  NULL,
  'PROD-14',
  NULL,
  NULL,
  5300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '15966f13-71a2-4be9-99f8-0da33ee38a3d',
  'Imperio Gold',
  NULL,
  'PROD-15',
  NULL,
  NULL,
  6600,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '74a6fd5b-fef3-43cb-b923-e660c0bff362',
  'Imperio Lager',
  NULL,
  'PROD-16',
  NULL,
  NULL,
  5000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e6aa71c2-b4c1-4a0b-9c25-d3eebe412100',
  'Imperio Latão',
  NULL,
  'PROD-17',
  NULL,
  NULL,
  4500,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ae31ba7e-b893-4b08-8449-c0bb411fb878',
  'Coca-Cola 2L',
  NULL,
  'PROD-18',
  NULL,
  NULL,
  5600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8a252f93-c794-4748-8c05-100ec1df4174',
  'Fanta Laranja 2L',
  NULL,
  'PROD-19',
  NULL,
  NULL,
  4600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '831785a0-4ba6-41ea-8f92-be26f4dc9b53',
  'Fanta Uva 2L',
  NULL,
  'PROD-20',
  NULL,
  NULL,
  4600,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '585ad5a8-2c06-476c-b505-1199659d1775',
  'Sprite 2L',
  NULL,
  'PROD-21',
  NULL,
  NULL,
  4600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '32dcb7c0-52f6-4e2e-ad12-7c50626dac1b',
  'Guarana Antartica 2L',
  NULL,
  'PROD-22',
  NULL,
  NULL,
  4600,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '36a29631-753a-459f-9cfc-0e2dd8955323',
  'Convenção 2L',
  NULL,
  'PROD-23',
  NULL,
  NULL,
  2450,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7ec2ff42-8316-4bfe-8193-c88aafff8dd7',
  'Font Energico 2L',
  NULL,
  'PROD-24',
  NULL,
  NULL,
  4000,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '375c5bb4-27ca-41ad-8398-9a84a2c36a5f',
  'Font Energico 2L U',
  NULL,
  'PROD-25',
  NULL,
  NULL,
  800,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0f8e81e3-b6a3-4b68-9526-4895a6f5266a',
  'Coca-Cola Lata',
  NULL,
  'PROD-26',
  NULL,
  NULL,
  4000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd1d2afe3-a0a5-440a-b078-870999817644',
  'Guarana Antartica lata',
  NULL,
  'PROD-27',
  NULL,
  NULL,
  3800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '251d3659-333d-47a3-a37e-93d1e7102488',
  'Fanta Laranja lata',
  NULL,
  'PROD-28',
  NULL,
  NULL,
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b21a9976-eb4f-44fe-a8ba-1148e3c3848b',
  'Fanta Uva Lata',
  NULL,
  'PROD-29',
  NULL,
  NULL,
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4556fe38-d329-40aa-8074-ebecb56d3439',
  'Coca latinha',
  NULL,
  'PROD-30',
  NULL,
  NULL,
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c4eefd39-f385-4994-ab77-a0d466c0051b',
  'Agua Mineral',
  NULL,
  'PROD-31',
  NULL,
  NULL,
  1300,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '362cb6c6-1166-4129-9e13-213d669dcec8',
  'Vinho 860 ml',
  NULL,
  'PROD-32',
  NULL,
  NULL,
  6500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '03b66464-b434-49c0-b6e9-af232692578a',
  'Galão vinho',
  NULL,
  'PROD-33',
  NULL,
  NULL,
  3300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '418a3671-97ad-456b-a612-43c33cf431e5',
  'Ousadia Limão',
  NULL,
  'PROD-34',
  NULL,
  NULL,
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3d996f46-4c79-46f4-b7ba-6b628d96058b',
  'Ousadia Banana',
  NULL,
  'PROD-35',
  NULL,
  NULL,
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1462f666-8fd0-4d3d-a011-ab9b65d9bc5b',
  'Guaracamp',
  NULL,
  'PROD-36',
  NULL,
  NULL,
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a1510b56-5172-460d-8cd4-0e2d602d7717',
  'Coca-Cola 2L U',
  NULL,
  'PROD-37',
  NULL,
  NULL,
  900,
  0,
  'UN',
  21,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c6862d85-32f9-453b-9f41-8cdf194dded9',
  'Fanta uva 2L U',
  NULL,
  'PROD-38',
  NULL,
  NULL,
  800,
  0,
  'UN',
  136,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4807f994-68db-44b1-aafa-d8df31a15f96',
  'Fanta Laranja 2L U',
  NULL,
  'PROD-39',
  NULL,
  NULL,
  600,
  0,
  'UN',
  124,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cc755ceb-8c2b-4023-8eaf-e83f94e3b068',
  'Guarana Antartica 2L U',
  NULL,
  'PROD-40',
  NULL,
  NULL,
  800,
  0,
  'UN',
  166,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd97fa90d-518b-477d-a97e-a51221896c25',
  'Coca-Cola Ret U',
  NULL,
  'PROD-41',
  NULL,
  NULL,
  600,
  0,
  'UN',
  313,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd5188f07-9efa-4c5b-a25a-09c176a71d51',
  'Brahma Chopp U',
  NULL,
  'PROD-42',
  NULL,
  NULL,
  250,
  0,
  'UN',
  10624,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7776b9d9-50f5-42ec-99ed-296b590ac6ad',
  'Antartica Chopp U',
  NULL,
  'PROD-43',
  NULL,
  NULL,
  250,
  0,
  'UN',
  1413,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '71bb1b0f-8f8f-4c32-91e3-e7b10040d785',
  'Brahma Latão U',
  NULL,
  'PROD-44',
  NULL,
  NULL,
  350,
  0,
  'UN',
  2534,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '94f7731d-2b01-4c4b-8397-0e0e02661ff7',
  'Antartica Latão U',
  NULL,
  'PROD-45',
  NULL,
  NULL,
  400,
  0,
  'UN',
  1180,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd93b1e64-d455-493c-9860-46dcd8a6437f',
  'Brahma Brt U',
  NULL,
  'PROD-46',
  NULL,
  NULL,
  500,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a9152fc3-6d48-4afb-b408-d0346a98e9c8',
  'Red Bull lata',
  NULL,
  'PROD-47',
  NULL,
  NULL,
  17500,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd5a555b7-3d6c-4c02-a894-b4462774a59d',
  '51',
  NULL,
  'PROD-48',
  NULL,
  NULL,
  12000,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8375ce10-9db7-4f34-ab2f-b616511e7d7f',
  '51 U',
  NULL,
  'PROD-49',
  NULL,
  NULL,
  1300,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e6f5d208-ecb9-427a-abe9-35b31f4beffb',
  'Pedra 90',
  NULL,
  'PROD-50',
  NULL,
  NULL,
  4800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5ba3537e-89e9-4d3b-b07e-68b46c448794',
  '88',
  NULL,
  'PROD-51',
  NULL,
  NULL,
  1600,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0560b5b-1fa2-48cc-bd23-e69af8774d3d',
  'Dreher',
  NULL,
  'PROD-52',
  NULL,
  NULL,
  2000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7c555521-8175-4d78-9594-1f865cc50948',
  'Fogo Paulista',
  NULL,
  'PROD-53',
  NULL,
  NULL,
  3100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'dadc645a-f827-40d4-9f5a-2304972e138c',
  'Quinado',
  NULL,
  'PROD-54',
  NULL,
  NULL,
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e378b0b2-1da2-4700-9054-03fac9ae7ffb',
  'Dubar',
  NULL,
  'PROD-55',
  NULL,
  NULL,
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '409900c0-2eac-427f-ac0c-9e6fe50f28ae',
  'Genebra',
  NULL,
  'PROD-56',
  NULL,
  NULL,
  2700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4f4ddb55-be8c-4de5-8cce-fa965c7d2e88',
  'Caninha da Roça',
  NULL,
  'PROD-57',
  NULL,
  NULL,
  4800,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f9fbf241-959d-41db-8aac-42a7e97fa63d',
  'São joão da barra',
  NULL,
  'PROD-58',
  NULL,
  NULL,
  1900,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ca3676f2-ed73-4b89-9059-8b03130489e9',
  'Vodka Kovak',
  NULL,
  'PROD-59',
  NULL,
  NULL,
  2500,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '865040ce-2057-47f3-b3ab-5f6ea166451c',
  'Ipioca S. Palha',
  NULL,
  'PROD-60',
  NULL,
  NULL,
  2400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7158a576-b17f-4f5c-a68b-165bb3030eba',
  'MEL',
  NULL,
  'PROD-61',
  NULL,
  NULL,
  1100,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e771facf-51fb-4e7d-a17c-e0fc3b66f8af',
  'Aniz',
  NULL,
  'PROD-62',
  NULL,
  NULL,
  1300,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '14c32af5-8c43-481c-a3d3-4c8bb622b3bf',
  'Hortelã',
  NULL,
  'PROD-63',
  NULL,
  NULL,
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0e2b27df-81bc-4106-8b92-6829c0113aaa',
  'Paratudo',
  NULL,
  'PROD-64',
  NULL,
  NULL,
  1700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a50e564d-d0a3-40bb-946c-a96faf43b99a',
  'Pessêgo',
  NULL,
  'PROD-65',
  NULL,
  NULL,
  1500,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a08cd89a-ffe4-4544-9044-43b8a53e5571',
  'Vodka Smirnoff',
  NULL,
  'PROD-66',
  NULL,
  NULL,
  3700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9837063d-b288-4f7c-8d34-8cbcc33d9e0b',
  'Vodka Leonoff',
  NULL,
  'PROD-67',
  NULL,
  NULL,
  1900,
  0,
  'UN',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0e8a48d-cd8e-4b0f-82dd-dc3ab0b6029c',
  'Saco Carvão 3k',
  NULL,
  'PROD-68',
  NULL,
  NULL,
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fc437c06-02bf-4ac0-bca5-48c5e5198d58',
  'Saco Carvão 6kg',
  NULL,
  'PROD-69',
  NULL,
  NULL,
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2d493c90-b315-4dff-8849-0da40e300e4d',
  'copo desc 200 ml',
  NULL,
  'PROD-70',
  NULL,
  NULL,
  13500,
  0,
  'CX',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '82114310-1d9f-43f7-ac22-a743afdf1327',
  'Heineken',
  NULL,
  'PROD-71',
  NULL,
  NULL,
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd39f74b1-0800-4af0-bcbf-c00418fd2956',
  'Catuaba',
  NULL,
  'PROD-72',
  NULL,
  NULL,
  1100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a4a33cb9-2505-4030-b7cc-5ee9b65da6b8',
  'Fanta Laranja Ret',
  NULL,
  'PROD-73',
  NULL,
  NULL,
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd38077ff-167c-4b6c-a340-1f9f0602702a',
  'Fazenda Velha',
  NULL,
  'PROD-74',
  NULL,
  NULL,
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8e005872-13ec-4b64-b955-a20f3731e449',
  'Vodka Maravilha',
  NULL,
  'PROD-75',
  NULL,
  NULL,
  500,
  0,
  'UN',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd33bddeb-f4bd-43e6-ba8d-73817b05195a',
  'Jurubeba',
  NULL,
  'PROD-76',
  NULL,
  NULL,
  1550,
  0,
  'UN',
  12,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e6969bfd-6d9e-4898-803e-d7ca08c11f70',
  'Jurupinga',
  NULL,
  'PROD-77',
  NULL,
  NULL,
  3000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '15bb4d93-3e33-4a8d-92e5-ef6336979c57',
  'Amendoim',
  NULL,
  'PROD-78',
  NULL,
  NULL,
  1500,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5daade76-7c34-48ee-bb22-b5dcae010de7',
  'Menta',
  NULL,
  'PROD-79',
  NULL,
  NULL,
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '70788d17-9426-4572-bf06-ae886bf602af',
  'Fanta Uva RET',
  NULL,
  'PROD-80',
  NULL,
  NULL,
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6f7b0802-f003-4cfe-9422-c5994cc8f187',
  'Skol Litrão',
  NULL,
  'PROD-81',
  NULL,
  NULL,
  7500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '57d01ffd-31e8-414b-a335-3f633fe0b812',
  'Água Tônica',
  NULL,
  'PROD-82',
  NULL,
  NULL,
  3400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '540dff5a-4990-44ff-8abc-863fee15982b',
  'Budweiser',
  NULL,
  'PROD-83',
  NULL,
  NULL,
  11000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c3eb11de-9909-4e3d-9c0e-7622e669bb48',
  'Corona',
  NULL,
  'PROD-84',
  NULL,
  NULL,
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '72966d88-8abb-461e-928c-d61a5ed799a5',
  'Domec',
  NULL,
  'PROD-85',
  NULL,
  NULL,
  4000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd4e6b0e9-b64c-4d0c-bc82-cbfb809446f3',
  'Brahma Duplo Malte',
  NULL,
  'PROD-87',
  NULL,
  NULL,
  3700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '67b00cc5-8759-4cfb-a3bf-7fb25a3a32de',
  'Gelo Filtrado',
  NULL,
  'PROD-88',
  NULL,
  NULL,
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fb204564-89f7-45b9-b8d2-c1d919a5d160',
  'Gelo',
  NULL,
  'PROD-89',
  NULL,
  NULL,
  1200,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '85d67dd8-df06-4feb-ab1b-bb2244b0c4dd',
  'Jogo de Mesa',
  NULL,
  'PROD-90',
  NULL,
  NULL,
  700,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '93bf49f5-f523-491c-9c5b-73d4d734a70b',
  'Convenção Un.',
  NULL,
  'PROD-91',
  NULL,
  NULL,
  400,
  0,
  'UN',
  94,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '17bbc2e1-dad0-4451-8ae7-13f90b108528',
  'Energético Dopamina',
  NULL,
  'PROD-92',
  NULL,
  NULL,
  10000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e5a497be-769a-42ba-b4ab-bc87c073e049',
  'Água com Gás',
  NULL,
  'PROD-93',
  NULL,
  NULL,
  1900,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c6ab0d87-99c5-4bda-95c0-aa3685633919',
  'caninha da roça unidade',
  NULL,
  'PROD-95',
  NULL,
  NULL,
  250,
  0,
  'UN',
  54,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '11235d63-04f5-4860-b03b-d8dc7298f225',
  'Chopp de Vinho',
  NULL,
  'PROD-1095',
  NULL,
  NULL,
  5000,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd0625d4b-4df4-47af-a0b4-8ebb915fbe48',
  'Red Bull unidade',
  NULL,
  'PROD-1096',
  NULL,
  NULL,
  800,
  0,
  'UN',
  52,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2a85fd3c-0d79-43c8-a494-e130f3ca617a',
  'Heineken Un.',
  NULL,
  'PROD-1097',
  NULL,
  NULL,
  600,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '664bd743-79ac-493d-af27-93a23c0406f7',
  'Água 1,5L',
  NULL,
  'PROD-1098',
  NULL,
  NULL,
  1400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f063c645-7f74-41ff-9579-90660590d198',
  'Stella Artois',
  NULL,
  'PROD-1099',
  NULL,
  NULL,
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9a72ee73-e096-4d16-ac06-3cdcb163fb2b',
  'Heineken Sem Álcool',
  NULL,
  'PROD-1100',
  NULL,
  NULL,
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f5401a17-06fb-4930-b8c7-a405cb7b94fa',
  'Carvão 3kg',
  NULL,
  'PROD-1101',
  NULL,
  NULL,
  1700,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd562a519-c567-4a68-8526-42c602d7c7ae',
  'Carvão 6kg',
  NULL,
  'PROD-1102',
  NULL,
  NULL,
  2000,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd74f2e69-b232-4e43-8daf-f5a724aaae8e',
  'Convenção Laranja 2L',
  NULL,
  'PROD-1103',
  NULL,
  NULL,
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '733668aa-de10-44d8-9c8f-2c207ace2f5b',
  'Convenção Limão 2L',
  NULL,
  'PROD-1104',
  NULL,
  NULL,
  2100,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c40d9452-f67f-4303-ac7c-08b8ad320a67',
  'Convenção Uva 2L',
  NULL,
  'PROD-1105',
  NULL,
  NULL,
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b1e77b4a-9deb-44b3-9eba-0f12ca8c21b8',
  'Gatorade Limão',
  NULL,
  'PROD-1106',
  NULL,
  NULL,
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '97e7938c-146f-4d77-a9f4-ae816a5a58aa',
  'Gatorade Uva',
  NULL,
  'PROD-1107',
  NULL,
  NULL,
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5edc3e35-2225-4e28-b26d-9993a8c491bc',
  'Gatorade Morango com Maracujá',
  NULL,
  'PROD-1108',
  NULL,
  NULL,
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '35110cdd-fa55-4f3f-969f-a112d5a4c7b3',
  'Gatorade Maracujá',
  NULL,
  'PROD-1109',
  NULL,
  NULL,
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2fe71f4b-78a6-44b0-ac11-20ec962dfa90',
  'Gatorade Laranja',
  NULL,
  'PROD-1110',
  NULL,
  NULL,
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9e9dc5c5-d2be-4368-9d1c-7b4e1c6a6166',
  'Gatorade Frutas Cítricas',
  NULL,
  'PROD-1111',
  NULL,
  NULL,
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3902fd93-48d4-4789-975e-9b8c70bfecbb',
  'Gatorade Tangerina',
  NULL,
  'PROD-1112',
  NULL,
  NULL,
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd991fb0e-5b2a-4441-a6c4-293650a47243',
  'GT LONG NECK',
  NULL,
  'PROD-1113',
  NULL,
  NULL,
  14900,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'df9c0cf0-8342-4586-9351-19dec34bfe66',
  'Corona Unidade',
  NULL,
  'PROD-1114',
  NULL,
  NULL,
  550,
  0,
  'UN',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7c777e48-5887-4fe3-a13c-2d1cdecae09e',
  'Água de Coco 200ML',
  NULL,
  'PROD-1115',
  NULL,
  NULL,
  350,
  0,
  'UN',
  1350,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a484f015-3ecc-452f-b081-e4451c5ff21e',
  'Chivas',
  NULL,
  'PROD-1116',
  NULL,
  NULL,
  14000,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0e35d371-a929-4bda-ac98-622848267178',
  '43',
  NULL,
  'PROD-1117',
  NULL,
  NULL,
  16000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '754f2885-5fbc-40b5-b401-e664eab77d79',
  'Buchanan´s',
  NULL,
  'PROD-1118',
  NULL,
  NULL,
  18000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '676de9f9-102e-4ba4-b7ab-538622e5b2cf',
  'Balantines',
  NULL,
  'PROD-1119',
  NULL,
  NULL,
  8000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '15e04839-feee-4c03-83ba-468a207c3a66',
  'RedLabel',
  NULL,
  'PROD-1120',
  NULL,
  NULL,
  9000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '657c0650-6238-4046-94f3-f5a2da5b919d',
  'BlackLabel',
  NULL,
  'PROD-1121',
  NULL,
  NULL,
  17000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '95af72c9-f0f8-4352-8fc7-47c606535207',
  'OldPar',
  NULL,
  'PROD-1122',
  NULL,
  NULL,
  14000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b55ef1fa-8acf-4751-af18-534e7090bdba',
  'Casa Perini',
  NULL,
  'PROD-1123',
  NULL,
  NULL,
  6000,
  0,
  'UN',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cfcb0e4f-7132-45fb-a4bd-9dd60a38711e',
  'Tanqueray',
  NULL,
  'PROD-1124',
  NULL,
  NULL,
  11000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9624ea79-2c65-405e-a92c-eb8167dbfba9',
  'Cavalo Branco',
  NULL,
  'PROD-1125',
  NULL,
  NULL,
  8000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd6794ad7-1f14-4ca9-9751-c75370e199cc',
  'Gordons',
  NULL,
  'PROD-1126',
  NULL,
  NULL,
  7000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c0ebaa00-e5b2-4bf6-96bb-99e6629a2b6e',
  'Gordons Rosa',
  NULL,
  'PROD-1127',
  NULL,
  NULL,
  9000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4cd5cdab-bb35-4055-b157-529a476daf6c',
  'Copo Descartável 200ML',
  NULL,
  'PROD-1128',
  NULL,
  NULL,
  600,
  0,
  'UN',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7ab4b2fb-d823-4773-8b87-f989309a98a9',
  'Sminorff Ice',
  NULL,
  'PROD-1129',
  NULL,
  NULL,
  700,
  0,
  'UN',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'de601591-88df-48e3-ae8b-959206e17bf6',
  'Sprite Lata',
  NULL,
  'PROD-1130',
  NULL,
  NULL,
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9ff291c9-fc90-4b0f-85b0-ab8608578f99',
  'Smirnoff 600ML',
  NULL,
  'PROD-1131',
  NULL,
  NULL,
  2500,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '40f7cd1b-a917-4fb2-9368-7bd7055da426',
  'Absolut 1L',
  NULL,
  'PROD-1132',
  NULL,
  NULL,
  9990,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cfc83e81-e60e-4629-b67d-07b1208dbebe',
  'Ciroc 750ML',
  NULL,
  'PROD-1133',
  NULL,
  NULL,
  17390,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd73fdf68-2614-467b-a248-f04c4bee3249',
  'Tônica Fys',
  NULL,
  'PROD-1134',
  NULL,
  NULL,
  269,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '92eea78d-2aab-43ef-b31a-ca7459ca9269',
  'Amstel Latão',
  NULL,
  'PROD-1135',
  NULL,
  NULL,
  5300,
  0,
  'UN',
  13,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0cb28e36-e9f7-4bef-8f57-d19055d15b33',
  'stella Artois UN.',
  NULL,
  'PROD-1136',
  NULL,
  NULL,
  500,
  0,
  'UN',
  212,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7335d641-68e6-4da5-bd1c-9fc35519e2e5',
  'Gin Bombay',
  NULL,
  'PROD-1137',
  NULL,
  NULL,
  11000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0118f7a4-e9fc-415c-bce6-969ba384ba80',
  'Skol Chopp',
  NULL,
  'PROD-1138',
  NULL,
  NULL,
  4200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f0809acf-192c-4ba4-85e7-02ffd258488b',
  'Chopinho de Vinho',
  NULL,
  'PROD-1139',
  NULL,
  NULL,
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '68124631-c0df-433b-b32e-75c693ac0c78',
  'Nosso Chop De Vinho',
  NULL,
  'PROD-1140',
  NULL,
  NULL,
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2d519c34-5945-4005-9804-f01d94538f01',
  'GT UNIDADE',
  NULL,
  'PROD-1141',
  NULL,
  NULL,
  700,
  0,
  'UN',
  23,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '113cae98-60df-44d1-b4af-9f95cd6c10e0',
  'Sprite Un.',
  NULL,
  'PROD-1142',
  NULL,
  NULL,
  700,
  0,
  'UN',
  16,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ab928640-72f6-41c4-b27c-67eae324225a',
  'Heineken Zero Un.',
  NULL,
  'PROD-1143',
  NULL,
  NULL,
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6c364496-570f-4026-ad16-1e6b5de03a36',
  'Spaten',
  NULL,
  'PROD-1144',
  NULL,
  NULL,
  16500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '44f6a25f-db58-41b5-9b4a-625b5a765105',
  'Budwiser Unidade',
  NULL,
  'PROD-1145',
  NULL,
  NULL,
  550,
  0,
  'UN',
  89,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f096df6a-4034-48a7-b997-b33bb7192653',
  '1/2 gelo',
  NULL,
  'PROD-1146',
  NULL,
  NULL,
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '641768e7-330d-41c1-9230-336612d02c0f',
  'Império Gold UN.',
  NULL,
  'PROD-1147',
  NULL,
  NULL,
  400,
  0,
  'UN',
  44,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'dabb6068-442d-4fa0-9d8a-aa20a2ffa08e',
  'Tenda Lona',
  NULL,
  'PROD-1148',
  NULL,
  NULL,
  25000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7729728c-093b-4833-bf2c-101a25472c28',
  'Spaten Un.',
  NULL,
  'PROD-1149',
  NULL,
  NULL,
  900,
  0,
  'UN',
  56,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '73a04ded-4e87-4180-9722-af93bb33fbff',
  'Ice Kovak',
  NULL,
  'PROD-1150',
  NULL,
  NULL,
  9500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e7e17dbe-3937-435b-b981-c8d1c23d77d1',
  'Amstel 600ml',
  NULL,
  'PROD-1151',
  NULL,
  NULL,
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1428854b-d9e8-430d-913e-a1d4313d7da6',
  '51 em lata',
  NULL,
  'PROD-1152',
  NULL,
  NULL,
  2000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1580e735-630b-44e5-a895-7f22d0f6d83f',
  'Água Galão 20L',
  NULL,
  'PROD-1153',
  NULL,
  NULL,
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '61f1862b-352f-4825-b14a-7bbfd69d5ea4',
  'Vinho Bled Un.',
  NULL,
  'PROD-1154',
  NULL,
  NULL,
  900,
  0,
  'UN',
  111,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '54e6771e-cb01-45ef-9eee-7f091889bee3',
  'Gold Label',
  NULL,
  'PROD-1155',
  NULL,
  NULL,
  23000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ec394154-0326-4b16-bc23-1a6afcf995a2',
  'Brahma Chopp Gelada',
  NULL,
  'PROD-1156',
  NULL,
  NULL,
  5500,
  0,
  'CX',
  51,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2504d58b-1bd2-4f84-b2b2-47f6392229f7',
  'Antártica Chopp Gelada',
  NULL,
  'PROD-1157',
  NULL,
  NULL,
  6200,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd76c14e3-9409-4a69-a861-a031d0aef6d5',
  'Jogos de mesa',
  NULL,
  'PROD-1158',
  NULL,
  NULL,
  700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c869b4f9-f2c9-4509-a80e-ae916f13c7f6',
  'Heineken Gelada',
  NULL,
  'PROD-1159',
  NULL,
  NULL,
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9dc53785-6b16-4bd0-9c0f-8760a6638a6d',
  '51 600ml',
  NULL,
  'PROD-1160',
  NULL,
  NULL,
  500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4042b955-a37c-4fcb-98ce-7eb0904c2ec4',
  'FANTA UVA LATA COM 06 UNIDADES',
  NULL,
  'PROD-1162',
  NULL,
  NULL,
  1500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3c1edb2b-8296-4f15-b0b6-c4e409acd70c',
  'Brahma Litrao Gelada',
  NULL,
  'PROD-1163',
  NULL,
  NULL,
  8600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '598e9ce9-aec9-46c9-ba70-a489285120d9',
  'Antartica Litrao Gelada',
  NULL,
  'PROD-1164',
  NULL,
  NULL,
  9000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'aaabc3a0-24a0-4129-8fec-4535a45d50f9',
  'Império Latão Gelada',
  NULL,
  'PROD-1165',
  NULL,
  NULL,
  4700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8584c23d-048e-461d-bfbf-5a2f442bfd98',
  'Amstel Latão Gelado',
  NULL,
  'PROD-1166',
  NULL,
  NULL,
  5400,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2faae499-bc1a-4df7-806b-92fedacba5ab',
  'BRAHMA LATAO GELADA',
  NULL,
  'PROD-1167',
  NULL,
  NULL,
  5000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6068eff6-a853-437b-a62f-ac89c4ab741c',
  'ANTARTICA LATAO GELADA',
  NULL,
  'PROD-1168',
  NULL,
  NULL,
  4700,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '23b46e57-9d6c-492e-b7aa-bdfedaf17d06',
  'IMPERIO GOLG GELADA',
  NULL,
  'PROD-1169',
  NULL,
  NULL,
  6800,
  0,
  'CX',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd8265cfc-a85d-4ae8-9fbb-9ad7252db22d',
  'GUARANÁ ANTÁRTICA 1L',
  NULL,
  'PROD-1170',
  NULL,
  NULL,
  2600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '041430d9-c761-47cf-80b8-0c4849aac028',
  'BANANINHA',
  NULL,
  'PROD-1171',
  NULL,
  NULL,
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '07e68ecf-153f-4895-b786-7e8a3629f86f',
  'IMPÉRIO GOLD GELADA',
  NULL,
  'PROD-1172',
  NULL,
  NULL,
  6800,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c4b0d8df-2262-495c-b506-edab437c58fe',
  'COCA RETORNAVEL GELADA',
  NULL,
  'PROD-1173',
  NULL,
  NULL,
  7500,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'dad696b2-5f6f-4311-9423-c7fa8c0aa07b',
  'BUDWISER CHOPINHO',
  NULL,
  'PROD-2095',
  NULL,
  NULL,
  6300,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '85ca6e68-c714-4546-bf3a-2966a715ddfa',
  'HEINEKEN LATÃO',
  NULL,
  'PROD-2096',
  NULL,
  NULL,
  7000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '59758ed8-df07-4fb1-9edc-fd0c6f3593bc',
  'ITAIPAVA LATÃO',
  NULL,
  'PROD-3096',
  NULL,
  NULL,
  3700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4d4c110a-5733-4aaa-ae2d-4092a9284779',
  'ANTÁRTICA CHOP 23 QUENTE',
  NULL,
  'PROD-4096',
  NULL,
  NULL,
  6300,
  0,
  'CX',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd12f0146-f144-4c43-bfef-5e64d26e7e1a',
  'BRAHMA CHOP. 23 QUENTE',
  NULL,
  'PROD-5096',
  NULL,
  NULL,
  5600,
  0,
  'CX',
  50,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '19e08864-b75a-4ce1-8606-a55be8f653f7',
  'ANTÁRTICA CHOP 23 GELADA',
  NULL,
  'PROD-5097',
  NULL,
  NULL,
  6500,
  0,
  'CX',
  98,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b95ae767-fb44-4a59-aa76-6e7483c6d3c7',
  'BRAHMA CHOP. 23 GELADA',
  NULL,
  'PROD-5099',
  NULL,
  NULL,
  5800,
  0,
  'CX',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '879f4fd7-cec2-4160-b3a4-599de439ed48',
  'IMPÉRIO CHOP. QUENTE',
  NULL,
  'PROD-6096',
  NULL,
  NULL,
  5500,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0f132c2-6c9d-4809-a577-0bac0bc6dbf6',
  'IMPÉRIO CHOP. GELADA',
  NULL,
  'PROD-6097',
  NULL,
  NULL,
  5700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '36ca0b02-4a1f-4c4f-879d-435cfb4c8053',
  'BRAHMA MALZBIER LONG NECK',
  NULL,
  'PROD-7096',
  NULL,
  NULL,
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '85724e36-1332-464b-a642-aae82c7f7c00',
  'CONVENÇÃO ABACAXI',
  NULL,
  'PROD-7097',
  NULL,
  NULL,
  2600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ca408f0d-11bf-4d7e-84ab-2013b7720104',
  'SPATEN LONG NECK',
  NULL,
  'PROD-7098',
  NULL,
  NULL,
  12700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c30f08ba-4560-421f-aa98-4dc370f6736e',
  'ANTÁRTICA CHOP23 QUENTE',
  NULL,
  'PROD-7099',
  NULL,
  NULL,
  5400,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ae37b525-1d98-4e37-8547-5af8b9ae2094',
  'ANTÁRTICA CHOP23 GELADA',
  NULL,
  'PROD-7100',
  NULL,
  NULL,
  5600,
  0,
  'CX',
  81,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '09eee0e0-2481-42d0-89e5-a16ce4bd4e14',
  'HEINEKEN LATÃO GELADA',
  NULL,
  'PROD-8099',
  NULL,
  NULL,
  7200,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '206c441b-3fe9-4ee8-a701-ad2768a28138',
  'COCA ZERO RETORNÁVEL',
  NULL,
  'PROD-8100',
  NULL,
  NULL,
  7350,
  0,
  'CX',
  29,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T15:25:59.010Z',
  '2025-12-19T15:25:59.010Z'
) ON CONFLICT (id) DO NOTHING;

