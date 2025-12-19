-- Migração de Categorias
-- Total: 16 registros

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '77e7dfbb-e685-49b9-945d-027cc8a4a906',
  'Refri Pet',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '296238b3-f849-446f-8acf-59ad823a1ea1',
  'Cerveja Chopp',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '304eb593-849f-4b38-b8f6-ee2f881e9145',
  'Cerveja 600ml',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  'd4a0517d-da1e-441d-9d45-591c1462fbfc',
  'Categoria',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '203791ab-f87c-4361-93ef-595eeb9fb090',
  'Cerveja Latão',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '1db67f98-51e3-487f-bb97-ca0161ebea96',
  'Cerveja BrT',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '263a1621-eb89-49fc-8b03-a4dce425a1b3',
  'Refri retornável',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '623c2b00-712b-406a-a099-2a948d8ed118',
  'Sucos Liquidos',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '1e968e2c-25eb-437f-8788-f7c0a511fe0d',
  'Aguardentes e Destilados',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  'c8369ccf-bf75-4f47-acdb-8306c45fb84c',
  'Cerveja 210ml',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '1cf7af70-88bf-4720-8e57-98431304af89',
  'Cerveja 275ml',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  'b8c0dfd7-4ed3-4229-8c95-21c01a480ca5',
  'Energéticos',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '61d73fbb-d760-41e9-b209-375d13679760',
  'Refri Lata',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '1ba77395-72cc-4dcc-b011-622f0ada8209',
  'Agua',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '712215b7-ef6c-443d-be14-1b5e71ba1d07',
  'Outros',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (
  '417487ba-f4ec-4dc2-b661-8f767bc74204',
  'Cerveja 330ML',
  NULL,
  '#3B82F6',
  true,
  '2025-12-19T15:25:58.987Z',
  '2025-12-19T15:25:58.987Z'
) ON CONFLICT (id) DO NOTHING;

