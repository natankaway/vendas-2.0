-- Migração de Categorias
-- Total: 16 registros

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'fe3212c1-0c45-4b10-b485-0223984f7940',
  'Refri Pet',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '0ca1991b-31c4-4da5-9d4e-45326120f229',
  'Cerveja Chopp',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '66df53fa-60e7-436c-b560-857b3425a557',
  'Cerveja 600ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '1371d5f1-df36-48a1-930f-3522b0422ce8',
  'Categoria',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'e1e03827-67b8-49c3-9a1d-7e3aa79e6a24',
  'Cerveja Latão',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'a9f8d6f0-1d6e-4b17-a1fc-945361624d91',
  'Cerveja BrT',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '6dfe79d9-ce5a-416e-9b63-f570fc661122',
  'Refri retornável',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '71b856a0-5392-4d4b-ad3d-1a06917c5549',
  'Sucos Liquidos',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'c5bc224a-67a4-489f-9448-99e793ccc13a',
  'Aguardentes e Destilados',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '6a5790ec-868f-4d6e-bf9d-fec0e5fa76ae',
  'Cerveja 210ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '568fc426-4a36-456a-8b0b-7299455d0604',
  'Cerveja 275ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '9f189928-d871-4ba4-b857-8dfb51556fb9',
  'Energéticos',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '94fa6ab6-d736-47ce-9483-e1dafbfabe5a',
  'Refri Lata',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '55754ee5-a01f-4647-8c50-12e6fdf4f3c9',
  'Agua',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '4f8fd72e-bb6b-4925-b9f6-e10926c51745',
  'Outros',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'efb0c876-8e4f-4656-8ba4-bfe7b027a1b6',
  'Cerveja 330ML',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:08:42.541Z',
  '2025-12-19T16:08:42.541Z'
) ON CONFLICT (id) DO NOTHING;

