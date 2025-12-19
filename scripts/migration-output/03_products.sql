-- Migração de Produtos
-- Total: 184 registros

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '15a53bbe-a238-473a-8ddf-b0fbc24aa22a',
  'Antartica Chopp',
  NULL,
  'PROD-4',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  6000,
  0,
  'CX',
  156,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7650073d-b949-4160-bc16-d7052699a2aa',
  'Brahma Chopp',
  NULL,
  'PROD-5',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5300,
  0,
  'CX',
  105,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '392695df-d266-4306-8a43-984548fda03b',
  'Antartica 600ml',
  NULL,
  'PROD-6',
  NULL,
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  14200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6a4e6228-bdd7-478b-922a-28a2c6371ced',
  'Brahma 600ml',
  NULL,
  'PROD-7',
  NULL,
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  15200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '64b96ea5-dd0e-4e82-a3bb-565d07ad6585',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '80b54671-ff0f-4ad2-825f-27d391891da8',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '98c36fe9-48a8-4c9d-a387-24d0a7de68bb',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5e708b55-d69e-4e31-b192-c313d9bb0334',
  'Coca-Cola Ret',
  NULL,
  'PROD-11',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  7350,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '13bfc4ff-14d8-46f3-9d89-e94387071db0',
  'Brahma Latão',
  NULL,
  'PROD-12',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  4900,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '65b2446e-6e70-4610-8392-3949c68b7eb6',
  'Antartica Latão',
  NULL,
  'PROD-13',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  4600,
  0,
  'CX',
  218,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e9857814-1e88-469d-959e-c51504aa84a2',
  'Brahma Brt',
  NULL,
  'PROD-14',
  NULL,
  '680f7390-811e-47c3-9fb2-1db6ea2d1b27',
  5300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3bebc07b-10eb-4f59-b96d-d36e4fedc85b',
  'Imperio Gold',
  NULL,
  'PROD-15',
  NULL,
  '065149e5-2048-432f-b654-6cf1a078a73e',
  6600,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0d3b0881-ad05-49bc-abb2-9281a778f254',
  'Imperio Lager',
  NULL,
  'PROD-16',
  NULL,
  '903b57d3-4171-499d-90e7-d75f6046b179',
  5000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1542d40b-2ac5-4b6f-a1b4-62fe07982d04',
  'Imperio Latão',
  NULL,
  'PROD-17',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  4500,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '90665282-7b6d-4260-a14c-ba9f8ea86100',
  'Coca-Cola 2L',
  NULL,
  'PROD-18',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  5600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '12295508-386a-4f61-ab6f-590605a0b61a',
  'Fanta Laranja 2L',
  NULL,
  'PROD-19',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  4600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '893282f1-19a7-43d6-91c7-8c9c86329089',
  'Fanta Uva 2L',
  NULL,
  'PROD-20',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  4600,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '666bfa1a-aaae-42ea-b269-d6d317471b62',
  'Sprite 2L',
  NULL,
  'PROD-21',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  4600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd753a2d0-6103-41b4-b443-d91aa22c1ea6',
  'Guarana Antartica 2L',
  NULL,
  'PROD-22',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  4600,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '01f16f62-47ed-4885-9780-b00526d85546',
  'Convenção 2L',
  NULL,
  'PROD-23',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2450,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7831b3e9-0e5c-4e8d-ab4f-bac01c640c4a',
  'Font Energico 2L',
  NULL,
  'PROD-24',
  NULL,
  '563d5cf0-3244-42b8-af5a-72940a7c2d35',
  4000,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'eca2f24f-80b8-46ac-9bcd-1306d93a24d9',
  'Font Energico 2L U',
  NULL,
  'PROD-25',
  NULL,
  '563d5cf0-3244-42b8-af5a-72940a7c2d35',
  800,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '01dcdfec-6975-4fd8-af4b-8b48be219ee7',
  'Coca-Cola Lata',
  NULL,
  'PROD-26',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  4000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e2c17f7b-77c6-4462-82f5-5b1391dc0947',
  'Guarana Antartica lata',
  NULL,
  'PROD-27',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  3800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '74631893-f3cd-48fe-bbe6-6ab48f4be747',
  'Fanta Laranja lata',
  NULL,
  'PROD-28',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3e47b55f-807b-48b0-827b-5a3bee1b2d72',
  'Fanta Uva Lata',
  NULL,
  'PROD-29',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '561f4263-605f-4166-b3dd-fa8ec0d60ef5',
  'Coca latinha',
  NULL,
  'PROD-30',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '89ac8368-ee46-4487-accc-ffc6ea472cc6',
  'Agua Mineral',
  NULL,
  'PROD-31',
  NULL,
  'b8979d31-c855-4351-93d5-1d04f690c82f',
  1300,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c21e9d82-eaf6-4026-af49-27c42a9947ff',
  'Vinho 860 ml',
  NULL,
  'PROD-32',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  6500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4231ccf0-91cc-480a-94f7-c81ca71d124b',
  'Galão vinho',
  NULL,
  'PROD-33',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  3300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1396ccd4-50df-4851-8f53-05beb063e3fe',
  'Ousadia Limão',
  NULL,
  'PROD-34',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '677fe6d5-67ec-4a8d-9810-9512648a1cfc',
  'Ousadia Banana',
  NULL,
  'PROD-35',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7b9a0ee6-5052-453c-b8fa-1c5b832b876a',
  'Guaracamp',
  NULL,
  'PROD-36',
  NULL,
  '3ee84df4-9e36-4822-81c2-eac4e53aa10f',
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5eb7a2f5-96d1-4268-83a8-bec2d9de0723',
  'Coca-Cola 2L U',
  NULL,
  'PROD-37',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  900,
  0,
  'UN',
  21,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4c558d27-1801-4467-8b6c-ba8d0af5ac87',
  'Fanta uva 2L U',
  NULL,
  'PROD-38',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  800,
  0,
  'UN',
  136,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4c709265-98c2-4239-b20d-4b3b3953971f',
  'Fanta Laranja 2L U',
  NULL,
  'PROD-39',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  600,
  0,
  'UN',
  124,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c5538515-391d-4acb-96c3-a856067f8642',
  'Guarana Antartica 2L U',
  NULL,
  'PROD-40',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  800,
  0,
  'UN',
  166,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd0c0b91e-3597-4dc6-a8dc-6945bc5fa4db',
  'Coca-Cola Ret U',
  NULL,
  'PROD-41',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  600,
  0,
  'UN',
  313,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f52a5c14-6db1-4a9f-b79e-2f54da8d9814',
  'Brahma Chopp U',
  NULL,
  'PROD-42',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  250,
  0,
  'UN',
  10624,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1e9faed2-aa81-463f-8993-cea313a2af3e',
  'Antartica Chopp U',
  NULL,
  'PROD-43',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  250,
  0,
  'UN',
  1413,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'aa8bc922-6802-4a6f-a3d6-b99c81eb3edf',
  'Brahma Latão U',
  NULL,
  'PROD-44',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  350,
  0,
  'UN',
  2534,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f92cb016-a18b-45fa-8d79-a04e3c6f2af6',
  'Antartica Latão U',
  NULL,
  'PROD-45',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  400,
  0,
  'UN',
  1180,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4513e5c8-14b7-4cc7-aa68-650ee5c19e93',
  'Brahma Brt U',
  NULL,
  'PROD-46',
  NULL,
  '680f7390-811e-47c3-9fb2-1db6ea2d1b27',
  500,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '518ba378-6eb2-4815-8486-df6fea885f66',
  'Red Bull lata',
  NULL,
  'PROD-47',
  NULL,
  '563d5cf0-3244-42b8-af5a-72940a7c2d35',
  17500,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '44dd8859-e144-4c53-a53f-e268876b5411',
  '51',
  NULL,
  'PROD-48',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  12000,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '584a60e4-b5f3-4cde-8c40-1035649ecca5',
  '51 U',
  NULL,
  'PROD-49',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1300,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '61ad92ec-6b32-4b7f-bc6a-5f6d18fef700',
  'Pedra 90',
  NULL,
  'PROD-50',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  4800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd6d2cfdf-b8d4-43c3-bfa0-bfcd70945fad',
  '88',
  NULL,
  'PROD-51',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1600,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd0406e8f-9cb2-41a3-b11a-7b476a0348e2',
  'Dreher',
  NULL,
  'PROD-52',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f42bdfba-5d77-4877-9761-4a3a473d55c0',
  'Fogo Paulista',
  NULL,
  'PROD-53',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  3100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f4fa74da-8970-4d22-bf71-d2d58997e435',
  'Quinado',
  NULL,
  'PROD-54',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '00cfef6e-53d1-4c9f-a81c-5d79d75852fd',
  'Dubar',
  NULL,
  'PROD-55',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'adc9c78c-dae0-483f-b04d-0e3f83e56e82',
  'Genebra',
  NULL,
  'PROD-56',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f65f5105-ad15-444c-9114-25edef03f61e',
  'Caninha da Roça',
  NULL,
  'PROD-57',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  4800,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '658a6f92-f305-4cd2-a6ee-0ad625a67916',
  'São joão da barra',
  NULL,
  'PROD-58',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1900,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '364e2d81-2546-4712-9500-7374db6ebdd4',
  'Vodka Kovak',
  NULL,
  'PROD-59',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2500,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '47e6971d-f70e-43db-88fc-c6d339f65e06',
  'Ipioca S. Palha',
  NULL,
  'PROD-60',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f9530bf6-fcac-4395-a3e9-e75afc1f90a7',
  'MEL',
  NULL,
  'PROD-61',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1100,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '44214a18-2da5-4fa2-a705-20a1dd12637b',
  'Aniz',
  NULL,
  'PROD-62',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1300,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8313f594-6f8c-4d4b-af79-9b66729ccadf',
  'Hortelã',
  NULL,
  'PROD-63',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '86174434-0433-4788-97ee-527246c2da10',
  'Paratudo',
  NULL,
  'PROD-64',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ee33df1b-0f96-49e0-a205-3380a913e5ee',
  'Pessêgo',
  NULL,
  'PROD-65',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1500,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'bd8b3909-6a62-429d-8302-e917e1452a13',
  'Vodka Smirnoff',
  NULL,
  'PROD-66',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  3700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '763b5947-916f-495d-87d3-a8681ada9b39',
  'Vodka Leonoff',
  NULL,
  'PROD-67',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1900,
  0,
  'UN',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '848640a9-e8cc-4224-b03f-d3ffab077269',
  'Saco Carvão 3k',
  NULL,
  'PROD-68',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7555ca98-06c1-460f-8ed1-d9872480df69',
  'Saco Carvão 6kg',
  NULL,
  'PROD-69',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '28c4430d-c032-4c7b-857d-03b2331de7f9',
  'copo desc 200 ml',
  NULL,
  'PROD-70',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  13500,
  0,
  'CX',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a7517e01-d6d3-4a84-abec-e8c33b7a82c3',
  'Heineken',
  NULL,
  'PROD-71',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3e65e5fe-579b-4689-9d11-c7f63eeb6cfd',
  'Catuaba',
  NULL,
  'PROD-72',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fafb6253-e5f9-4cb8-9453-70e4a088ea28',
  'Fanta Laranja Ret',
  NULL,
  'PROD-73',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ee40a09e-d547-4e9a-8b35-23621d18fde4',
  'Fazenda Velha',
  NULL,
  'PROD-74',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '00401251-2fb3-406d-8f9c-6a38c43b91b9',
  'Vodka Maravilha',
  NULL,
  'PROD-75',
  NULL,
  '065149e5-2048-432f-b654-6cf1a078a73e',
  500,
  0,
  'UN',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '67b7bb19-74f6-47f5-91b0-81e8253b6757',
  'Jurubeba',
  NULL,
  'PROD-76',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1550,
  0,
  'UN',
  12,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c034ee22-1faa-4e6f-ab35-71d56d436bbe',
  'Jurupinga',
  NULL,
  'PROD-77',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  3000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ddf12e56-6d8d-47d1-b430-17b114633e7f',
  'Amendoim',
  NULL,
  'PROD-78',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1500,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '45127d2c-f2de-47a5-bb32-4188048f3bbd',
  'Menta',
  NULL,
  'PROD-79',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '23cd5c08-2c93-44be-af9c-e1ee38b6efc8',
  'Fanta Uva RET',
  NULL,
  'PROD-80',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '21079cc9-c4ca-4e4c-b68e-f700c9f3c3f3',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e674553d-44a9-4a13-a279-085fc4697ef1',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '91a78e55-e201-4848-bd9a-b06cb41e9a0f',
  'Budweiser',
  NULL,
  'PROD-83',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  11000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '973e3ad9-a305-4a41-9a29-1dbb41c512b0',
  'Corona',
  NULL,
  'PROD-84',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8859fa36-c2b2-42b1-a846-9aadc5dada88',
  'Domec',
  NULL,
  'PROD-85',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  4000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '59b0db08-0d80-4c92-bc29-6de53f4f3eaa',
  'Brahma Duplo Malte',
  NULL,
  'PROD-87',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  3700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f501aef8-b1f0-48cc-b103-bb3fc7b2a7cb',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0ad0d63b-633a-4e11-b907-2da726dda959',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2912da49-204d-4912-b72e-51bec871e7d7',
  'Jogo de Mesa',
  NULL,
  'PROD-90',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  700,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5d67f72a-1d43-4a6d-8e76-488a6f0081cf',
  'Convenção Un.',
  NULL,
  'PROD-91',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  400,
  0,
  'UN',
  94,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2ad55e16-8e6a-46b0-a273-f82ffff457cf',
  'Energético Dopamina',
  NULL,
  'PROD-92',
  NULL,
  '563d5cf0-3244-42b8-af5a-72940a7c2d35',
  10000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3f512131-aa4f-4e33-86fc-c55054d47a3a',
  'Água com Gás',
  NULL,
  'PROD-93',
  NULL,
  'b8979d31-c855-4351-93d5-1d04f690c82f',
  1900,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd8665e00-d91c-44cc-ac41-c139696afa12',
  'caninha da roça unidade',
  NULL,
  'PROD-95',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  250,
  0,
  'UN',
  54,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a44d1966-6f1d-4c46-8553-348ae36230e9',
  'Chopp de Vinho',
  NULL,
  'PROD-1095',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  5000,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '478af8a6-730a-4afa-8127-54eab4a62d34',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '61af97a6-d0d1-44c9-b301-16867946f05e',
  'Heineken Un.',
  NULL,
  'PROD-1097',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  600,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f07aa879-c251-4b89-b226-db994c25b173',
  'Água 1,5L',
  NULL,
  'PROD-1098',
  NULL,
  'b8979d31-c855-4351-93d5-1d04f690c82f',
  1400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '03fe9b7a-95dc-45b0-b1bf-69856f3f32d2',
  'Stella Artois',
  NULL,
  'PROD-1099',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '82536230-413b-4f78-84ed-7bad430858a1',
  'Heineken Sem Álcool',
  NULL,
  'PROD-1100',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9ba53fd8-9f82-464f-a97f-4932608e1835',
  'Carvão 3kg',
  NULL,
  'PROD-1101',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  1700,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0fe2fcdb-94dc-4d5a-bf9f-9993a390b7bc',
  'Carvão 6kg',
  NULL,
  'PROD-1102',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  2000,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '97812416-893a-4b28-9489-b3ec3b307b21',
  'Convenção Laranja 2L',
  NULL,
  'PROD-1103',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9f2b9f52-a156-4432-9b7a-4827cdd8aa9f',
  'Convenção Limão 2L',
  NULL,
  'PROD-1104',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2100,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ad04d037-dede-4ca1-b620-040032bdfede',
  'Convenção Uva 2L',
  NULL,
  'PROD-1105',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'de51e19d-6f1e-4e5a-8ebb-ea6082f771ac',
  'Gatorade Limão',
  NULL,
  'PROD-1106',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cfb0d15f-2382-4a0e-8bde-a18ce3e174f8',
  'Gatorade Uva',
  NULL,
  'PROD-1107',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cf8abdd6-420f-4200-9c6b-a4860cf3661d',
  'Gatorade Morango com Maracujá',
  NULL,
  'PROD-1108',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ab5b28af-0c20-4507-82ff-751599c0f592',
  'Gatorade Maracujá',
  NULL,
  'PROD-1109',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '38c302db-c641-43da-a1e0-1906d528e26c',
  'Gatorade Laranja',
  NULL,
  'PROD-1110',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b48a1677-6379-4621-83d9-742c79b3d9da',
  'Gatorade Frutas Cítricas',
  NULL,
  'PROD-1111',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9c633c41-f7e6-4d6e-9e03-ecdb0f724d69',
  'Gatorade Tangerina',
  NULL,
  'PROD-1112',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '004c091b-3260-47fb-9e7a-e93aae127185',
  'GT LONG NECK',
  NULL,
  'PROD-1113',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  14900,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'df27e1a8-6be4-49e2-9f62-483147be512d',
  'Corona Unidade',
  NULL,
  'PROD-1114',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  550,
  0,
  'UN',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cc74ba2e-6db2-47c1-b385-8d0e911c1cba',
  'Água de Coco 200ML',
  NULL,
  'PROD-1115',
  NULL,
  '3ee84df4-9e36-4822-81c2-eac4e53aa10f',
  350,
  0,
  'UN',
  1350,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6c5f8c9c-1816-465e-9c7c-2bb33f9b5d87',
  'Chivas',
  NULL,
  'PROD-1116',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  14000,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e6fe2133-caf9-4346-ba2e-ff4170a52622',
  '43',
  NULL,
  'PROD-1117',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  16000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7b680e79-42ff-4502-9e05-cbd9781bb8c5',
  'Buchanan´s',
  NULL,
  'PROD-1118',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  18000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7598a053-5791-494c-96ff-2d4d1f9d42c7',
  'Balantines',
  NULL,
  'PROD-1119',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  8000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f83c9b5b-2ddc-45da-81d1-6fd58cf6ad66',
  'RedLabel',
  NULL,
  'PROD-1120',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  9000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a4777c1f-d7c7-4d72-b875-94432b09cc21',
  'BlackLabel',
  NULL,
  'PROD-1121',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  17000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7656bf04-d1c6-4680-a15a-44a6304d59e6',
  'OldPar',
  NULL,
  'PROD-1122',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  14000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '72041cf0-a77c-4119-a9d0-4950e38198de',
  'Casa Perini',
  NULL,
  'PROD-1123',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  6000,
  0,
  'UN',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '609bfd44-2179-4166-acef-c0848cb3ccaa',
  'Tanqueray',
  NULL,
  'PROD-1124',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  11000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '824ac13c-ab1a-49ed-ba27-5865246dd8d2',
  'Cavalo Branco',
  NULL,
  'PROD-1125',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  8000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8acde349-ffdd-4c56-8ed3-fae658cba80c',
  'Gordons',
  NULL,
  'PROD-1126',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  7000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6dd6fa64-8d81-4d8e-a944-acf20d00a668',
  'Gordons Rosa',
  NULL,
  'PROD-1127',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  9000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ff28a5f6-1025-40a7-a59f-2653ccfb41b2',
  'Copo Descartável 200ML',
  NULL,
  'PROD-1128',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  600,
  0,
  'UN',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a954d1c5-3a24-44ea-9732-14817ad84610',
  'Sminorff Ice',
  NULL,
  'PROD-1129',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  700,
  0,
  'UN',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c888a0e0-4752-4868-a27e-b9e14cdd98dd',
  'Sprite Lata',
  NULL,
  'PROD-1130',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '055bbcd7-9686-403e-aadb-cf18181e4b9d',
  'Smirnoff 600ML',
  NULL,
  'PROD-1131',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2500,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '711e5db7-e6af-4b78-a161-d009ae9d30d3',
  'Absolut 1L',
  NULL,
  'PROD-1132',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  9990,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6ca1372f-7699-4706-84b4-eb47b8562477',
  'Ciroc 750ML',
  NULL,
  'PROD-1133',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  17390,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8b3237b1-c53f-4d7c-abb9-82a72d7ec4b0',
  'Tônica Fys',
  NULL,
  'PROD-1134',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  269,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c1016e44-384e-4ee7-a913-28de50080a3a',
  'Amstel Latão',
  NULL,
  'PROD-1135',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  5300,
  0,
  'UN',
  13,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9f755082-dfdd-4912-8bc8-87125275466b',
  'stella Artois UN.',
  NULL,
  'PROD-1136',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  500,
  0,
  'UN',
  212,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6a0b7da1-fbd1-47bc-bc33-71930aab27d6',
  'Gin Bombay',
  NULL,
  'PROD-1137',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  11000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '169749e5-bb38-45ac-b9a6-cfa8ee626cc1',
  'Skol Chopp',
  NULL,
  'PROD-1138',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  4200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '693fd297-4c4e-4df9-bcde-848b08dc31fb',
  'Chopinho de Vinho',
  NULL,
  'PROD-1139',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '32fd8f36-0ffe-4e48-ba32-74aebddbc9c8',
  'Nosso Chop De Vinho',
  NULL,
  'PROD-1140',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9a67de79-f2ec-4750-b987-4394f7180bf5',
  'GT UNIDADE',
  NULL,
  'PROD-1141',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  700,
  0,
  'UN',
  23,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1fd86b22-213a-4064-a95d-3652a61443b5',
  'Sprite Un.',
  NULL,
  'PROD-1142',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  700,
  0,
  'UN',
  16,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2e18f135-7cac-48f0-ac1a-7bae7622bf1f',
  'Heineken Zero Un.',
  NULL,
  'PROD-1143',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7dd85337-0747-499e-83a8-9a5cdf872d31',
  'Spaten',
  NULL,
  'PROD-1144',
  NULL,
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  16500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b377da2a-d2c4-4ba4-8a10-9868c6740d72',
  'Budwiser Unidade',
  NULL,
  'PROD-1145',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  550,
  0,
  'UN',
  89,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8d1c923e-004a-4c4f-a5f2-bfd4e3dcf100',
  '1/2 gelo',
  NULL,
  'PROD-1146',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '72d80c10-6f22-469e-81bd-61ce1c96de4c',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0a8cebc-63da-4932-b300-8e1f45a1e4ef',
  'Tenda Lona',
  NULL,
  'PROD-1148',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  25000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ba8ac648-d22d-4751-b3b1-ba58f997c09d',
  'Spaten Un.',
  NULL,
  'PROD-1149',
  NULL,
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  900,
  0,
  'UN',
  56,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '246c3663-8e88-469f-b20b-e0aa25a2019a',
  'Ice Kovak',
  NULL,
  'PROD-1150',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  9500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0d17d162-8a76-473c-8ec8-6c455b327b66',
  'Amstel 600ml',
  NULL,
  'PROD-1151',
  NULL,
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '88d7297c-1db6-445c-bc4e-0e2f26b3c043',
  '51 em lata',
  NULL,
  'PROD-1152',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '773d6087-26cc-4d9b-9008-b28e1df2177a',
  'Água Galão 20L',
  NULL,
  'PROD-1153',
  NULL,
  'b8979d31-c855-4351-93d5-1d04f690c82f',
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '55648db4-d464-4c46-a958-a89c2978014e',
  'Vinho Bled Un.',
  NULL,
  'PROD-1154',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  900,
  0,
  'UN',
  111,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1d95d249-a69a-44cd-828a-8b4f1cb956f6',
  'Gold Label',
  NULL,
  'PROD-1155',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  23000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f262d987-6ffc-40b2-a546-8a9b6859b50e',
  'Brahma Chopp Gelada',
  NULL,
  'PROD-1156',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5500,
  0,
  'CX',
  51,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c3b90ab7-1457-4c7a-98ec-2490108a9869',
  'Antártica Chopp Gelada',
  NULL,
  'PROD-1157',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  6200,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '94068f46-fb1f-407f-872e-de6e12206407',
  'Jogos de mesa',
  NULL,
  'PROD-1158',
  NULL,
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '70029ba3-eaa5-42a7-879c-294a0ec0efed',
  'Heineken Gelada',
  NULL,
  'PROD-1159',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4c8b757e-f503-4e23-a169-5e1583743f33',
  '51 600ml',
  NULL,
  'PROD-1160',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c7f45a1b-5947-4ba9-8319-e8dc64c813af',
  'FANTA UVA LATA COM 06 UNIDADES',
  NULL,
  'PROD-1162',
  NULL,
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  1500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '841039a1-686b-4e8a-8a8c-8c76941d875a',
  'Brahma Litrao Gelada',
  NULL,
  'PROD-1163',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  8600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cf4e1fe4-260d-4e65-b69b-cf81228d49c4',
  'Antartica Litrao Gelada',
  NULL,
  'PROD-1164',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  9000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6d79c967-9d35-439d-8907-7c6d8a1e47dd',
  'Império Latão Gelada',
  NULL,
  'PROD-1165',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  4700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f55b4188-2697-4303-b7f5-8a804e969ae3',
  'Amstel Latão Gelado',
  NULL,
  'PROD-1166',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  5400,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5deb5ad5-e899-43e2-96da-a8a93288b5b0',
  'BRAHMA LATAO GELADA',
  NULL,
  'PROD-1167',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  5000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6f9a1076-7b0d-404b-bf2b-a12d61730d4f',
  'ANTARTICA LATAO GELADA',
  NULL,
  'PROD-1168',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  4700,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '453989f6-3b23-46af-b35a-d8afb9729b5a',
  'IMPERIO GOLG GELADA',
  NULL,
  'PROD-1169',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  6800,
  0,
  'CX',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1f7223b3-d24f-46b7-aa77-fae72937bd74',
  'GUARANÁ ANTÁRTICA 1L',
  NULL,
  'PROD-1170',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '17635aa5-7c98-4361-b6fc-e638de883e9a',
  'BANANINHA',
  NULL,
  'PROD-1171',
  NULL,
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7eaef5c0-8abb-41a0-87ae-998264608b03',
  'IMPÉRIO GOLD GELADA',
  NULL,
  'PROD-1172',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  6800,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'aaeaf9eb-a1d0-4058-a1c2-6e1559bdada5',
  'COCA RETORNAVEL GELADA',
  NULL,
  'PROD-1173',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  7500,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '90d890f7-03dc-40db-9a1d-442bda3859e1',
  'BUDWISER CHOPINHO',
  NULL,
  'PROD-2095',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  6300,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6bb4a27a-c61e-46fd-8182-d29985a4bafa',
  'HEINEKEN LATÃO',
  NULL,
  'PROD-2096',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  7000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'be055db6-92cb-45c9-9981-07cbe575d43e',
  'ITAIPAVA LATÃO',
  NULL,
  'PROD-3096',
  NULL,
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  3700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ad2a3a10-fda6-4f3e-bb24-90fd11acc3f8',
  'ANTÁRTICA CHOP 23 QUENTE',
  NULL,
  'PROD-4096',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  6300,
  0,
  'CX',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd97385bf-390b-4cc0-a867-0e884977c299',
  'BRAHMA CHOP. 23 QUENTE',
  NULL,
  'PROD-5096',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5600,
  0,
  'CX',
  50,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9b68ad96-8622-457c-bfc7-48a143682411',
  'ANTÁRTICA CHOP 23 GELADA',
  NULL,
  'PROD-5097',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  6500,
  0,
  'CX',
  98,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fb79a4f1-fd00-4b57-a9d1-e777a29d5a87',
  'BRAHMA CHOP. 23 GELADA',
  NULL,
  'PROD-5099',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5800,
  0,
  'CX',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cbc9f417-3ac0-4dc5-9aca-ee8058a5add2',
  'IMPÉRIO CHOP. QUENTE',
  NULL,
  'PROD-6096',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5500,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fee93cb9-5512-4de7-937c-4abe5f6d9a3e',
  'IMPÉRIO CHOP. GELADA',
  NULL,
  'PROD-6097',
  NULL,
  'd11dac40-35da-427f-949f-83e48fa20722',
  5700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8ee61d84-430e-4d72-ba12-b064f21a5f22',
  'BRAHMA MALZBIER LONG NECK',
  NULL,
  'PROD-7096',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8dd8c563-1504-4bfa-8dd8-5188f7ff993f',
  'CONVENÇÃO ABACAXI',
  NULL,
  'PROD-7097',
  NULL,
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  2600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e54be3f0-e774-482f-885a-37b7831c3677',
  'SPATEN LONG NECK',
  NULL,
  'PROD-7098',
  NULL,
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  12700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'eeb48033-10c1-4305-a954-8d3efa4a2f88',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '05b12f01-1b6b-4161-a4b9-bd46dc3c02b6',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'bfad4f7d-3a84-482a-bd94-dfb6e7c33620',
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
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5bc4ef92-a3b9-4d21-bb45-6a7f4aad4bcb',
  'COCA ZERO RETORNÁVEL',
  NULL,
  'PROD-8100',
  NULL,
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  7350,
  0,
  'CX',
  29,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:13:24.364Z',
  '2025-12-19T16:13:24.364Z'
) ON CONFLICT (id) DO NOTHING;

