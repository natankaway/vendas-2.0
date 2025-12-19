-- Migração de Produtos
-- Total: 184 registros

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6905a6c7-483a-4ac5-bf1c-f47967fcac54',
  'Antartica Chopp',
  NULL,
  'PROD-4',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  6000,
  0,
  'CX',
  156,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '464b6d4a-4b01-4206-9d9b-9031d0decc7f',
  'Brahma Chopp',
  NULL,
  'PROD-5',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5300,
  0,
  'CX',
  105,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cdfa50f5-3216-4bc9-9048-5947835e4a53',
  'Antartica 600ml',
  NULL,
  'PROD-6',
  NULL,
  '66df53fa-60e7-436c-b560-857b3425a557',
  14200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5b339e6c-c2cc-4618-8ddc-f2ce5a2ce596',
  'Brahma 600ml',
  NULL,
  'PROD-7',
  NULL,
  '66df53fa-60e7-436c-b560-857b3425a557',
  15200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c38858e4-0f06-44ba-8976-921b376d59c3',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a478843b-e389-4e67-b2cd-c74f8ef97305',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '11f01551-22d4-44f4-95dc-5731aa201812',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'dff34dbf-20e4-430d-9764-38e6b060fe45',
  'Coca-Cola Ret',
  NULL,
  'PROD-11',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  7350,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b82e0517-3bb0-4398-8faa-24761932aecd',
  'Brahma Latão',
  NULL,
  'PROD-12',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  4900,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a22872b1-98ab-4a31-a164-ca399a6ec82c',
  'Antartica Latão',
  NULL,
  'PROD-13',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  4600,
  0,
  'CX',
  218,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd0d13f77-ba3d-4589-af98-cb615b1013ec',
  'Brahma Brt',
  NULL,
  'PROD-14',
  NULL,
  'a9f8d6f0-1d6e-4b17-a1fc-945361624d91',
  5300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b0eecf72-eb48-400d-bd26-fd12b742316e',
  'Imperio Gold',
  NULL,
  'PROD-15',
  NULL,
  '6a5790ec-868f-4d6e-bf9d-fec0e5fa76ae',
  6600,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '096eec14-2fe2-4fb2-bc76-071d7c0234bb',
  'Imperio Lager',
  NULL,
  'PROD-16',
  NULL,
  '568fc426-4a36-456a-8b0b-7299455d0604',
  5000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '680c2302-688a-406d-9c72-b161c7ca1d02',
  'Imperio Latão',
  NULL,
  'PROD-17',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  4500,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '08fab943-cfae-4b9a-9fe0-e5ac4994b1b5',
  'Coca-Cola 2L',
  NULL,
  'PROD-18',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  5600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd55887ac-0137-445a-ba1b-d47261855982',
  'Fanta Laranja 2L',
  NULL,
  'PROD-19',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  4600,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2ede1b89-2ce3-43be-8cae-36af9d6fc389',
  'Fanta Uva 2L',
  NULL,
  'PROD-20',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  4600,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '76afee1c-e1b2-404a-a1a8-e03133aa87ae',
  'Sprite 2L',
  NULL,
  'PROD-21',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  4600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4f5c2be2-aaea-425b-91c8-1d464808c186',
  'Guarana Antartica 2L',
  NULL,
  'PROD-22',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  4600,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2fa812cd-871e-4a70-b7f9-66956d9075a5',
  'Convenção 2L',
  NULL,
  'PROD-23',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2450,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '84213b18-0746-4b72-bbb2-6c75f0be02b0',
  'Font Energico 2L',
  NULL,
  'PROD-24',
  NULL,
  '9f189928-d871-4ba4-b857-8dfb51556fb9',
  4000,
  0,
  'CX',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '28ad82c5-6829-4ed2-b8d5-c613b28150da',
  'Font Energico 2L U',
  NULL,
  'PROD-25',
  NULL,
  '9f189928-d871-4ba4-b857-8dfb51556fb9',
  800,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9b072371-b831-4efd-974e-3a3a925d483b',
  'Coca-Cola Lata',
  NULL,
  'PROD-26',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  4000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9fd5c4a9-7a9b-46a1-810a-81f76e416890',
  'Guarana Antartica lata',
  NULL,
  'PROD-27',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  3800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c5a41c68-1b50-485a-a073-395010d47383',
  'Fanta Laranja lata',
  NULL,
  'PROD-28',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '42344b29-ef13-48dc-848d-a88adaf27902',
  'Fanta Uva Lata',
  NULL,
  'PROD-29',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2165e9e1-fffb-4989-9b63-ff61cdad1b5c',
  'Coca latinha',
  NULL,
  'PROD-30',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6dc8d927-7467-4029-9a9d-215620992659',
  'Agua Mineral',
  NULL,
  'PROD-31',
  NULL,
  '55754ee5-a01f-4647-8c50-12e6fdf4f3c9',
  1300,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '75c29885-dc32-4b71-844f-c66e351faea5',
  'Vinho 860 ml',
  NULL,
  'PROD-32',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  6500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1232d315-29ef-4a00-94b9-d99a9e2050a7',
  'Galão vinho',
  NULL,
  'PROD-33',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  3300,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f786284a-affb-4afa-bd74-0b43becec1fb',
  'Ousadia Limão',
  NULL,
  'PROD-34',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0652b23-5bf1-4fcf-8cbe-a6f989c9a333',
  'Ousadia Banana',
  NULL,
  'PROD-35',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  4200,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '929d9a0e-1d69-45d1-9a10-96994ce22fab',
  'Guaracamp',
  NULL,
  'PROD-36',
  NULL,
  '71b856a0-5392-4d4b-ad3d-1a06917c5549',
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5392e437-8179-46a5-9bc2-f62d0a53af25',
  'Coca-Cola 2L U',
  NULL,
  'PROD-37',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  900,
  0,
  'UN',
  21,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '40fb43c0-abda-4585-886d-f97111d2d6a1',
  'Fanta uva 2L U',
  NULL,
  'PROD-38',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  800,
  0,
  'UN',
  136,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '49be2791-b21a-45e7-be63-931923694670',
  'Fanta Laranja 2L U',
  NULL,
  'PROD-39',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  600,
  0,
  'UN',
  124,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '53b1dc5a-56bc-405c-8d6f-29b7c79f3976',
  'Guarana Antartica 2L U',
  NULL,
  'PROD-40',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  800,
  0,
  'UN',
  166,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd425fe60-7641-4e35-92a9-3d6f9f54e30f',
  'Coca-Cola Ret U',
  NULL,
  'PROD-41',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  600,
  0,
  'UN',
  313,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5cf35bda-d59f-488e-b671-0e704f8ad57a',
  'Brahma Chopp U',
  NULL,
  'PROD-42',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  250,
  0,
  'UN',
  10624,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cd3c219a-ea4e-425f-afe2-06dfc04ecafc',
  'Antartica Chopp U',
  NULL,
  'PROD-43',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  250,
  0,
  'UN',
  1413,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c53493cc-7ef7-4473-9e4c-d3c87f1ab0b6',
  'Brahma Latão U',
  NULL,
  'PROD-44',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  350,
  0,
  'UN',
  2534,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '99152bf0-f3fc-4a87-8a5c-0135b10e60fd',
  'Antartica Latão U',
  NULL,
  'PROD-45',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  400,
  0,
  'UN',
  1180,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5f3e15c7-6a53-4888-8315-b3d11690975a',
  'Brahma Brt U',
  NULL,
  'PROD-46',
  NULL,
  'a9f8d6f0-1d6e-4b17-a1fc-945361624d91',
  500,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '28b7fc56-755c-4562-a4dc-84b348f8144a',
  'Red Bull lata',
  NULL,
  'PROD-47',
  NULL,
  '9f189928-d871-4ba4-b857-8dfb51556fb9',
  17500,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'bbce87c2-3123-431a-9e92-6e1f6a900920',
  '51',
  NULL,
  'PROD-48',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  12000,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '16520e7e-a8a0-4afe-8705-c81ebbebe894',
  '51 U',
  NULL,
  'PROD-49',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1300,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'bcfdedf3-1718-4c5c-a4bc-07d48d39fa00',
  'Pedra 90',
  NULL,
  'PROD-50',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  4800,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '55c7abd8-fbde-4788-a7ab-275294051725',
  '88',
  NULL,
  'PROD-51',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1600,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b65e289b-212c-4de6-bc2f-8b6b90e1d7fc',
  'Dreher',
  NULL,
  'PROD-52',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7e58c019-82d9-4868-8c18-65e02b84be98',
  'Fogo Paulista',
  NULL,
  'PROD-53',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  3100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ff1cd218-76cb-4697-a602-ab47ac2f2134',
  'Quinado',
  NULL,
  'PROD-54',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8f689cd4-cea2-4949-94a7-010d688fd9f6',
  'Dubar',
  NULL,
  'PROD-55',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '153c128c-91ff-4114-85c6-3570731d58b3',
  'Genebra',
  NULL,
  'PROD-56',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1e4ecc06-d451-46f5-acfd-cbd1e9a93625',
  'Caninha da Roça',
  NULL,
  'PROD-57',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  4800,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'eb1729e3-0128-408b-adbd-eb3476e39b25',
  'São joão da barra',
  NULL,
  'PROD-58',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1900,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '42423b9d-b44d-40d8-91bf-a7d015bd152b',
  'Vodka Kovak',
  NULL,
  'PROD-59',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2500,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '86fcc81a-28ec-403b-b927-0173ee36ffbb',
  'Ipioca S. Palha',
  NULL,
  'PROD-60',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b8e9acce-9051-4f6c-ad6e-f472fb8b79f4',
  'MEL',
  NULL,
  'PROD-61',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1100,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4532b05d-fdd8-4500-a8fb-f4afb0e6b95b',
  'Aniz',
  NULL,
  'PROD-62',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1300,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4cb547c9-e7e6-4f17-a6ff-edf3ebf5b32e',
  'Hortelã',
  NULL,
  'PROD-63',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '06e2e48e-304e-4fbd-a5b4-769ef7faed79',
  'Paratudo',
  NULL,
  'PROD-64',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1700,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '398b7f2e-2eeb-4b67-ad01-4410915121fa',
  'Pessêgo',
  NULL,
  'PROD-65',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1500,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '12ef4c2c-49ac-4cf5-92f5-5cb889188ee1',
  'Vodka Smirnoff',
  NULL,
  'PROD-66',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  3700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ce40d089-7d03-41e5-8e61-ee1fa4ff035a',
  'Vodka Leonoff',
  NULL,
  'PROD-67',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1900,
  0,
  'UN',
  7,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '34e4e4fc-ffdc-4b38-944c-5cdbaf2ccd45',
  'Saco Carvão 3k',
  NULL,
  'PROD-68',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ddb5d8d5-097f-4b06-adc6-9e458d861ee4',
  'Saco Carvão 6kg',
  NULL,
  'PROD-69',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  0,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6e6c33ba-6da5-4dab-b285-f6106bb288fb',
  'copo desc 200 ml',
  NULL,
  'PROD-70',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  13500,
  0,
  'CX',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '25579e42-c17b-4488-91e9-6e6da4c5df00',
  'Heineken',
  NULL,
  'PROD-71',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '38f7523b-cb62-4136-9f95-ad887aa1f4d5',
  'Catuaba',
  NULL,
  'PROD-72',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1100,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '989bd77b-4802-40c4-8b04-228e268d2fcf',
  'Fanta Laranja Ret',
  NULL,
  'PROD-73',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '052665a5-186b-4aa5-be1a-7e7ec7c534b6',
  'Fazenda Velha',
  NULL,
  'PROD-74',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd703cf5f-baa9-4017-9fe5-bafcf3e0b9eb',
  'Vodka Maravilha',
  NULL,
  'PROD-75',
  NULL,
  '6a5790ec-868f-4d6e-bf9d-fec0e5fa76ae',
  500,
  0,
  'UN',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8225b1af-df15-4dd2-aeb3-fbad102bc02a',
  'Jurubeba',
  NULL,
  'PROD-76',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1550,
  0,
  'UN',
  12,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f7f91ad5-67d8-4fb8-a781-a908d9990876',
  'Jurupinga',
  NULL,
  'PROD-77',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  3000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f3dd24fa-1d6e-413a-b25b-a594b2e6e88f',
  'Amendoim',
  NULL,
  'PROD-78',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1500,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '87389cc2-81de-47fa-bb3e-3ab9f0bed513',
  'Menta',
  NULL,
  'PROD-79',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  1300,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '22085e72-c2f7-4278-a88d-2390dca7c24f',
  'Fanta Uva RET',
  NULL,
  'PROD-80',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  7100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'abca666d-16e6-414b-a486-f6cbbdeb896a',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '81599371-07f6-4e38-936c-4eab07ac6080',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'aea1aa4f-b7ec-4927-a30f-e855224c5580',
  'Budweiser',
  NULL,
  'PROD-83',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  11000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '05fdd61f-0af2-4d15-8188-028bf00f0c02',
  'Corona',
  NULL,
  'PROD-84',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f8e7984b-776c-4f8a-ad69-eb77c3b8394a',
  'Domec',
  NULL,
  'PROD-85',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  4000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '514dfccf-8c80-4ce6-ae4f-10c37f72706b',
  'Brahma Duplo Malte',
  NULL,
  'PROD-87',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  3700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'dce4722c-88ec-4540-8402-3bc67bcaa319',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ba54217a-08d1-4785-a1d3-1cb1b6b16028',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '96c43e54-d5d5-42f4-8d0b-7d0735be2367',
  'Jogo de Mesa',
  NULL,
  'PROD-90',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  700,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0aaa417a-2577-49b3-b66c-b644aa0604e3',
  'Convenção Un.',
  NULL,
  'PROD-91',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  400,
  0,
  'UN',
  94,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd1fef53b-76b1-4bfa-8ff2-e31f3a863819',
  'Energético Dopamina',
  NULL,
  'PROD-92',
  NULL,
  '9f189928-d871-4ba4-b857-8dfb51556fb9',
  10000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '79fdab6f-c394-428e-9018-f5ce6210c1f5',
  'Água com Gás',
  NULL,
  'PROD-93',
  NULL,
  '55754ee5-a01f-4647-8c50-12e6fdf4f3c9',
  1900,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '81a6baf9-5d2e-4cb3-b294-a88a8480a5ff',
  'caninha da roça unidade',
  NULL,
  'PROD-95',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  250,
  0,
  'UN',
  54,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5a5af92b-e0a5-451f-8491-7838004d3f2c',
  'Chopp de Vinho',
  NULL,
  'PROD-1095',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  5000,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ace8c538-5eca-46e4-b78b-38a547262665',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2a89ff40-c194-42e9-b248-f70969ff24a1',
  'Heineken Un.',
  NULL,
  'PROD-1097',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  600,
  0,
  'UN',
  61,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '41d1735d-20ea-4f29-9d73-52e65aa75391',
  'Água 1,5L',
  NULL,
  'PROD-1098',
  NULL,
  '55754ee5-a01f-4647-8c50-12e6fdf4f3c9',
  1400,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f821071a-6e10-4390-b379-fb412ea8ace1',
  'Stella Artois',
  NULL,
  'PROD-1099',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3f531027-1052-4104-ae42-dc78309f1a15',
  'Heineken Sem Álcool',
  NULL,
  'PROD-1100',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'bef0888e-1965-4468-a2fc-d9602b1a3fbc',
  'Carvão 3kg',
  NULL,
  'PROD-1101',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  1700,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '49d116f1-61d8-4abd-9000-315ef60bdb41',
  'Carvão 6kg',
  NULL,
  'PROD-1102',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  2000,
  0,
  'UN',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '55684480-2606-4cef-9b26-e0c69900c479',
  'Convenção Laranja 2L',
  NULL,
  'PROD-1103',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8e6a697a-4d8f-42a3-a02c-791f0b0ee4eb',
  'Convenção Limão 2L',
  NULL,
  'PROD-1104',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2100,
  0,
  'CX',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1a07cf99-4a04-45ac-abb4-9cf04f42d626',
  'Convenção Uva 2L',
  NULL,
  'PROD-1105',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2100,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9658c339-f062-4323-bb62-b5e9cba98537',
  'Gatorade Limão',
  NULL,
  'PROD-1106',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8548d7a7-c836-430e-b006-7b289e0622ba',
  'Gatorade Uva',
  NULL,
  'PROD-1107',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd74dd25a-929a-4c45-88ae-31726296b5df',
  'Gatorade Morango com Maracujá',
  NULL,
  'PROD-1108',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b40cb081-8920-4113-9272-030bf705a2e4',
  'Gatorade Maracujá',
  NULL,
  'PROD-1109',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd0d427d1-fe02-49be-b097-5896f0c60cd6',
  'Gatorade Laranja',
  NULL,
  'PROD-1110',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4d3b104f-f519-499f-abe3-5c33ae1f3011',
  'Gatorade Frutas Cítricas',
  NULL,
  'PROD-1111',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  2500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9c6bd18c-1ffb-4e54-bc14-13f7dd60c457',
  'Gatorade Tangerina',
  NULL,
  'PROD-1112',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd42af2b4-05ef-429e-8fc1-b5d218e0e315',
  'GT LONG NECK',
  NULL,
  'PROD-1113',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  14900,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '6cb94a55-b6ce-4ed8-b442-6d895ae73e32',
  'Corona Unidade',
  NULL,
  'PROD-1114',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  550,
  0,
  'UN',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd44f7320-101f-4e8a-bd60-01227c1d9641',
  'Água de Coco 200ML',
  NULL,
  'PROD-1115',
  NULL,
  '71b856a0-5392-4d4b-ad3d-1a06917c5549',
  350,
  0,
  'UN',
  1350,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b23ac079-c999-4d29-96b0-c93e116c9423',
  'Chivas',
  NULL,
  'PROD-1116',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  14000,
  0,
  'UN',
  4,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'be17833c-3e26-4e0e-a05b-1329a8568cef',
  '43',
  NULL,
  'PROD-1117',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  16000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '26653504-0efe-4979-829b-aa377f00ba6c',
  'Buchanan´s',
  NULL,
  'PROD-1118',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  18000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '451ad72c-3e55-4e83-91e2-a9996202ffa6',
  'Balantines',
  NULL,
  'PROD-1119',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  8000,
  0,
  'UN',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c1c2a56e-ac48-41c1-8bc9-317db3eb8030',
  'RedLabel',
  NULL,
  'PROD-1120',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  9000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b275ec12-fa34-4987-92ab-c48b9c9fb734',
  'BlackLabel',
  NULL,
  'PROD-1121',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  17000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ff87a92e-2459-4638-9b83-27b7187d5f9d',
  'OldPar',
  NULL,
  'PROD-1122',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  14000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c04c9a41-c764-4a64-9a88-d759decf9c77',
  'Casa Perini',
  NULL,
  'PROD-1123',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  6000,
  0,
  'UN',
  10,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5642dd94-cc64-44e6-a858-9cc4214fae30',
  'Tanqueray',
  NULL,
  'PROD-1124',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  11000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c085a56f-e06f-4c12-9439-ed46c1940542',
  'Cavalo Branco',
  NULL,
  'PROD-1125',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  8000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0b006976-5f44-4794-b387-2a757208661f',
  'Gordons',
  NULL,
  'PROD-1126',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  7000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9e1de653-8fe1-44c5-b189-7aca83d64b0f',
  'Gordons Rosa',
  NULL,
  'PROD-1127',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  9000,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9672fde0-21ac-41c2-8afa-c82954e61dbc',
  'Copo Descartável 200ML',
  NULL,
  'PROD-1128',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  600,
  0,
  'UN',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '294dcf6d-87f3-4b1e-8b34-8e5c5440cdf2',
  'Sminorff Ice',
  NULL,
  'PROD-1129',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  700,
  0,
  'UN',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3ebb6324-4e72-466e-a29b-62ad43bedf49',
  'Sprite Lata',
  NULL,
  'PROD-1130',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  3000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8ded132b-dbd1-469e-bafd-ddc5f7a71348',
  'Smirnoff 600ML',
  NULL,
  'PROD-1131',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2500,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '40940a4a-fda3-4218-8490-4fdb30864586',
  'Absolut 1L',
  NULL,
  'PROD-1132',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  9990,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '4b508337-e6ea-4746-8710-9662979469fd',
  'Ciroc 750ML',
  NULL,
  'PROD-1133',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  17390,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '58c171e7-36aa-4be8-8b72-f44d0f2e12f1',
  'Tônica Fys',
  NULL,
  'PROD-1134',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  269,
  0,
  'UN',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1ec47c9e-2ce4-4370-974e-c283d69c4418',
  'Amstel Latão',
  NULL,
  'PROD-1135',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  5300,
  0,
  'UN',
  13,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '65464b90-eda9-4d41-9336-b9f532f849aa',
  'stella Artois UN.',
  NULL,
  'PROD-1136',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  500,
  0,
  'UN',
  212,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '61a840c4-74a6-43b0-90b9-123bd29af679',
  'Gin Bombay',
  NULL,
  'PROD-1137',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  11000,
  0,
  'UN',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e1f05be8-c556-4826-9970-b8da6c89e44a',
  'Skol Chopp',
  NULL,
  'PROD-1138',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  4200,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e3837ddf-647e-4d3d-9e35-01ab17bfba53',
  'Chopinho de Vinho',
  NULL,
  'PROD-1139',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  3400,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b52cb5dc-0499-4bf3-bca3-38008964f04d',
  'Nosso Chop De Vinho',
  NULL,
  'PROD-1140',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  2500,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '18e56205-014f-4021-b5d9-c1e3cc42e262',
  'GT UNIDADE',
  NULL,
  'PROD-1141',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  700,
  0,
  'UN',
  23,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '95f49086-1b86-4ced-8d1e-9ad2b25b7250',
  'Sprite Un.',
  NULL,
  'PROD-1142',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  700,
  0,
  'UN',
  16,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cb4d85d0-e3ec-4e3c-b1cc-f8efd36bce85',
  'Heineken Zero Un.',
  NULL,
  'PROD-1143',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'ead45ddf-74fa-4434-8ad1-a11064dc9adb',
  'Spaten',
  NULL,
  'PROD-1144',
  NULL,
  '66df53fa-60e7-436c-b560-857b3425a557',
  16500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a0915d1d-d121-4a32-85fb-c498c4b9910b',
  'Budwiser Unidade',
  NULL,
  'PROD-1145',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  550,
  0,
  'UN',
  89,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd65398cc-460f-4229-9138-97e345212ec5',
  '1/2 gelo',
  NULL,
  'PROD-1146',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  600,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8118e1bf-cfcd-4c69-9c9c-452b44a2b4d1',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a38a49de-8b97-496f-bf70-69d648d48a94',
  'Tenda Lona',
  NULL,
  'PROD-1148',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  25000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '49996e1e-5bf7-4313-8471-194e896bf75b',
  'Spaten Un.',
  NULL,
  'PROD-1149',
  NULL,
  '66df53fa-60e7-436c-b560-857b3425a557',
  900,
  0,
  'UN',
  56,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'd8a75bf2-302c-42e6-b9ff-4866d213649b',
  'Ice Kovak',
  NULL,
  'PROD-1150',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  9500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '60cac3b5-e8e9-4813-aa2f-1ab3a217e021',
  'Amstel 600ml',
  NULL,
  'PROD-1151',
  NULL,
  '66df53fa-60e7-436c-b560-857b3425a557',
  13000,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9707183e-9455-455c-8143-51bbb9cddd6c',
  '51 em lata',
  NULL,
  'PROD-1152',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e915ea9c-800e-42e0-beeb-c8a374eaacbc',
  'Água Galão 20L',
  NULL,
  'PROD-1153',
  NULL,
  '55754ee5-a01f-4647-8c50-12e6fdf4f3c9',
  1000,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '804f2c14-755b-40f3-b4af-551b49828e19',
  'Vinho Bled Un.',
  NULL,
  'PROD-1154',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  900,
  0,
  'UN',
  111,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '0327e94c-c1fb-471d-ac96-570d8a45f767',
  'Gold Label',
  NULL,
  'PROD-1155',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  23000,
  0,
  'UN',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '355a9865-24c7-41ad-98f4-9f1838447f69',
  'Brahma Chopp Gelada',
  NULL,
  'PROD-1156',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5500,
  0,
  'CX',
  51,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a6cd13f8-c112-4a00-b096-c7b7f4547046',
  'Antártica Chopp Gelada',
  NULL,
  'PROD-1157',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  6200,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '7206f8ef-c6fc-4dd9-bab5-bab8917568df',
  'Jogos de mesa',
  NULL,
  'PROD-1158',
  NULL,
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '93e68b72-3323-4844-a602-bda47b1e51f7',
  'Heineken Gelada',
  NULL,
  'PROD-1159',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'f5db6c6b-6db2-4a5e-ac77-ba4e6eea60ca',
  '51 600ml',
  NULL,
  'PROD-1160',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9d6e126e-d9cb-4ac8-9519-6a8698f38b1d',
  'FANTA UVA LATA COM 06 UNIDADES',
  NULL,
  'PROD-1162',
  NULL,
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  1500,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '2acd0f03-3616-4228-80ce-bfdcdcd9ef2b',
  'Brahma Litrao Gelada',
  NULL,
  'PROD-1163',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  8600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cf8377c7-78e9-4b31-9b28-9d89ea6b0320',
  'Antartica Litrao Gelada',
  NULL,
  'PROD-1164',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  9000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '10042dae-e931-42c4-857b-0916027164c9',
  'Império Latão Gelada',
  NULL,
  'PROD-1165',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  4700,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '89dfb909-85e3-42d2-a6d8-e66d692701d2',
  'Amstel Latão Gelado',
  NULL,
  'PROD-1166',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  5400,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'cfeb8a09-2192-4312-b2ab-8d44f2d1e455',
  'BRAHMA LATAO GELADA',
  NULL,
  'PROD-1167',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  5000,
  0,
  'CX',
  3,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '29a574e1-ae22-4598-b370-268eb7647cda',
  'ANTARTICA LATAO GELADA',
  NULL,
  'PROD-1168',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  4700,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '63ccaf96-34e4-4b09-add0-c49e46540afb',
  'IMPERIO GOLG GELADA',
  NULL,
  'PROD-1169',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  6800,
  0,
  'CX',
  17,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fe6b6f5a-2ba1-4aa2-bbda-78c2ef392bcc',
  'GUARANÁ ANTÁRTICA 1L',
  NULL,
  'PROD-1170',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2600,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'da535f0c-eedb-4c46-9649-f3f8d15a9593',
  'BANANINHA',
  NULL,
  'PROD-1171',
  NULL,
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  2400,
  0,
  'UN',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a313fdbe-be04-4655-80b9-126b6d144088',
  'IMPÉRIO GOLD GELADA',
  NULL,
  'PROD-1172',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  6800,
  0,
  'CX',
  6,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '8b57480e-f363-420f-8c04-21c2a90d3bb2',
  'COCA RETORNAVEL GELADA',
  NULL,
  'PROD-1173',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  7500,
  0,
  'CX',
  15,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fd4ba146-3215-4051-8f95-9641116a612c',
  'BUDWISER CHOPINHO',
  NULL,
  'PROD-2095',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  6300,
  0,
  'CX',
  5,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'e18d7e94-7134-4ecf-9f1b-3095e76d976e',
  'HEINEKEN LATÃO',
  NULL,
  'PROD-2096',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  7000,
  0,
  'CX',
  2,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'c8345692-4b84-40cf-a634-21d12e6f0096',
  'ITAIPAVA LATÃO',
  NULL,
  'PROD-3096',
  NULL,
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  3700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b0e3c434-e5a6-4338-a4fa-851d38650f77',
  'ANTÁRTICA CHOP 23 QUENTE',
  NULL,
  'PROD-4096',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  6300,
  0,
  'CX',
  18,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '1eb0af1e-544d-42fd-9459-3bcd3b026b16',
  'BRAHMA CHOP. 23 QUENTE',
  NULL,
  'PROD-5096',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5600,
  0,
  'CX',
  50,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '963e3db4-2d8f-4c35-ae1a-15a83b891906',
  'ANTÁRTICA CHOP 23 GELADA',
  NULL,
  'PROD-5097',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  6500,
  0,
  'CX',
  98,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '5fb011ef-28f7-4642-ab7f-59e3d75e13c3',
  'BRAHMA CHOP. 23 GELADA',
  NULL,
  'PROD-5099',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5800,
  0,
  'CX',
  22,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '3c708eca-54ca-4910-904e-23b0ce093039',
  'IMPÉRIO CHOP. QUENTE',
  NULL,
  'PROD-6096',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5500,
  0,
  'CX',
  8,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '9086888f-22c4-4562-a84d-54009f651d1c',
  'IMPÉRIO CHOP. GELADA',
  NULL,
  'PROD-6097',
  NULL,
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  5700,
  0,
  'CX',
  0,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '19c0f4ee-04d3-4d07-ad7f-7b7a7e3d4d34',
  'BRAHMA MALZBIER LONG NECK',
  NULL,
  'PROD-7096',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  13000,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'b254ac82-7d31-46f2-8f55-1eaea69d1ce5',
  'CONVENÇÃO ABACAXI',
  NULL,
  'PROD-7097',
  NULL,
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  2600,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '22643fca-1468-4030-858b-5e1c873243e6',
  'SPATEN LONG NECK',
  NULL,
  'PROD-7098',
  NULL,
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  12700,
  0,
  'CX',
  1,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fca798a2-8973-482d-89b4-fda9772700a6',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  '38a592b6-3a99-4e77-b4c6-02064df02981',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'fd6afe98-cdba-4958-aa60-1b2554dee3a3',
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
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost_price, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (
  'a01e8a46-bfe5-41f8-81f6-b1e936ada02d',
  'COCA ZERO RETORNÁVEL',
  NULL,
  'PROD-8100',
  NULL,
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  7350,
  0,
  'CX',
  29,
  5,
  true,
  false,
  '2020-04-26',
  '2025-12-19T16:08:42.564Z',
  '2025-12-19T16:08:42.564Z'
) ON CONFLICT (id) DO NOTHING;

