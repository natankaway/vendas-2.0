-- Migração de Categorias
-- Total: 16 registros

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '6b2af04d-639a-4803-bf65-c330c8867c37',
  'Refri Pet',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'd11dac40-35da-427f-949f-83e48fa20722',
  'Cerveja Chopp',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '6e9f50d5-861b-4b53-8ad3-04fc99d68640',
  'Cerveja 600ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'c55739cf-aa11-4ea3-954b-b99d93e16cfb',
  'Categoria',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '9bafafa9-99eb-40a8-8425-9ed522cd7436',
  'Cerveja Latão',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '680f7390-811e-47c3-9fb2-1db6ea2d1b27',
  'Cerveja BrT',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '7731d0fa-0f7b-43d3-94d5-831845ed8fde',
  'Refri retornável',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '3ee84df4-9e36-4822-81c2-eac4e53aa10f',
  'Sucos Liquidos',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '995ab247-5c98-412e-a8dc-3eb14ee9febb',
  'Aguardentes e Destilados',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '065149e5-2048-432f-b654-6cf1a078a73e',
  'Cerveja 210ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '903b57d3-4171-499d-90e7-d75f6046b179',
  'Cerveja 275ml',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '563d5cf0-3244-42b8-af5a-72940a7c2d35',
  'Energéticos',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'b85e7d14-e2b9-4a5c-9831-b81cdfb39d4a',
  'Refri Lata',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'b8979d31-c855-4351-93d5-1d04f690c82f',
  'Agua',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  'c779d007-520e-44e8-8c03-f7d744fc4fe0',
  'Outros',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_categories (id, name, description, color, sort_order, created_at, updated_at) VALUES (
  '2ed938d4-337e-4278-bd47-ef7e158a4fa0',
  'Cerveja 330ML',
  NULL,
  '#3B82F6',
  0,
  '2025-12-19T16:13:24.342Z',
  '2025-12-19T16:13:24.342Z'
) ON CONFLICT (id) DO NOTHING;

