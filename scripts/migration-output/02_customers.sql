-- Migração de Clientes
-- Total: 1045 registros

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e11160e-5278-4682-a51a-713ec084b8c5',
  'Balcão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Deposito',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3db0b6cb-adbf-4b1d-b819-bcc601d3c407',
  'Figueroa Campestre',
  NULL,
  NULL,
  NULL,
  NULL,
  'guandu do senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '33a5f79c-c599-409b-8938-8c298348add3',
  'Beto Bar Quebra Galho',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 14 NÚMERO 59',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f5afd26c-9817-44ad-a168-acd38c7d95c4',
  'Ivone',
  NULL,
  NULL,
  NULL,
  NULL,
  'O - Praça do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02684506-8536-4ebc-81c4-715dca9db07d',
  'Paulo Trailler',
  NULL,
  NULL,
  NULL,
  NULL,
  'R - Praça do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ca26ec1-d21f-4037-a37e-79887274d7f3',
  'Bar Safadão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01, Nº 173',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b295bbb-1c0b-4334-9412-182398d8674f',
  'Negão Fabiano',
  NULL,
  NULL,
  NULL,
  NULL,
  'Brazaville',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '940c90b3-39fa-4da5-99f6-57ad3ef99167',
  'Bar da Tia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, Nº 44',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '842e1af2-4256-439e-b21e-352d87d60bbc',
  'Primo do Ricardinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Tunísia Praça',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6dcc6de3-5433-42f5-8da3-76f4da3f2f72',
  'Seu Pedro',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua 10 Malvina',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2752da01-0116-4787-a7bd-e3673775e859',
  'Bar Laíde',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01, Nº 171',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f6bd866-6ed2-4650-bee8-a9f2e873f525',
  'Dudu',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '029d1157-b2cb-45a6-bbd1-ed327d7b55fe',
  'Bar Ao Lado da Peixaria',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '70fb32f4-37a8-422a-b8b6-f5a245b8f032',
  'Trailler da Morena',
  NULL,
  NULL,
  NULL,
  NULL,
  'O praça Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b7080670-b0f3-4f5d-841d-ea9078556fe6',
  'Pará Campo Malvina',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '944983cb-60dc-4e7a-bbec-e201eb6c2691',
  'Russo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ab9310c9-8e23-40b4-af37-577b1e3cf22b',
  'Vivi',
  NULL,
  NULL,
  NULL,
  NULL,
  '27 Malvinas',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd4c198a2-344f-443a-9748-d3e682e5f1b0',
  'Rui',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento em frente ao curral',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '749edaa7-b5be-4ceb-b211-e5723fe9873e',
  'Bar Espaguete',
  NULL,
  NULL,
  NULL,
  NULL,
  'M',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19c034fb-e241-41fb-8150-ecce7837f511',
  'Bar do Alex',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e71a367c-458f-4afc-975f-6dfccc0ddc67',
  'Bar da Vanessa',
  NULL,
  NULL,
  NULL,
  NULL,
  'Niassa',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa458001-6e1b-4381-8fb0-f23968445ea7',
  'Selma',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '934241d0-b26b-4a04-9f58-1c5b45821650',
  'Negão Depósito Estrada',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá Posto Ipiranga',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90b08be8-8640-4b99-a92b-3089c78807cc',
  'Enrique Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'etiópia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81a7627f-1069-4e1f-bbf4-35713cab0fa6',
  'Claudia Bar Bebedouros',
  NULL,
  NULL,
  NULL,
  NULL,
  'R',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dc15d71-c5aa-4528-8fc9-99553f7c0630',
  'Bar Andréia Pochete',
  NULL,
  NULL,
  NULL,
  NULL,
  'SARGENTO MIGUEL FILHO, 40',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59cc8007-6dc5-4653-9028-1a5a8de5556a',
  'Pensão Eden',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Pedro Pomar',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '25cd3ad5-f444-45e8-ac2e-7bdd7dc4ad59',
  'Delícias da Nanda',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua F',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8b48b51-b89c-474d-b0d6-7d71253c8dd4',
  'Xerem',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua F',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41a93c71-e33c-4cda-bb0a-e68bafea6038',
  'Trailer alexandra',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Miami',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2561c168-a706-4228-82ae-1180be021a79',
  'Bar do Raimundinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Zambia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd46e8fa3-4027-484b-92e4-b628df9cd362',
  'Bar do Tavinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Miami',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cbf8c3a-e6fa-4e9e-b5ad-e9789c193bba',
  'Neném',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83bffdf9-ae9f-4e3c-893e-9eb9d329b120',
  'Bar do Srº Onofre',
  NULL,
  NULL,
  NULL,
  NULL,
  'C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3be3dddd-5871-444e-a85e-916b9c58b9ab',
  'Keke',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5576621-6e45-46c6-b1bf-6ea8dd6595b7',
  'Silvio',
  NULL,
  NULL,
  NULL,
  NULL,
  'D, Nº 124',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a8a2ae7-05aa-4191-b49d-dae460fd3e7c',
  'Chiquinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'N, Nº 151',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1032f390-d558-4b87-ae4a-a0bdd6d516ff',
  'Trailler do Volverine',
  NULL,
  NULL,
  NULL,
  NULL,
  'C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e64339c-a54a-44d6-90e5-d5d4396dce7a',
  'Pensão da Verônica',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6ef5058-e91d-4fa5-8a77-bfb12faf1bfd',
  'Papudo',
  NULL,
  NULL,
  NULL,
  NULL,
  '26',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '262b2e40-64d8-496e-a864-1f18fc6aef5a',
  'Bar Dona Fátima',
  NULL,
  NULL,
  NULL,
  NULL,
  'Cartoon',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '40b82a0d-106b-4d6e-b27a-5e5c0f94babc',
  'Dimy',
  NULL,
  NULL,
  NULL,
  NULL,
  'D, Nº 116',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '98c8a653-8d5b-4b85-a666-9b80eda4ddfe',
  'Lula',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3fce97a-ca0d-427c-ad7b-5279e6910842',
  'Trailler da Monique',
  NULL,
  NULL,
  NULL,
  NULL,
  'O',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '103a8e99-1766-4210-8a57-d50987bb9564',
  'Bar do Naldo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Chayde',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82ae5060-0816-4148-a9cd-02e0133603db',
  'Bira Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fcf3aad6-dec7-4982-8142-dd8e8dbdc31f',
  'Trailler Carlos\Aline',
  NULL,
  NULL,
  NULL,
  NULL,
  'C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '78b36702-3059-477b-b684-9085d0e9ccb7',
  'Bar Daniele e Maiara',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Central, Nº 96',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '195f1e68-c417-4ffd-b4c1-3f6de0861c4d',
  'Lucinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Central',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ace6e93-5877-4cab-9dae-e0c5317c8e0e',
  'Sogro Branco',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b857dacd-c10f-4c86-945d-b4b794fbef59',
  'Bar Av.Brasil',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil, Nº 3515',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3365bb38-0ebd-4d27-bd3e-21ef7696e770',
  'Nainha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e8b6b3f-60a1-49ad-abb2-662a9a2d3c51',
  'Andressa (Filha Andréia Pochete)',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d057a81-39df-4287-b44a-ba2bae1822d7',
  'Adriana\Sandrinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'C, Nº 283',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0e0300f2-fab7-4e5d-93f1-3baac925a3fe',
  'Marquinho DJ',
  NULL,
  NULL,
  NULL,
  NULL,
  'VEIO NO DEPÓSITO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9184039-5b0f-42f0-a413-094464b3b3e0',
  'Trailler Baderna',
  NULL,
  NULL,
  NULL,
  NULL,
  'F',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f24c72b-8df8-40b2-8bf5-ab95ac65b06e',
  'Alan',
  NULL,
  NULL,
  NULL,
  NULL,
  'D, Nº 108',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e23b346-2909-495c-a5e3-5c32f3fbc044',
  'Sargento S/N',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b87b727-e8b6-44bf-ae82-a6a6c8d06d98',
  'Chokito',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c5ec46f-01f4-4e3c-8bea-ce770d60ca08',
  'Marreco',
  NULL,
  NULL,
  NULL,
  NULL,
  'DEPÓSITO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4fc4887-2554-4d2f-8d5a-a551b27b0153',
  'jimmy',
  NULL,
  NULL,
  NULL,
  NULL,
  'rua D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd3098f1d-b066-4cec-8bde-7f453ec5db05',
  'Bochecha',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef5e7809-48f1-4fa4-9f6d-2e79925eb746',
  'Sargento 87',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, Nº 87',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3521e8d9-cc24-4880-b3da-cef716c33e93',
  'Bar Presídio',
  NULL,
  NULL,
  NULL,
  NULL,
  'Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd4d443a4-3d41-4d65-94c5-2fd2b50d511c',
  'Werneck',
  NULL,
  NULL,
  NULL,
  NULL,
  'Acácias',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '844c7987-0a54-4816-8cfa-7b1d6201efd7',
  'Pit Grill',
  NULL,
  NULL,
  NULL,
  NULL,
  'C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9697215-68e1-4f59-bec3-da2a2cc5f136',
  'Ricardinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Niamey',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '645e393f-8e67-47ee-b151-920010fc45a1',
  'Peladão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rala Coco',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '451700f4-f900-4dff-9e91-43f68c4e79db',
  'Teri',
  NULL,
  NULL,
  NULL,
  NULL,
  'O',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ec68e0b-5e6f-4c42-b3ac-0365bbcb7d5e',
  'Festa Peladao',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Quafa',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c36b155-5e46-4617-b228-be85c30a7c8c',
  'Branco',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c62b09b-81dc-4ed7-b594-a5e812054418',
  'Bira',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7925275f-845b-455c-9c7c-b20123ee166b',
  'Trailler da Tia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd5d75f89-c884-4f3f-bad9-50bcc77e5efc',
  'Bill',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '34036749-459f-4f66-bb6f-54901b9c68da',
  'Luiz Carlos',
  NULL,
  NULL,
  NULL,
  NULL,
  'P, Nº 73',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37268809-5b8d-4c86-92bc-096e73705c39',
  'Rua 02',
  NULL,
  NULL,
  NULL,
  NULL,
  'Malvinas, Nº 351',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '182d866e-2272-408f-a4ee-7074cba5f127',
  'Jorge',
  NULL,
  NULL,
  NULL,
  NULL,
  'F, Nº 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c8dca70-4bd5-46ab-948f-65eefae415fe',
  'Sandrinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6832c098-f4e3-4f54-a76e-800d9c1f4939',
  'Leandro',
  NULL,
  NULL,
  NULL,
  NULL,
  'X, Nº 247',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3dbe7bc1-4b07-4c97-8e8f-5865163381c7',
  'Vigário',
  NULL,
  NULL,
  NULL,
  NULL,
  'O',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be2c9c6c-1427-4152-bc15-4d8f3a14f091',
  'Ana Paula',
  NULL,
  NULL,
  NULL,
  NULL,
  'Camarões, Nº 57',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a76d53a-6e3a-4e96-adad-3cc1972ba67d',
  'Cris Dalgiza',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd040dfa1-9283-4a7a-874a-8f95be252e82',
  'Vera',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e27aeae-f3bc-4972-a536-ec67716b3b31',
  'Mão',
  NULL,
  NULL,
  NULL,
  NULL,
  'O, Nº 296',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d226fe1-5f0f-451a-99e3-1a3f5a98be85',
  'Paulo José',
  NULL,
  NULL,
  NULL,
  NULL,
  'M, Nº 64',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb1e3559-9c37-4589-a458-5727fe30120f',
  'Dudu Jorginho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Alfredo Gama',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41ba8f33-53fe-4e2f-bbca-5bc3c13e50df',
  'XD LILIAN',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALAO DA PKADO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f4c4c79-67d3-45e3-9f1e-20e7d7e610b5',
  'Bruno/Pesão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sitio Carranca',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '70a6fecd-a623-4d80-b1f1-60148aab2384',
  'Moto taxi Upa',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Upa',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a06c097-54d7-4062-9936-0d142e6c78c2',
  'Sem Nome',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua P, Nº 73',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f1b6a14-b6a8-4f2b-a40f-4dae66173a6f',
  'Mão Orelha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Quafa',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f03eebf9-d4b9-4917-ae27-7fb235bf37e4',
  'Baixinho Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 1',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a46cc1f-eaaa-4496-800c-1466d5fae002',
  'Dona Vanda',
  NULL,
  NULL,
  NULL,
  NULL,
  'Paulino do Sacramento',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '528adfa3-6e0b-48e3-a531-a251b5453eba',
  'Gorete',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça Dolomitas',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac98defe-1500-4b81-a602-daa0bf35b5aa',
  'Luiz',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua R 319 casa 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abcf5488-5094-42c9-902f-4d6e2a5299b7',
  'Viga Cidinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Progresso',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db550ed3-79ff-426b-b59d-09a817b4c857',
  'Manel gesso',
  NULL,
  NULL,
  NULL,
  NULL,
  'Niassa, Nº 1',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e1cb29c-e3ba-4f20-b613-585ec64fc853',
  'Jansen',
  NULL,
  NULL,
  NULL,
  NULL,
  '...',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c6168a7-d3a1-462c-b651-9a12f572a96e',
  'Amigo Lava a Jato',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a268424-3a0f-4ab5-8d17-2a57b6e708b5',
  'Gabriele',
  NULL,
  NULL,
  NULL,
  NULL,
  '9, Nº 137 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c30427b7-56a1-465a-b70a-25d9d1c84375',
  'Vinícius',
  NULL,
  NULL,
  NULL,
  NULL,
  'C, Nº 332',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41bd1b81-7d66-427e-a950-8e23adecebc8',
  'José Carlos',
  NULL,
  NULL,
  NULL,
  NULL,
  'M',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '738f6eee-e5da-4630-9370-7836381a49ab',
  'Fazenda',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3991068-7562-46d7-bf61-e07a88a7b9c0',
  'Dalgiza',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ec5383e-a33e-41d5-93be-5c07cfa3f82b',
  'Genro Isaac',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '60e786e4-90e0-4e08-8e5e-e546c0e4e528',
  'Bar da Tia \ Congo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Congo, Nº 85',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ee5246ae-ce8a-4cd9-bacb-69ed59f5be0b',
  'Buteco',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7279b7d-d787-4bb5-86fb-a8988849d9dd',
  'Bar Maguila',
  NULL,
  NULL,
  NULL,
  NULL,
  'Morrinho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '477ae6af-583b-442e-baa2-75b8f6cbb741',
  'Bar do Pancho',
  NULL,
  NULL,
  NULL,
  NULL,
  '9',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'de42b56f-2cdd-4846-bf51-ca814328338f',
  'Salão do Diogo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sudão',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7ad52ee-2875-423d-9fcf-8900af9e7353',
  'Cidinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '023ade46-845e-4e9f-8703-07180433427d',
  'RUA M Nº 99',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68fc258c-5ef1-4a2a-bff6-36bc1da180e9',
  'RUA M Nº 117',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc3a167e-01aa-4e1a-bd48-398e4731e958',
  'MIMI',
  NULL,
  NULL,
  NULL,
  NULL,
  'Travessa Carranca',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7330d832-edb9-4b65-8461-989b87f77cb6',
  'S/N',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA H, Nº 76',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3065527-d326-455f-bf93-aec5037ff1a5',
  'Salão do Jorginho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  'q',
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '209047b9-dcc6-442f-a7f8-a6bd46955fde',
  'Menina do Presídio',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a032d219-282f-49a3-9567-d9b24f310275',
  'Gaguinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Trailler Etiópia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c593e67c-bc3c-4b3c-809c-15c915565458',
  'Tabacaria Marracash',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Marrocos, Nº 36',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'feb08a5c-573f-4268-a494-647c5730042c',
  'Pezão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Moto Táxi',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e8b48be-8bf9-4ab0-9e46-cc794b77be4c',
  'Rua Lomé Nº 05',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3caca83-d9ae-43da-b083-fe207b0135ef',
  'Rua Lomé Nº 03',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c481723-845c-4b67-ab0e-e1d2b3eb8b0a',
  'Alessandra',
  NULL,
  NULL,
  NULL,
  NULL,
  'Lagos, Nº 89',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45603b11-ad78-4183-bd1d-db7aa37f6876',
  'Deise',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sandá, Nº 24',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2934d811-9de6-4961-ba81-61e72be0185a',
  'Anderson Moto Táxi',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua da Agricultura Nº 12, Nº Morrinho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a25372ea-04e3-491e-9ea3-9b72baf57213',
  'Tia Presídio',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac118ec2-40cb-4d1c-9621-8bc128b289e2',
  'Cláudio',
  NULL,
  NULL,
  NULL,
  NULL,
  'Eritréia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a4651538-0fd5-456d-86c5-64815e1e05c6',
  'Mateus\ Xande Cantor',
  NULL,
  NULL,
  NULL,
  NULL,
  'Filho do Xande',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb1c2cac-e597-4ea1-acca-ccfa20ee69b1',
  'Débora Sorveteria',
  NULL,
  NULL,
  NULL,
  NULL,
  'S, Nº 113 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '018c1f60-749f-4b6c-9223-997eca1e3528',
  'Orleans',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1af7ae96-b974-45c4-8123-ae622f440ffa',
  'Trailler Leandro\Simone',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ebf621e-25c1-44a6-9d05-70b3895dc843',
  'China',
  NULL,
  NULL,
  NULL,
  NULL,
  '2',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56c59d75-1ccf-405f-b8aa-0c2c547fcdd7',
  'Bar do Hamilton',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c79956b1-ffe3-4f60-8e07-3415daeba6be',
  'pensão do Bruno',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '18904c3a-eb40-48a9-a8bb-a4e47207923b',
  'Didi',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01, Nº 547',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0e7b9d9-dd6e-4ba8-982b-bc4530c10243',
  'Marquinho Mara',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22a176ba-bd52-4906-96fc-61984994dabf',
  'Júnior (Gugusto)',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, Nº 115',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27181671-be11-4536-b441-1cdaaf26e327',
  'Esquerdinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'O',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9506a27f-30aa-4ed8-ba77-ff18685fdc63',
  'Josué',
  NULL,
  NULL,
  NULL,
  NULL,
  'O, Nº 328',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e18b299-b816-4507-895f-8fa8acc7f561',
  'Fabinho Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Guandu do Senna',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ee011dec-ffdb-457f-ac6e-92bf194df021',
  'Walace',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a89a265-381d-41b9-87c9-33b4466e8601',
  'Zé Carlos',
  NULL,
  NULL,
  NULL,
  NULL,
  'Av Brasil',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c38e9c5b-3232-4461-85a0-4a6b4eead872',
  'Oscar',
  NULL,
  NULL,
  NULL,
  NULL,
  'A',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c88c1de8-6bed-4f8e-8277-a1e3323ba435',
  'Vascaíno',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a268c625-5841-44bb-a2e8-b59a19b13b00',
  'Vila 15 Nº 59',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c6b36e2-d779-4612-ae29-e6ce4a1c27e9',
  'Rua N',
  NULL,
  NULL,
  NULL,
  NULL,
  'Casa 117',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc129bfa-060c-4ed2-af6b-686b3520d547',
  'Neguinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9036c58-c43f-4f64-881a-44b8c26cc8d1',
  'Artur',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil, Nº S\N',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64396635-9d38-4583-a064-abd9f9645659',
  'Carla',
  NULL,
  NULL,
  NULL,
  NULL,
  'M, Nº 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '232ae3c2-ca5c-4844-b439-6f01564eb8ab',
  'Marcelo',
  NULL,
  NULL,
  NULL,
  NULL,
  'C, Nº 105 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58ad554a-abc5-445c-acaa-79ec8c3ba915',
  'Padaria Dolomitas',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ed4504c-8d36-4569-989e-d97e28c4e5bb',
  'Fabiana',
  NULL,
  NULL,
  NULL,
  NULL,
  'Etiópia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '275c559b-61ec-4224-b9b0-313005cf7f34',
  'Raquel',
  NULL,
  NULL,
  NULL,
  NULL,
  'Alfredo Gama, Nº 12',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '18fa32f1-8b15-4ce0-b6e2-2c4ae44352d3',
  'Loira Praça',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b00b7518-f416-40ff-bb20-cb7e7fe177f8',
  'Comida Mineira',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7f518f4b-a22e-45e6-9407-a76407581c95',
  'Adriana',
  NULL,
  NULL,
  NULL,
  NULL,
  'Eritreia, Nº 45',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a300756-c6b2-43cb-bfd1-353372a38903',
  'Cartoon S\N',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd73c5e4f-4b2d-44bc-ab70-ecef4ab256a8',
  'RUA R 371 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5afe8cfb-7bc5-466e-b58e-474505602d5a',
  'Salão Libreville',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9d63663-fbeb-4b23-91c7-901303563944',
  'DJ Leite',
  NULL,
  NULL,
  NULL,
  NULL,
  '10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7be9f2e-bce0-4ee3-a1ae-b4adf495177f',
  'Jacson',
  NULL,
  NULL,
  NULL,
  NULL,
  'T',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83dda87a-37d4-4893-a09c-7c67a7a3993b',
  'Rubens\Camila',
  NULL,
  NULL,
  NULL,
  NULL,
  'Acácias',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a409ab6d-b784-4566-af8a-d2ed9e997c13',
  'Baralho',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ced0b2ba-069e-4f2f-ae36-8e8b3c78d922',
  'Trailler Sargento',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4a55794-6696-46cc-8643-379a283de548',
  'Ilto Negão',
  NULL,
  NULL,
  NULL,
  NULL,
  'B',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5d57889e-99af-4fac-b1e3-5d57916d2875',
  'RUA P 164 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59529ba6-ca90-4f4b-ae8a-5555b3048490',
  'Marco',
  NULL,
  NULL,
  NULL,
  NULL,
  'H',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd8dceb93-4ef2-493a-a207-883e17776d73',
  'RUA O 435 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '994be1ff-e8f3-4ca6-9635-e7432f233acd',
  'Irmão do Kaká',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a670d3b5-74a8-4a20-9abe-8d00962e3989',
  'Max Pensão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Pensão Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd4b2146-dae3-4f85-b28f-3faff951181a',
  'Américo (Buteco da Malva)',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d058f67-63ef-434c-bbdc-ea90ff49e11a',
  'Alexandre',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Central, 84',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a590477-9bd9-4cc1-933e-e1ae82cedc54',
  'RUA MARIA QUITÉRIA Nº45',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bdc94ead-0d96-4068-a027-5393bc20a56f',
  'Ronaldo',
  NULL,
  NULL,
  NULL,
  NULL,
  'F, Nº 195',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58edb203-db6b-4f90-a993-4aa686281b4f',
  'Julia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Oscar Ferreira, Nº 83',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4bcd06c4-549c-4067-9278-abf871ad5667',
  'Leonardo',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA ADIS ABEBA, Nº 41',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90f16c00-494c-4653-a28c-2520ff6016c7',
  'Baixinho Moto Táxi',
  NULL,
  NULL,
  NULL,
  NULL,
  'Joaquim Calado, Nº 14',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db71ffa3-90f7-4fb0-9251-768406b6bfaf',
  'RUIVA QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cd07f6dc-a7fc-4f7f-9a88-e6d123c6e56f',
  'SEU BILL',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4fc2dbe9-61ea-4c44-a8e3-a19facaa72ae',
  'Pastor',
  NULL,
  NULL,
  NULL,
  NULL,
  'Etiópia',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '651fcf37-d13d-4e47-a314-b9c1d4add803',
  'Zélia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna 203, Nº Lote 42',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eeaa69b8-2735-4df0-8111-19b471ffa488',
  'Lincon',
  NULL,
  NULL,
  NULL,
  NULL,
  'F',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9583f37b-b5f2-450f-af37-0bb02a814567',
  'Dina',
  NULL,
  NULL,
  NULL,
  NULL,
  'S, Nº 19 casa 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59cf2d27-2b77-45cf-80e1-f0cc5dbbf35f',
  'Jaqueline',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA S, Nº 37 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64b9ef05-41e1-441e-a727-d3ac49ad363d',
  'Padaria 14',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c627dc3-4fa3-451f-9cb8-0d9a53921c00',
  'Deise; Débora ou Bárbara',
  NULL,
  NULL,
  NULL,
  NULL,
  'N, Nº 22 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8f23663-086a-491d-be7f-9cd6028bfeaf',
  'Alex Malvinas',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0efcf447-bd10-4f8a-b9de-96b52e38f904',
  'Lucélia',
  NULL,
  NULL,
  NULL,
  NULL,
  'O, Nº 351 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50a6352a-a193-4c82-afd9-aa6cbeba4acf',
  'Sancler',
  NULL,
  NULL,
  NULL,
  NULL,
  'Lounge 88 SALÃO DO RENATO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '01e741b7-8813-4609-9c39-75c63767c3db',
  'RUA M',
  NULL,
  NULL,
  NULL,
  NULL,
  '23 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e03044ac-9329-43e2-b10f-517ebe91e8d4',
  'Moreno',
  NULL,
  NULL,
  NULL,
  NULL,
  'L, Nº 22 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b89bfc72-964a-46d7-9ff0-32e5f6a906c2',
  'Alex Quafá (Bistrô Maria Jô)',
  NULL,
  NULL,
  NULL,
  NULL,
  'F',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '403a5010-44a4-4149-bb85-e655b279a504',
  'Edilton Negão',
  NULL,
  NULL,
  NULL,
  NULL,
  'U',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58f8c886-4d82-477c-a52e-35b9b51931a4',
  'Nando Consul',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 09, N87 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74912ddf-f441-4378-b766-da5a5a0e5b15',
  'Fabiana Irmã Maber',
  NULL,
  NULL,
  NULL,
  NULL,
  'P, Nº 130 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51353976-5897-425b-b218-66a5f4699d42',
  'Saulo',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26c1e8b2-c9ec-4169-a16f-23bafd8e1eb8',
  'Paloma Beto Taxi',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f83a1524-6883-437a-8fe3-745ca5f2a35f',
  'Jéssica',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83e4f883-5103-4e9c-8f4f-20680b45b673',
  'RUA 05 106 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '607af0a5-a7bd-483d-8657-e5f8950c233c',
  'Danilo',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fe77cdfe-fe50-46b7-80fb-49c3d118e731',
  'RUA C 299',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca86e9b5-b989-4e9b-b58f-c8fdf5e02e44',
  'Beto',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f8d2ad9-78b9-4ce2-b54b-41b540205e13',
  'RUA S 87 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '15437173-d54b-43ee-90c5-dddb0882cb19',
  'jailson',
  NULL,
  NULL,
  NULL,
  NULL,
  'R, Nº 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64f9433d-be0d-416a-a41a-4cfa2bd5adb6',
  'Valério (Bar do Bicão)',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e2619e5-a408-4379-9014-7cfaad0c899d',
  'Tainã',
  NULL,
  NULL,
  NULL,
  NULL,
  'U, Nº 204 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '001b9ba3-2659-497d-8008-895f1f12beee',
  'Leonardo (Aroma e Sabor)',
  NULL,
  NULL,
  NULL,
  NULL,
  'Pracinha do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '571fc693-83a8-4a02-bbe0-783f2ef078e1',
  'Uber Malvina',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52222523-ff29-490c-aeb8-dd73171af1cf',
  'Natalia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Travessa 87, Nº 5',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4f313e1-51a8-4430-96ca-e75046807504',
  'Federal',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b017b9e-c048-459e-8e82-091e0a68c709',
  'Wandinho Trailler Praça',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4e077f0-ebce-4101-80b2-7bc076cdbdb3',
  'Cid',
  NULL,
  NULL,
  NULL,
  NULL,
  'R, Nº 327 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ca75570-4ed8-498f-a0fb-fc5c225d8212',
  'Daniele',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ac250f1-79f9-42aa-97df-a9e5e50f6a4b',
  'Rua Agricultura 49',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c711fb98-1ab0-4e9d-999d-c7505ffe8e80',
  'Marquinho Gás',
  NULL,
  NULL,
  NULL,
  NULL,
  'Y, Nº 16',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '804b252b-0229-49c9-beb4-cf3ca7be0c28',
  'Camila Tânia',
  NULL,
  NULL,
  NULL,
  NULL,
  'D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '862ef839-68dc-4521-b652-1ac200f10f4d',
  'Thamires (filha da nega)',
  NULL,
  NULL,
  NULL,
  NULL,
  'Ismael de Jesus, Nº 7',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4497d999-4460-4378-b9cb-8935528fc3e0',
  'Profº Pintinha',
  NULL,
  NULL,
  NULL,
  NULL,
  'Vila Olímpica',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a63c3c8-794a-48a1-902a-cb151eca9080',
  'Weligton/Janaina',
  NULL,
  NULL,
  NULL,
  NULL,
  'Salão Lounge 88',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f1f583d-6654-4047-ba9f-89d127b2f24f',
  'Kaká Pica Pau',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5d97e2e-339b-4525-b283-c87733830eb7',
  'Julio Preto Pagode',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b774aab9-d4cc-45aa-ab4d-2c7226219f53',
  'Paulo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil, Nº 34893',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2d1d2cf9-f794-4d53-8a98-e2344871a8c3',
  'Marilza',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sucre, Nº 3',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '974ae702-1cba-4b8b-aecc-fb14325e429a',
  'Fernando',
  NULL,
  NULL,
  NULL,
  NULL,
  '2, Nº 351',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a962815f-c202-4d33-be3c-6a0bbec82617',
  'valdicléia',
  NULL,
  NULL,
  NULL,
  NULL,
  '26',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '33f80ad5-5304-4f15-8526-0c569c44920d',
  'Isabele',
  NULL,
  NULL,
  NULL,
  NULL,
  'Z, Nº 51 fundos',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05dd34f7-a7d1-425a-895a-d234aa83f9b2',
  'Luiz da TV',
  NULL,
  NULL,
  NULL,
  NULL,
  'Caminho da Figueira',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd4f2947-1f03-4f32-a326-8dd0012a871c',
  'Alex',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua C do Conjunto, Nº 299 CASA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '106c1bac-b2bc-4fe0-abd7-2bf509a3f8b0',
  'Jorge Rua P',
  NULL,
  NULL,
  NULL,
  NULL,
  'P, Nº 72',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a746db99-b422-4c49-974d-94ce72ecc696',
  'Ana Clara',
  NULL,
  NULL,
  NULL,
  NULL,
  'Daomé',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '65109ac3-9d79-4b00-b42e-f44bd46ac9df',
  'Lojas Esquedinha',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8892e10-ddfe-44ac-bd96-dcd8ad9953fe',
  'SALÃO DO PEIXE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '11074923-bcc5-4383-8637-0146de5fc3d7',
  'Juninho Vespa',
  NULL,
  NULL,
  NULL,
  NULL,
  'F, Nº 294 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ba0f9aa-79c9-4514-9fcd-05efdbd0b994',
  'Fernanda',
  NULL,
  NULL,
  NULL,
  NULL,
  'R',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0eb2e9b-5186-49d1-95c9-e2a1a6fec1dd',
  'Chicão',
  NULL,
  NULL,
  NULL,
  NULL,
  'M',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '095a98e7-4b57-4ac7-ab32-8ed9503cfc7a',
  'Bar do Vila',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Central, Nº 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17aef509-47ac-43f9-b12f-80acc2dc3b9b',
  'Tamires',
  NULL,
  NULL,
  NULL,
  NULL,
  'Associação de Moradores',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c6f10e0-7e78-4d86-bdd1-953ec239af71',
  'Bar da Miny',
  NULL,
  NULL,
  NULL,
  NULL,
  '10, Nº 196',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1daa10f-aa26-43ca-a45f-daa05e633e65',
  'Vivian',
  NULL,
  NULL,
  NULL,
  NULL,
  'L, Nº 116 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5741753d-4e86-4896-a083-899a6caea634',
  'Jander',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '910e7d89-bc09-400c-8591-476bca9330d1',
  'Marquinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estr. Guandu do Senna 1430, Nº BL.2B APTO 208 - Condomínio Esplendor 2',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7e7fb4f-588b-4b2b-9da4-9a73a7f29f8e',
  'Gleice',
  NULL,
  NULL,
  NULL,
  NULL,
  'L, Nº 98 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9c2a808-6d8b-41e7-bb05-846400a36c02',
  'Diego',
  NULL,
  NULL,
  NULL,
  NULL,
  'Ao lado do Edilton negão',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e6752c55-4dac-4358-9c93-8142484f8b83',
  'Karen',
  NULL,
  NULL,
  NULL,
  NULL,
  'U, Nº 23 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39607c94-7a4c-4506-9d7e-f3fe65ec636f',
  'Maria Helena ou Vera',
  NULL,
  NULL,
  NULL,
  NULL,
  'N, Nº 31',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45b49771-b9c6-452e-96ff-f9240d5ef17c',
  'henrique',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f42d7e83-ade6-478c-b245-2d534bdfa6cb',
  'RUA M 82 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2abb3c3b-26c6-4287-8433-dc36471311e6',
  'Luciana',
  NULL,
  NULL,
  NULL,
  NULL,
  '10, Nº 94',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '925db565-45c8-40ad-9f4d-28b1fc546155',
  'Luizinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Caminho da bica do padre, Nº 38',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '113d7b5e-1ce8-4cf1-8943-2e2d7f4125b7',
  'Berenice',
  NULL,
  NULL,
  NULL,
  NULL,
  'Nas irmãs',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87ce4898-c43e-477c-b9fb-842556d31ab5',
  'Trailler Natalia',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f0e5b6da-a0be-48a4-9624-b0bfa443f731',
  'Paulo Presídio',
  NULL,
  NULL,
  NULL,
  NULL,
  'A CASA 21 VILA DO PRESÍDIO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2eb84de2-dc0c-4d5d-b3e5-7affdd2290d9',
  'RUA BRAZAVILLE Nª15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cac170a-535d-4abd-94ff-387bebb37df4',
  'Padaria Seu Ari',
  NULL,
  NULL,
  NULL,
  NULL,
  '10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45424da7-2af4-435d-b542-065bc2329e07',
  'Rose',
  NULL,
  NULL,
  NULL,
  NULL,
  'U, Nº 7',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '33a732fe-8471-4695-abb5-9671d4779e64',
  'RUA N 22 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '34346c05-cab1-416b-97a9-08539a9b8e44',
  'Geraldo',
  NULL,
  NULL,
  NULL,
  NULL,
  '20, Nº 158',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1613655-217f-4ea3-ab7c-353e6f540de8',
  'Padaria Seu Ari Beira Rio',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2d147a04-2633-4de0-92f4-0d2c7102030b',
  'Cristiane Denancy',
  NULL,
  NULL,
  NULL,
  NULL,
  '26, Nº 246',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4839e3d8-5597-436c-82b4-0cff97df9610',
  'Catiri',
  NULL,
  NULL,
  NULL,
  NULL,
  'T, Nº 15 casa 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a36c04da-0014-42d6-af70-0a4e8dc63d12',
  'Franciele',
  NULL,
  NULL,
  NULL,
  NULL,
  'R, Nº 140',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02aaf6cb-b9b2-41d5-a249-175e477006d3',
  'Maurício',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada Guandu do Senna, Nº 855',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6fe5596c-a7e5-4741-bf5e-62444e7c4f9a',
  'Carmen',
  NULL,
  NULL,
  NULL,
  NULL,
  'R, Nº 326 casa 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'de17acc8-aa68-4fdb-81df-a71a2109b1ed',
  'RUA O 107 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cedda861-2c07-451c-b8b0-78f2b534d619',
  'Bruno',
  NULL,
  NULL,
  NULL,
  NULL,
  'Q, Nº 30 casa 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2867e2e7-c43c-4148-b6c6-b01294a2dfa5',
  'Trailler do Bozó',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc2f25ea-2410-4625-accb-fe71b2e6c2da',
  'Padaria Kadosh',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Central, Nº 80',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '28c4db35-668e-49a2-b9cf-6cab8b732590',
  'RUA U 204 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e65eda4e-c0a0-4419-8a01-84469e5db47b',
  'Mário',
  NULL,
  NULL,
  NULL,
  NULL,
  'Cartoon, Nº 56',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4ad9e78-abc2-4cb0-bc18-f36115ef6516',
  'Rodrigo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Salão Top Fest',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a780426-6bc0-4bb5-a58d-8319dcc5a448',
  'Valdir e Renato',
  NULL,
  NULL,
  NULL,
  NULL,
  'Vila Olímpica',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e98eea23-9edd-461d-85fd-d519203e4bd8',
  'Juninho ou Elaine',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Pedro Pomar, Nº 581',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bcb6f5ba-8c6d-4342-9f2f-240ea4be2148',
  'Marcelo RUA Y Nº 61',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4794df01-4483-45d9-82a7-b7d957488581',
  'Patrícia',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '71a7ef79-014d-45f3-adc5-bc5bdb73e628',
  'Dayse',
  NULL,
  NULL,
  NULL,
  NULL,
  'Pensão Praça Miami',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '48445cc3-35f1-40cd-a72b-88eef797fbb5',
  'Trailler Letícia',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c95baa19-f5d0-4046-bce5-530eb5f70a5d',
  'Lilian',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua R 302 casa 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '40cea76d-a79c-4aca-9434-26b78446a0f7',
  'Rafael',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2711938f-d0c9-459a-8b62-c8409f869eb1',
  'Cabeça Cunhado Fazenda',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '65dc47cf-df21-4d9a-874b-b6bbad8e974a',
  'Renato Sujo',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a841215f-7fe2-4dc9-9774-a544302cc48c',
  'Bar do Berg',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ee36c51-1b80-4e4f-b801-2843474049a7',
  'Cléber da Oi',
  NULL,
  NULL,
  NULL,
  NULL,
  'Salão Top Fest',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c913b924-e699-4204-8148-cc491c1d816c',
  'Quiosque da Neném 784',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ee7ca90-7830-4132-97b8-e2557b49250a',
  'Vanda',
  NULL,
  NULL,
  NULL,
  NULL,
  'R, Nº 337',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '34bf1da9-8312-4cee-a43c-c6c6c58ce163',
  'Estrelinha do Saber',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Pedro Pomar, Nº 441',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '450641eb-0f58-4479-86a5-cf344597bc68',
  'Tiana Irmã Playboy',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Cartoon, Nº 55',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd2df33e-097a-4f1a-96a5-12f94755c11e',
  'Laura',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b7ffc9f-7090-41e7-99d2-7aff2c2ec9ae',
  'Crispim',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '38eeb1ed-eb75-4b85-9c13-f6f767de7b7b',
  'Alex (salão do peixe)',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb3f5734-edef-4510-9411-2eec9a8d0eb3',
  'Lava Jato Rafael',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce010dc7-af3c-4a35-b015-2f4fb5fcd18f',
  'RUA R 429 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52e36957-0d5b-4773-92f1-9f4661e26ead',
  'RUA I NÚMERO 34',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2bff3906-4270-46b0-ab0f-5cab816b946b',
  'Avenida Sociólogo do Betinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Número 20',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c6c5a5f-b12c-47f0-8113-ca80d29b7b86',
  'Russão',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, 102',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05cd3d37-ce7f-47cf-91f3-23f0555954ba',
  'César',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA B NÚMERO 84',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '15a311fe-8c9c-4d71-b6fd-3451d583360e',
  'Kaká',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea8adab9-bbbd-4717-92e8-7e919621d6d0',
  'Shrek',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89a53889-f255-4906-88d3-6ecaba704384',
  'espaço bella',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3735f68a-5d89-4f17-88fd-258b09a70900',
  'Nathália Tabacaria',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b1b6814-1baa-445f-95af-ae1bf6735fee',
  'Pará do Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Largo Manilha',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2d39fac9-cdc2-475f-9305-06ae86f931ca',
  'Igreja Missão Multiplicada',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil 34.847',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dbeb4b23-9543-4d21-ad85-402370b02cbb',
  'Mael',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA E 24',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90a80b81-7902-481b-b3c1-0f9f5ec16d89',
  'RUA O 325',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eb149920-2000-45d3-8294-a8e11650ead3',
  'RUA S 129 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7bfa518c-0c2b-41da-bebe-1eb00a376a1f',
  'Academia O2',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6006ac14-1d47-4b8e-8926-97a593aae58e',
  'RUA JOAQUIM COUTINHO CAVALCANTE',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA RUA B, Nº 44',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90b681d7-a17e-497b-86e1-66951e17c153',
  'Simone',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA N 98 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '999d7835-a6dc-4164-887c-9757937df12a',
  'Bárbara',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA L NÚMERO 22',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6b930d9-60f2-4ec4-9bf2-b19208380983',
  'Ilda',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, 93',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81190387-7817-42eb-b2a5-b8a28031a0e9',
  'Dione',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e1f20f7-2ce3-4260-b1ba-a3f3709dbdfc',
  'Oficina do Damião',
  NULL,
  NULL,
  NULL,
  NULL,
  'Faixa da Adutora',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b7156724-31cd-4fd8-b640-5abdea710141',
  'Seu Rica',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA N, 91',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b4416239-f6da-4ffb-bd50-a8d34506997a',
  'RUA ESMAEL DE JESUS DA SILVA, 19',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc5516ac-3543-49a4-aa51-b1be1e48fb38',
  'Cristiane',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua da agricultura, 49, Nº Conjunto do Betinho',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '903efa66-78d2-40ca-9946-c369e816e7ca',
  'RUA 27 NÚMERO 66',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8c652c5-667a-40e1-8e1b-524efa5a2f04',
  'Pará',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA L CASA 90',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20cf55c9-8001-430f-a7b1-ebf58156c109',
  'AVENIDA SOCIÓLOGO BETINHO, 20',
  NULL,
  NULL,
  NULL,
  NULL,
  'NO MERCADINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '377af489-d4a4-4cd9-8f86-ef08fb42a111',
  'Chapoca Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f84a7871-88a8-40f4-b16c-59eca473085b',
  'RUA L NÚMERO 14',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e433e82f-0ecc-4005-948f-d77048724aba',
  'Binho Campestre',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c4d5c22-ba2a-43fb-acba-448071f8b1be',
  'Borracheiro Estrada',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0bf7446d-8e1a-48a2-90ed-ca462fd25407',
  'Roger',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db29bba2-ff31-4f9a-a30c-5e7f6151b181',
  'Angela',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA T 83 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f6c7b08-253f-4683-ba4d-646a9abd61be',
  'Jennyfer 784',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILLER 27 POINT DAS BATATAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9bfc08d-06ff-4d44-8ad5-8f4f293d6eb0',
  'Schreck',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66c2b94b-fa32-4382-a4b9-4c3b20c433c1',
  'RUA C 41 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5cfa4d27-f3b4-4fdd-96cb-ea82a69ca27e',
  'Wander',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESTRADA GUANDU DO SENNA 3532',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '36623808-e66b-4521-9544-da120d1caaf9',
  'Simão',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA F, 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f0cdfd7a-db0c-45d4-a5ee-78cd13b20f0e',
  'RUA BURUNDI 40',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6aa7465c-7059-4518-a20d-10e11252e3d6',
  'Daniele Ultra Leve',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONDOMÍNIO ULTRA LEVE CASA 21',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '418704c3-dc32-4eec-ab1e-0a8c717096ac',
  'SARGENTO MIGUEL FILHO 93',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ca901ae-d280-4c2e-b41f-941fcd22e197',
  'RUA L NÚMERO 23',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a69ed58-b1ae-4306-8ed7-c03d7c3cb525',
  'Branca',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA L 151',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '805125d7-e78b-4a78-a3e3-0940cd340ff3',
  'Marcelinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA MESSIAS LEON 40',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '221b87d5-59b2-4cdf-ae78-5fb03629edc6',
  'Rogério Guandu',
  NULL,
  NULL,
  NULL,
  NULL,
  'Caminho da bica do padre 46',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd241ff8a-8214-420b-8c59-59ed372c9be5',
  'RUA R 404 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd817261-f5d3-4ac8-98f6-d61f3f3592af',
  'TRAVESSA POEBLA CASA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dae3c8ce-b953-4d1f-963a-03781a3520d7',
  'RUA TUNÍSIA 28',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce04cb16-bc21-4010-b7c0-f83b894b2617',
  'JORGE RUA 19 NÚMERO 25',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c0088da-c8a7-45f9-bacc-d8860b3cbecb',
  'RUA P 153',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '689e1c8c-1a81-4c91-ab9d-35aee944be78',
  'MARCINHO RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '67fd7846-fa18-4d4f-8dda-9be46827c16f',
  'LÍDIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA C 316 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '72591c36-cbbe-4759-bb3e-2bbc2e376b2d',
  'Carlão',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA N 15 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f58c1dc0-5b19-4c30-9465-b09eb26eca66',
  'RUA 08 NÚMERO 159',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '94abdcf9-dbca-44df-98a4-3f0eea06974b',
  'Desiré',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA J NÚMERO 100 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b2040bb-9e37-40e9-b599-f8e75ad03a34',
  'Júlia',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA GARCIA DE CRISTO 33',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27bf3ce4-5d8f-4900-a9e5-e897dd373811',
  'José',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01 NÚMERO 548',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f8549a4-764e-4ca5-b2b9-ff70e0fb084e',
  'ivan',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA N 166',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b4b78c8e-cda9-45ad-a410-b62ec4f57769',
  'Renato Roma',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fe66583d-62f4-4ecc-b6a0-bf40924bf49e',
  'TRAVESSA DA PAZ CASA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  'FINAL DA RUA CAMINHO DA VOVÓ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a48af66-0e3e-448e-a07e-805a214e243b',
  'Raul',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Alfredo Gama 17',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05aab4e9-f4b5-4a00-b3ce-ed4fbafbd76a',
  'Viviane',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5252aa6a-761a-42e2-abc2-f94fbc6d9a90',
  'ESTRADA GUANDU DO SENNA, 589',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTES DO CAMPESTRE, EM FRENTE A PRACINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3e6b1af-72cb-4758-b3ec-84b70d35cc06',
  'Leandro do posto de gasolina',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA A 29',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '31c7e9c1-e70f-4b1f-8d45-9d2b8ab99822',
  'RAFAEL SALÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA PEDRO POMAR 130',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1dd32cab-ef7c-46f1-8cb2-8c6197552cc8',
  'MARCELO MACARRÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Q 64 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aec031f5-8a6f-4647-a35d-57dc9bc30035',
  'THAYNÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 08 NÚMERO 159',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4a8556f-a1ad-4dc0-a519-bfba6236ce78',
  'Leandro RUA S 45 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db0f941c-e6fc-430b-924f-b02d0647dc12',
  'Rodrigo Kaline Modas',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01 NÚMERO 298',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8f74e53-2ecd-49ee-937f-2e01b003c254',
  'Eduardo',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA XANGAI 166. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e3c0b56-199d-435c-9498-d99f4f070dbf',
  'RUA C 316 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c69db797-6926-44f7-a4ff-db848f56f965',
  'Bar do César vila olimpica',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c014f75-f7e5-4974-9686-94eccb1e052a',
  'Petrônio',
  NULL,
  NULL,
  NULL,
  NULL,
  '-',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef44f355-1322-4dce-924e-f34a6ccd1b51',
  'RUA P 138 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '799fd84e-187d-4592-857e-674406e9af8b',
  'VALÉRIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Y, CASA 16',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0925fa5a-fd2e-4e0a-8df1-10578e96684e',
  'Carla Ruiva',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9528d487-86a1-4190-8f8b-f079d25995b7',
  'Buteco da 10',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 10 FINAL DA RUA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb1a6daf-1eef-4f88-a890-8a1e7966357a',
  'RUA Q NÚMERO 29',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bbcc2f05-cafa-4f21-8686-f495062358ca',
  'Ana Júlia',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ac0ce6b-7522-4821-85c0-c5f671b98b03',
  'ANDERSON',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA D CONJUNTO 299 CASA 05',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef6bccf4-f1f6-4423-a141-a84ce6c79753',
  'SIMÕES',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA ARAQUÉM 610, Nº BANGU',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e61cbb2-3c21-4c31-ba8f-da52fa1feec2',
  'RUA F 49 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89992bd4-d1c4-49ba-baba-fd0730b69b02',
  'Verônica Irmã Cícero',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be0c9ea5-2deb-4314-9b00-0d4a524316ea',
  'RUA I 218',
  NULL,
  NULL,
  NULL,
  NULL,
  'NA PADARIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7de8ebcc-e320-43e4-aa0f-6b8484b1d2a6',
  'RISADINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02d6f8dd-3479-4112-80d3-69fbcf371a79',
  'RUA JÚLIO REIS, 06',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a002c247-bf10-4ef5-9e79-c4bec85c1ce7',
  'RUA P 156',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '054458c1-0482-4401-a76b-6aac7599ffd1',
  'CARLINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA LUIZ AMERICANO, 35',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '46c973a5-f647-4548-b5bb-cacb14aa626a',
  'CONDOMÍNIO ACÁCIAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'QUADRA H LOTE 11',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd223e830-124f-40f6-907e-16dca4f87952',
  'MACEDO TRAILLER',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e13780bc-6aaf-40f0-8c3a-e322889920b4',
  'RUA DELFIM MOREIRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM CIMA DA RUA 26',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37b7bb51-6be6-4214-aa61-8662a8901df6',
  'Joice',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONDOMÍNIO ESPLENDOR 2, Nº BLOCO 05 APARTAMENTO 402',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8fac59d1-05bb-4d09-b132-50fde6ea1758',
  'Cunhada do Fabiano',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA BRASIL 34200, Nº NO SALÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2928ef6e-4c01-43f8-bdca-14511ae4a240',
  'RUA IAMAGATA 52',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ead201b2-c100-4372-ba27-4f7d0fa3b54b',
  'RUA MARIO PENAFORTE 43',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7165216f-c26b-4882-bf23-fec3eb358a54',
  'Pamela',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01 NO ANTIGO LULA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3688a019-bf46-4172-a8de-dc9c2ec8ad57',
  'RUA K NÚMERO 30',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f1004e54-ef7c-415d-aa82-a3cf613a03a0',
  'RUA 16 NÚMERO 206',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a0c9714-e6b4-4af1-be5f-435fce397860',
  'Rhaissa',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01 ESQUINA DA RUA 21',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1499398e-4ab5-41a8-ac95-cc5b5fc84462',
  'Romeu',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA E, CASA 48',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9672d04a-5253-4726-9a05-5cbe316d0920',
  'RUA JOÃO PERNAMBUCO Nº 13',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a309a18d-f7ab-40ee-9ed1-43a0fd64c3b0',
  'Alberto Trailler',
  NULL,
  NULL,
  NULL,
  NULL,
  'Praça do Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e44ca61-d80a-493c-8368-9df87883ac9d',
  'Pedro Pizza',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Guianas 37',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2e8540a-8c44-4b9a-b6fc-278f9729cd72',
  'Beth Mão',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '112cbcdb-a214-4d17-996a-b55c858fed94',
  'Pezinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Brasil 34460 Loja A',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0614d0d6-8c4e-4d68-afcc-5ddded9de20e',
  'Moiséis',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9d460fe-3dab-4197-9620-cd570e6bff0b',
  'TRAVESSA 84 CASA 17',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd097ec0-f0b2-43de-84b1-1df4959d0ee5',
  'Haras',
  NULL,
  NULL,
  NULL,
  NULL,
  'Caminho do Carranca',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b30bfc65-fcfb-47f7-b3da-fbcf5906b21a',
  'RUA N, 82',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '72a21194-82a0-412a-9ee9-5a2b07c2fd06',
  'RUA U Nº 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9987628-c031-4256-8413-fc0de20de5ef',
  'TRAILLER 15',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA MIAMI',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35bc18df-2a42-4893-be34-38d7fb58ef64',
  'RUA CARTOON, Nº 64',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '57bac942-f942-4f9b-8a7a-703a0e4b1f3e',
  'TRAVESSA CEUTA CASA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a38829d-ea85-4301-a1f7-ef27c8d56690',
  'ESTRADA DO QUAFÁ, Nº 560. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3114acb-bc6d-4bde-847d-2e87600d331c',
  'IVANZINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  'NA ASSOCIAÇÃO DE MORADORES QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0216994-08dd-4c23-befe-0c3f9c9b72d1',
  'Buteco da Deise',
  NULL,
  NULL,
  NULL,
  NULL,
  'FINAL DA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '450df9c0-40ee-48a3-b340-f9b599d7cec7',
  'Associação Quafá',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESTRADA DO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd12195c4-49cd-4ce7-957c-394964e85753',
  'RUA E, CASA 48',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89863519-977b-481a-a289-bf5e974e1966',
  'Lanchonete da Família',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA ESMAEL DE JESUS, 19',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '165e64c6-c637-4103-8d8b-8160913ab03a',
  'Sogro Bochecha',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JOAQUIM CALADO, 29',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '78616fe3-77aa-43cf-b032-7788ae3218fc',
  'Leila',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua Santo André, 24, Nº Metral',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '708be0c2-dfa5-435d-b319-caad86a6e5ae',
  'Angela ou Mara',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA LINCOLN OESTE, 91',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5dbe81f8-c4d5-4994-b58e-21bea833c56e',
  'Jessica',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA SOCIÓLOGO BETINHO CASA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73d4c6f7-0d3e-485d-bb25-39a920bbf09a',
  'RUA 10 EM FRENTE A 20',
  NULL,
  NULL,
  NULL,
  NULL,
  'CASA 234',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fb4f97f-2108-40ae-b977-26b268525723',
  'Manel Ultra Leve',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 13 DE MARÇO CASA 151 FUNDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f5946fd9-19c7-4e6d-95f9-1b4a3c01f021',
  'RUA ARADO, CASA 16',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONJUNTO DO BETINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74f1f821-1dda-4082-b94c-52db072e3776',
  'RUA F CASA 66',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f9a8fa0-0c53-4095-b937-edb8d44cb468',
  'Nem',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA QUÊNIA CASA 18',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45273d08-c6f0-4c37-aa67-087ec43ecd1c',
  'RUA CAMARÕES CASA 40',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b374e876-d502-4845-b406-29b2eda7bee6',
  'Géssica',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JOSÉ DE FREITAS, 126. NA CHATUBA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f39e2f06-0452-4524-ba51-f5307cbabf75',
  'EDUARDO METRAL',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAVESSA OTAVIANO ROMEIRO CASA 24',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '14fb3575-31ad-4c0a-bb7f-f5747dbd1c29',
  'Priscilla',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Z, 99 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fffa55dd-252a-489b-b32d-2f03278d9a99',
  'RUA E CASA 246',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a0f5a6a-ce7a-4801-a70a-de7cc32bc5d0',
  'ALAN RUA K CASA 106',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d8eeadf-e47d-46db-8259-8b25c9fd2e16',
  'RUA R CASA 352',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12b68544-ae4b-441e-afe5-c0ca6fab1f44',
  'Salão do Elinho',
  NULL,
  NULL,
  NULL,
  NULL,
  'SÍTIO GREEN GARDEN, Nº AO LADO DO CONDOMÍNIO ACÁCIAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5590252c-e6d4-4419-a011-79356e621648',
  'Murilo',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA P 153',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '67df4eee-64b9-43d2-af61-f31a251bda21',
  'Pitoco',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA S, 113 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b9573bde-68c9-4ef4-bd96-37e671e30009',
  'RUA TUNÍSIA CASA 88',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '32159792-35bc-4908-beea-c550c0e64591',
  'SILVIO MARROCOS',
  NULL,
  NULL,
  NULL,
  NULL,
  'MARROCOS, 34',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f395cdbd-dfba-4d5a-829f-21eda8cb9ae4',
  'MALU',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALÃO AO LADO TOP FEST',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '002cb49e-6a81-4bf0-980c-cea39f0fcafd',
  'RUA K, 22. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0015c0b1-c687-494e-a38d-442e4995ae06',
  'Cleiton cond. Vale Verde',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA CLEITON LUIZ VIEIRA, Nº RUA A CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '501e05dc-13a7-4d8d-975b-e7c93b698f03',
  'Pastor Gilvan Dias da Silva',
  NULL,
  NULL,
  '35615783400',
  'cpf',
  NULL,
  NULL,
  'RJ',
  NULL,
  '1º Administrador Financeiro - CADEESO RIO DE JANEIRO CAPITAL',
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51ee9eb5-a59b-41fd-b3a2-0e5524e8fcdf',
  'SALÃO TOP FEST',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '830f62f8-5189-468e-acc2-d909698fa4a2',
  'Benjamin de Oliveira, casa 03',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56856f6f-6c18-4b51-9231-ff91beb11ab9',
  'Cláudia Pensão Acácias',
  NULL,
  NULL,
  NULL,
  NULL,
  'Ao Lado do Campo',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd41fc620-0388-4d45-8768-2c98a80f2999',
  'RUA TUNÍSIA CASA 11',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '30917112-86db-46b5-be8e-80f56ff03014',
  'Bar da Pedra',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68724780-377e-45e5-9f86-0243ad97d98e',
  'SALÃO DO FELIPINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0c6fa867-626f-431d-b0c4-9f3adc6245b3',
  'Mateus',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 05 CASA 235',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '94e2465f-a408-41db-89d8-0c9f291e5fdb',
  'Alencar Mesas',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6cf13dc-ec8d-4e6d-a991-4f22631d8bb8',
  'RUA DO SÍTIO DO JOÃOZINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  '2ª Á ESQUERDA NO MURO AZUL CLARO COM BRANCO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '529632aa-ef62-43ae-862e-4d4d7348bd0a',
  'Waldir',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '69b2e9b0-6f0e-4ca3-b722-32d98714504a',
  'RUA 26 CASA 246',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '523009c0-a723-4039-a2ec-5e3910e8186b',
  'Léo Moto Táxi',
  NULL,
  NULL,
  NULL,
  NULL,
  'Salão D´play Espaço Sollar, Nº 299',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '16dae7f7-fd71-474d-bc91-1dff59c7675b',
  'Tati Vado',
  NULL,
  NULL,
  NULL,
  NULL,
  'Estrada do Quafá, 232',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81628197-aae2-47eb-a503-351ff7918bdb',
  'Danielly Quiabo',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua da Liberdade, 31',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6ca7da2-b2ea-4ae6-b0f8-a40afb1174cf',
  'Manuela',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA M CASA 15',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac70bafc-9f4b-402e-85bc-02b944b4cb6f',
  'RUA E CASA 25',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0e81aa28-56e5-4719-847d-b884fe62a3d7',
  'RUA R CASA 147',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b139cce7-0564-44d1-8579-4a377567b3e7',
  'RUA PEDRO POMAR, 540',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '560f1713-21aa-4c1c-94f1-faa836daba04',
  'Lucas',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA V CASA 104',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1256056d-a430-4a3c-8cf0-8fe406f0a237',
  'NETO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA P, 130. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abe99ebb-bb4d-46bb-be2a-f2abd611d296',
  'Brenda',
  NULL,
  NULL,
  NULL,
  NULL,
  'Trav. Mamorana. Nº 10, Nº ANTIGA VILA 27. BEIRA RIO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e03d4a4b-1c08-4b10-be2e-a1d64e738ab5',
  'TOPETE',
  NULL,
  NULL,
  NULL,
  NULL,
  'NA QUADRA DA VK',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bcfdc27-9e3d-4290-84c5-407462d71821',
  'Bar do Júlio Amigo Oscar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua enfil',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e48a6ed6-248f-4ca8-985a-79f883ec96aa',
  'Larissa Prima Henrique',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13e3c6a0-59c3-4fb1-9812-9bbdd7091b8a',
  'RUA T CASA 94',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2feaab1a-b545-47d3-9b12-f721a3d1d4cb',
  'EDUARDO - SALÃO LELU FESTA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cfde074c-c9bf-453c-bace-97747979491e',
  'RUA 09 CASA 88',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESQUINA COM A RUA 30',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7d476a95-f03a-4cd1-83f1-1b28582d4e86',
  'RUA S, 53. CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eef7028f-fdf1-4362-91cc-4b1b56a54484',
  'JEAN',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b23d943-2d8c-43df-8eca-dc093d8ab412',
  'Esther',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA TANZÂNIA CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd62b3851-8cb8-4f22-89f2-cb63365a3c6e',
  'LUANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JÚLIO REIS 810, Nº SITIO DO SEU ARLINDO - ESPAÇO SPLASH',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '256e3649-ff4e-4e4d-bff4-58af5bc7ab6d',
  'RUA X Nº 09 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '28225e4a-7b72-4200-ba89-25c8b44f0c95',
  'Seu Marcos',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA SANTO ANDRÉ, 10, Nº METRAL',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f03cb138-a9d1-406c-aaca-91f303641d06',
  'Carla Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  'Sargento Miguel Filho, 175, Nº EM FRENTE AO PALLET - ESQUINA COM A GUANDU DO SENNA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fccc4804-1911-42f0-a7d6-0f17127f7c2f',
  'ALINE',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01 Nº 87 - PRÓXIMO AO WANDA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cf648a0f-4cf1-41e7-bb90-b51bac867c56',
  'RUA DA AGRICULTURA, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALÃO DE FESTAS KAROLYNNE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ff95e0c-285a-4aa0-9841-c6bf8b3a7338',
  'Valdir',
  NULL,
  NULL,
  NULL,
  NULL,
  'Esplendor 1 bloco 03 ap 105',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e73e5aa-d02e-4e09-ac25-04490519bbe6',
  'RUA Q NÚMERO 56',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc29268a-971b-41da-a728-516348d0e58e',
  'HELENA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA R 121 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '102f5c6b-7c04-4a03-ad80-b169ababae25',
  'ILANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA B CASA 76',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '719c3d3f-7d9f-406e-8dfd-f6cdcf99aa11',
  'ETIÓPIA 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd175a644-5c8e-4b6c-9b83-63807ae2e02c',
  'ANTIGA 13 CASA 98',
  NULL,
  NULL,
  NULL,
  NULL,
  'MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80847aee-bc00-4202-bfaf-510c26de8869',
  'SANDRINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dfe9df83-78df-4a46-a65a-3d29e3e67265',
  'ARTHUR PEDRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JOÃO PERNAMBUCO CASA 18',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5d079e8-ea91-4961-af34-bf021aeb7534',
  'RUA L 106 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e3afac58-141b-4047-9982-1e2111454a4a',
  'RUA O 133 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ecd5495-9438-4e86-82ac-730d8a3d9797',
  'RUA F, 98 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea8bbc97-2ee4-457b-b1f3-6a245393fec1',
  'DAMIÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 08 NÚMERO 110 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '65d173b1-1bdc-4619-befb-b331b1f5694a',
  'JOSIAS OU MARINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA E CASA 02, Nº DO CONJUNTO DO VITALLE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c0ffebe-4030-41e5-8247-ec1e91821a36',
  'RUA R 326 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '395df6f3-dc7c-490d-8cde-0b189f685c9f',
  'LUANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA U Nº 07 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eefd938d-6280-4103-9806-ca80b4a20b7c',
  'FILHO DO ENRIQUE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b835fe4f-dfe9-4454-8ff8-a1459359a246',
  'RUA CARTOON CASA 73',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6ef9ac1-ec9f-46dc-a90c-3be4ee3a3aa1',
  'CAMINHO DOS ORNELLAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '781d29b6-540d-4f10-a3bf-07f2c373ae1d',
  'LAUANNY',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALÃO DO ELINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a53969ae-74bd-4072-99e5-f7e8a33db02e',
  'RUA 16 CASA 115',
  NULL,
  NULL,
  NULL,
  NULL,
  'MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '10065fe9-4976-4fdd-a011-a4136ab0b873',
  'RUA CARTOON CASA 47',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '65f4141d-a0dc-4c55-aa71-aedde90a3914',
  'Débora Barrão',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff1f67d8-f2e9-4c51-8e40-7b69bd6eaada',
  'DONA DINA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA S, 19. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37b6d8e7-7e5e-48d1-90bd-e7537aadfb94',
  'RUA JERÔNIMO CABRAL, CASA 39',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fa5b3066-a862-4937-ba49-45c0460c46a1',
  'VANESSA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JUSCELINO KUBTSCHEK, CASA 07 - MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '580ebc98-fd38-4159-a0cf-81247197e61a',
  'RUA X NÚMERO 215 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ad1a9cc-381f-4399-9c65-f2b1746dd462',
  'JOÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 25 CASA 88',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ab6564a-8fcb-4169-ac35-8ae3f49f559f',
  'SALÃO DO FRAZÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA EM CIMA DO CREMILY',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dded34cb-5389-421a-ae17-d6f36f37c1e4',
  'FRANCISCA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESTRADA DO QUAFÁ 147',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4ec0fe0-cd95-4470-8801-132628fdcb8c',
  'TRANSRETA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b46cd791-a44e-43ff-83fb-1e3e261fc322',
  'RUA N CASA 48',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5fbc9f3-b460-41a6-bbf6-b59731e509b3',
  'MARCOS',
  NULL,
  NULL,
  NULL,
  NULL,
  'CREMILY, Nº PRAÇA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8990ef89-c984-40a9-99e4-4d6e5763f859',
  'BIANCA CRAZY',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0138d703-8326-4637-a1bd-306d200384df',
  'FABIANA PAULO',
  NULL,
  NULL,
  NULL,
  NULL,
  'CAMPINHO DA ZAMBIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac463275-6f4e-4879-869e-719a6a46a566',
  'WALACE RUA S',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5520bbd9-5fc8-4de2-a728-f3d1776b88eb',
  'VARANDÃO DA GANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'Nº 8',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59eace6d-71f0-4aab-b852-a0b40b0ebfe5',
  'SILAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA LUIZ AMERICANO, 37',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62552208-1dfd-4211-8710-02f31bea8099',
  'RUA DANIEL JOSÉ DE CARVALHO LOTE 10 QUADRA L',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7bed8e29-3b82-4578-8ddf-28f4814332c0',
  'CLÁUDIO MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 18 CASA 91',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a52a845b-d25f-461c-9ae2-6c82869272e4',
  'RUA N CASA 57',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0efbbe4-9e14-47c5-8988-6d2eac46b465',
  'TAO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Q 106 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1558e76e-6d61-46c5-bb67-6cd9c23ebbfd',
  'RUA N 83 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e90adc8-58e1-44a6-8d49-b187b149ef23',
  'LUCAS THOMPSON',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5186ba2b-6929-4507-b37b-0b8664aef3b5',
  'RUA ARADO CASA 08',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONJUNTO DO BETINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1103ce31-d83b-43d5-a7db-4c0a6bdf0b0e',
  'ROBERTO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0a80c6c-8d40-41ed-8490-f9ebd1273776',
  '1ª IGREJA BATISTA QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  'AO LADO DO SALÃO DO PEIXE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '751cfeed-3c84-4ea3-9d10-0700a8922622',
  'RUA O CASA 65',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19ff55de-0f91-4c20-ae8a-a6cd2f14f954',
  'LEONEL',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA BENJAMIN DE OLIVEIRA, 25',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8fc03480-aa71-4494-9d3a-dde70248c892',
  'DOUGLAS RUA D',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c9c2331-8e0c-4da0-b1f5-42088d27f077',
  'BAR DO GORDÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'ZÂMBIA/CONGO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e17bd73-1a84-42e9-bac3-2b17d28165c8',
  'Seu Geraldo',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e26d8135-5c78-45a7-a91e-016705685a92',
  'RUA JÚLIO REIS CASA 128',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c4da7a6-f6dc-4551-ad48-9ccfcb784b23',
  'VERA RUA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM FRENTE A RUA 25, Nº CASA 139',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '60bcf4d7-fd94-4bef-a2af-ef1fef252076',
  'MARCOS GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA 749',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ae0d9c2-47ef-42e2-a4c0-11723e78bcb0',
  'BRUNO HENRIQUE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O CASA 108',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fdb15d8-2931-477d-9aa0-2e6d7d493099',
  'RUA CLEITONLUIZ VIEIRA  PROJETADA B',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONDOMÍNIO VALE VERDE, Nº ÚLTIMA CASA DA RUA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5c9492e-26e7-4ebf-a10e-a12a5a42f5f1',
  'RUA CLEITON LUIZ VIEIRA  PROJETADA B',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONDOMÍNIO VALE VERDE, Nº ÚLTIMA CASA DA RUA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2582cc47-4b77-4f61-ae5c-89ca92c9395f',
  'SUELI',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA S 87 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1bd556fa-0eb7-44cb-9d42-264bddfb6ec0',
  'RUA EMANUEL BEZERRA DOS SANTOS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DA ACADEMIA RHINOS, Nº 21',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7abee9b7-0d0f-4413-bb3b-5e58eda4904e',
  'RUA N , 07 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '581fc10c-7db6-4cd5-92a9-484f9a28ae6d',
  'MICHELE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA F CASA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '84abfd2f-423a-48cc-9c61-275278d82003',
  'PADARIA RUA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  'MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb6e2c12-8886-4bbf-aa79-3ab62324d827',
  'MAURÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O CASA 124',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a735583e-ebd9-4728-b452-0b74092bdeaf',
  'BRUNO:',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2bf5b7a1-6b9a-4279-95b7-03bd9817924d',
  'ARTHUR',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA J Nº 100 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '666d5a99-10ea-4803-b0f6-836befc2cb7a',
  'JÚLIA:',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA E Nº 09 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7bfe7a7e-49f5-4d10-acf9-78fd2d96085e',
  'PRIMA NENÉM',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA AURÉLIO CAVALCANTE Nº 20',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf060f94-d51d-4126-a62a-3f40a7924521',
  'TRAVESSA AMAZONAS Nº07 PROGRESSO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '394d8cfd-2ac1-425b-b74b-4bbf8d77c791',
  'ACÁCIAS HALL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bcc051f6-08a3-4ab8-a9bd-b9a8a32c1807',
  'DADÁ SERRALHEIRO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2eaa18f-551e-4547-923c-2274cc3ec8d4',
  'PAULA LANCHES',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '940e255e-6a46-4716-868f-7769ddf60aee',
  'GRUPO PELADÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6e0c1e7-45de-4db5-8fd4-f5c6c0c94f03',
  'RITA OU NATÁLIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAVESSA ENICONIA Nº 05, Nº CALÇADA DO VALÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93a2c028-0450-4a39-8168-ac96e7a83c7a',
  'TRAVESSA 87 Nº 19',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6950626c-ef91-4214-83a0-dbc42ed52c4b',
  'CÉLIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Q Nº 182 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a64e696f-c35a-40c6-883e-ec313789f50c',
  'RUA IRINEU DE ALMEIDA, Nº 19',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5313bb2-947d-4d12-97fd-28765e328777',
  'RUA N 91 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '101db035-315f-4785-ba2c-d2d48fdc5070',
  'DAVID PRACINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1726f25-a1c7-4549-907a-2b5a913087b2',
  'CASA DO MARD',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUIANAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05c78482-61af-4483-97f4-ed6405b7d568',
  'RUA 27 Nº 48',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0175c481-c56d-4f55-acd0-bd491a80afb7',
  'SILLAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA FRATERNIDADE Nº 30, Nº CONJUNTO DO BETINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd204bcd5-00bd-40e5-9252-35fe9f3fc186',
  'ANTIGA 14 Nº 171',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7c3d1b0-a3d3-4d55-8e06-14248290caea',
  'RUA R 318 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '929230e9-6774-451a-885a-80c7e4319b86',
  'TUZA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA GARCIA DE CRISTO, 34',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7c04b1f-4093-4bd6-b48d-42d85da274ae',
  'VÂNIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'QUADRA DA VK',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '31a30628-7ca0-47f1-ba96-dda41256a0eb',
  'Weligton Puk',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA TUNÍSIA, 06',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61540a25-5bc4-4ff8-bef9-f1fdaced3211',
  'RUA M , 22 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'faad24c5-580c-4e96-acf0-c77c54002fca',
  'RUA CAMARÕES, 56',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ee8b722-3555-4527-8d6c-262a0a6fedeb',
  'RUA BURUNDI, 22',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1ccee87-02ea-4808-b1d5-87fb8150786c',
  'AVENIDA SOCIÓLOGO BETINHO, 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6303f800-83e4-4b58-99d8-602de0da79c8',
  'DONA JÔ',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 213, Nº CASA 14',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dcf6a048-8f2f-4864-8404-bf1a26156657',
  'RUA JOÃO PERNAMBUCO, 08',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b6ad3c1-122c-4696-9467-8b75fd32edfd',
  'SIMONNE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA XANGAI, 214',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '75ae271b-7e0b-452f-a57b-07ef84072d21',
  'RUA ARADO, 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4935028d-cdda-4c20-9f83-15f0e4ce66ec',
  'MATHEUS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA C DO MERCADO RIO, CASA 20',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ac15f51-9f3c-4d40-90fe-2c9a043637b2',
  'FRANCISCO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O CASA 320',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83961053-27f1-4810-a2d6-d6e79d2f441d',
  'GLEDSON',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA R, 370. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '676ea2bb-0c36-41f7-9f67-0b1aa5f1125d',
  'CARLA RUA O, CASA 177',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e13fd83-b064-43cb-928e-1c6316b0601e',
  'RUA 26, CASA 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa204891-fd89-4ff9-bdb7-2294c0de53ed',
  'RODRIGO MALVINA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 25 CASA 153',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86615ea6-4748-43d6-8458-9d87fc471d17',
  'PENSÃO DA JU',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA HAMBURGO, CASA 142, Nº GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '221315d1-0a7c-4704-a17d-3a08dc800794',
  'VAGNER',
  NULL,
  NULL,
  NULL,
  NULL,
  'NO CAMPINHO DA SUDÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fef4ab43-fd2f-4121-9370-0de3cdc17eb6',
  'LARISSA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 19 CASA 86',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1762e812-fc05-4155-b918-3f980cc08987',
  'RUA QUÊNIA, 17',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '865ec60f-65d1-40a8-b1cf-243eb316e4ed',
  'RUA ARTUR NAPOLEÃO, 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '32523b40-bd37-4267-bace-dab80e4f8986',
  'ROCHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 13 CASA 15, Nº MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9ea09db-c57f-449d-870b-d32e00de36a9',
  'AVENIDA 01 Nº 233',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '647c0d07-4d68-4295-b460-f256fd9614c1',
  'MÃE DA IVONE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2505ec38-c5f3-4494-9797-9422666e8894',
  'RUA HAMBURGO 201 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '54cf65df-64e5-454f-b7ff-109a1a06eb79',
  'RUA L 98 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ddf60d91-1cb1-4823-acb9-132b5bb81f63',
  'RUA T 54',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '493483ac-cca6-4972-bc88-c1f67916f1c1',
  'BAR DO CAPIXABA',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM FRENTE DO 394',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '03bd37ba-3b86-49a9-bd81-b1ff6c1f348f',
  'RUA L CASA 95',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '71eca587-84e4-407a-95fd-b1ebdf1f6d16',
  'MONICÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8b9aa41-8813-457a-aa75-0662bfb62a17',
  'BIBI BRONZE',
  NULL,
  NULL,
  NULL,
  NULL,
  'FINAL DA RUA 26  CASA 127',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e098343-1345-4758-92fa-db7d3b39c1fe',
  'RODRIGO (IGREJA)',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DA SOLIDARIEDADE, 45, Nº CONJUNTO DO BETINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b1d334a-b356-4fac-8599-cc771de17825',
  'ESPAÇO SOLLAR',
  NULL,
  NULL,
  NULL,
  NULL,
  'QUAFÁ - CONJ. VITALLE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2225ebdd-199e-45c2-85be-a0d6550cf5b5',
  'LEANDRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 3795. BICA DO PADRE., Nº PAI MÁRCIO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce274c18-ce31-4ade-a5ac-c5d21ea15b06',
  'ERICK FUNCIONÁRIO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f86a6de7-ba23-4576-ae0f-1b7bfa123c60',
  'RUA P CASA 121',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49810248-c5f0-4b81-ae95-0ff4a6309df6',
  'ESPAÇO SOLLAR AV. BRASIL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b00db66b-8996-4037-a10c-583e36c667ca',
  'MARIA ÍNDIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALÃO DO PEIXE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ccd7682f-674a-4e49-885f-23f3f07f47a2',
  'RUA S CASA 95',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb4109a3-bbb7-4657-82c6-f43a6a7b64a0',
  'DULCE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DO ULTRALEVE Nº 145, Nº PORTÃO CINZA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a86cdd0e-e838-4897-b5f8-5a411deaf164',
  'ESTEFANY',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESMAEL DE JESUS DA SILVA, Nº EM FRENTE A FARMACIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4de6dbc9-188d-4519-80da-ab76951809d4',
  'SALÃO DO RAI',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA B ATRAS DO VITALLE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '817c0f5f-e783-4581-a7d6-8a5978e085a0',
  'THAIS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA VIUVA GUERREIRO, CASA 38',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b722b4e5-1e0b-4f0c-9e69-ba9e05a01f47',
  'ALAN (LOJA)',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA ALFREDO DE ALBUQUERQUE, 36',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e468873e-f5c1-414d-911a-1e5339a9ed05',
  'PAINTBALL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd018d644-fcba-4623-b362-803eb8d3ac68',
  'RUA N CASA 140',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07425773-da69-4fd3-84ab-7736c105f21d',
  'SALAO COSTA NETO',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESTRADA GUANDU DO SENNA, NO CAMINHO DA FIGUEIRA, Nº 10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e716ca8-d1c4-4916-97b3-dfb690f5de24',
  'Marcelly',
  NULL,
  NULL,
  NULL,
  NULL,
  'Avenida Alfreedo de Albuquerque, 82',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f11e9c49-e4ff-447f-832d-906662adc923',
  'Yara',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA LUCY AZEVEDO CASA 219, Nº FRENTE DA RUA 22',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bc5d837e-fd67-4f21-b606-c41b822f2cb3',
  'LUANY',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA R CASA 429',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3501d47-3e84-431f-bc3c-0a20d0ec5c7a',
  'VANESSA RUA U',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6d079faa-1874-429d-9392-bcbb6594a5c0',
  'EDILÉIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA OTAVIANO ROMERO, CASA 25',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f8b11af-e099-4427-b557-70cc5247ef33',
  'RUA JOSÉ GONÇALVES, CASA 84',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6907c9dc-8c92-4f78-acf2-4d7ceb57bc19',
  'ROSE RUA O CASA 28',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c625b659-111b-470c-b931-e5ce459e0c1d',
  'CONDOMÍNIO YPE AMARELO',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESTRADA GUANDU DO SENNA, 203',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e1fa8e2-fabb-4302-9ecb-87f030eeebdf',
  'FLAVIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'NO SALÃO DO PEIXE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '164a62d1-9fa6-4b1a-b33b-f337c63d0466',
  'ESTRADA DO QUAFÁ, 300',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f02317d6-0a06-4ebe-8da1-68a747463653',
  'ANA LUCIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DA FRATERNIDADE, Nº CASA 15',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b9228a3-be76-4cef-a8a3-332709b05732',
  'RUA PEDRO POMAR, 180',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61d0e388-c124-4955-9bf3-be4f3d54b879',
  'RUA GARCIA DE CRISTO, 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '352ba3b6-998e-4862-bac0-60a3f36950e5',
  'VILMA MARIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILLER NA ESQUINA DA CAMARÕES',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09f4bdd9-ddb8-4484-8429-ddfe039e0237',
  'Marcelo Guandu',
  NULL,
  NULL,
  NULL,
  NULL,
  'Guandu do Senna, 589, Nº EM FRENTE O TRAILLER DO ALEX',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5624701d-6a3f-4ded-b331-af06977ace4e',
  'VINICIUS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Q CASA 45',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad69b69c-ebb3-4314-bebb-9601205711de',
  'RUA TUNÍSIA 58',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9b7b59c-1f52-4a07-87d9-b53e1f8322c8',
  'RUA TANGANICA 25',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'beb21986-8485-4c3c-acce-2df9e84bbb16',
  'AGUINALDO',
  NULL,
  NULL,
  NULL,
  NULL,
  'SÍTIO DO ARLINDO (ULTRALEVE)',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8aefd2c7-fcd4-455f-8a0d-c0002c089ef8',
  'ESPAÇO BARUK',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '60849648-73ae-44f3-b671-27263debb162',
  'JEFERSON',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA MARIO PENAFORTE, 48',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5dc78a81-da45-4a2b-823f-a9644a6b8f7f',
  'SALAO EM FRENTE AO GAS NA MINISTRO ARY FRANCO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0219d18e-d7cc-4a62-98bb-30c1628f28cf',
  'JANINE',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb5bc78f-4d65-439d-9750-3e505b11a562',
  'BAIACU',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA N, 38 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da595682-e849-441f-ada3-60196d4818ea',
  'DAYANE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA AMÉRICO GOMES DE ORNELAS, Nº CASA 132',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52c5e411-8d2b-4ef1-9d1b-1d2a09b0ec17',
  'RUA HAMBURGO, 142',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b7c5a39e-c683-40d2-8cce-83a3cef4cbf4',
  'RUA R, CASA 131',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df03e140-4238-45e0-80da-e6540e2f7445',
  'SEU GUIDO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA COSTA JÚNIOR, CASA 18',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09ac0c67-3b97-477d-8565-2a7efabebd22',
  'RUA T CASA 99',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b149f564-085f-4515-9732-ab9a4a1fae09',
  'MAX BURGUER',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20c5df42-a551-44d1-9bd2-56096a4de2c5',
  'SEVERINO',
  NULL,
  NULL,
  NULL,
  NULL,
  'FINAL DA RUA 17',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ec7e604-4f43-45e5-91a7-f11fcf7fbc49',
  'RUA P CASA 38',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26a5d9db-2b45-452c-b7e8-ca963bb545fb',
  'RUA S CASA 19',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bd07202-8b51-4f29-8574-c5113272aed4',
  'RUA Q CASA 157',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ffcec7a-2542-4ab8-898e-10a7b85394ed',
  'ZE PRACINHA QUAFA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ba31b9f8-6e01-4942-98cb-2af7f588866f',
  'RUA JUSCELINO KUBITSCHEK, CASA 36',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a70ec84-f749-410a-824a-f75d3efb1706',
  'HEBERT TRAILLER',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47e2ed98-de49-413d-b0dc-51b87c3f3084',
  'GOMES',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA RUA 21, CASA 99. MALVINAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e892b2c-c70f-4ab0-ba4c-8ca9a1ea7855',
  'BARRÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac91e147-498e-4880-b2c5-235e21495363',
  'RUA R 370 CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a30f4ae-e564-41bd-863d-46f7b5ccf75a',
  'RUA LUCY AZEVEDO, CASA 219',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '509a330c-da47-4297-87a6-5c3d5d94397f',
  'Carlinhos',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA V, CASA 119',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51027a7c-8ac4-4c34-8c54-d55b4fa86529',
  'RUA M CASA 14',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e217d441-116a-484f-a237-7b75e43905c1',
  'SANGA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JÚLIO REIS, CASA 25',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8d19d92-66b0-4925-bb48-6e3b60196788',
  'RUA SANTO ANDRE, CASA 05',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99d8c860-677c-48bf-b86b-16139ddf7322',
  'RUA Q, CASA 37',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c577066-7349-456f-9932-6c112c9909d0',
  'RUA O, CASA 33',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95449674-4f28-4722-aecf-e76e838d141d',
  'RUA TUNÍSIA, CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91acb941-4b10-4cc9-b413-7ca4fc7568e6',
  'RUA Q, 38 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '710a287b-6189-4e7d-a6a3-23aabefa7e8e',
  'ESTRADA DO QUAFÁ, 350. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ef33777-4d98-42f6-854c-27c24d4d19e3',
  'OFICINA DO CARECA GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0801120a-76e4-4c65-8905-17ed69bcdfea',
  'ADELMA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA YAMAGATA, 52.',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '84025d77-8305-43e0-b92f-61bcf82d1018',
  'CENTRO COMUNITÁRIO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09c77475-685e-4a47-ba24-370361ba52ff',
  'RUA CASTOR DE ANDRADE, 129',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5864b0c1-76ef-45a3-992b-c17817dc6c45',
  'SALAO LOUNGE 88',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b3e72a1-8d02-476e-b8fe-5e89d1351548',
  'RUA S, CASA 100',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74de1a16-6924-47ba-8641-665ab55ed640',
  'ACAI PRACINHA QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7cf859d-ad25-4876-bcd7-af47b469465e',
  'BAR DO ROMARIO',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM FRENTE A FARMACIA TUNISIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '319baa63-7772-425b-b639-c500e83ae7a2',
  'COND. ESPLENDOR 01',
  NULL,
  NULL,
  NULL,
  NULL,
  'BLOCO 09 AP 106',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cf43ab6-2187-4e98-b1eb-11f793a3bfe3',
  'RUA P CASA 180',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b694d023-ec15-4422-922e-7fc6df78f18e',
  'RUA JÚLIO REIS, CASA 69',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f87a8509-a44b-452d-914e-96a641cf074e',
  'CECILIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O, CASA 325',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73f51ccd-a67f-4626-8af9-eacf79ae60ec',
  'AVENIDA BRASIL 34.957',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43b2befd-db85-4e84-be28-5e998e0166e2',
  'RUA N 183 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c602830-3fea-488a-a15c-1bad9f6aba61',
  'RUA B, CASA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a9ec26e-3ebe-40c1-94d5-b05af52533a5',
  'SALAO KAROLYNE FESTAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DA AGRICULTURA, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f27dae4-14ad-45d5-8d54-f6358b38bb80',
  'SALAO BRAZAVILLE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '939054b9-d436-49e3-a799-be5ce37ce58c',
  'RUA 09 N179 CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b7f4888-e903-4c6c-a8f5-dfc00d84e8f4',
  'QUADRA VK',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '28fdf9f9-7917-4abe-bc3b-97ef08a180aa',
  'TRAVESSA ORIZABA, 32',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8a7eba48-efcb-46d8-bbb2-162e134a3188',
  'RUA JOSE GONÇALVES, 111',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f620cf2b-0d24-4b11-be85-0491380d57b1',
  'TRAVESSA SEVILHA, CASA 18. LIGHT',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3edaad59-0c9a-4587-b0f3-04a880988dda',
  'MeS Bar',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7bd15c3b-e374-4048-a055-af481260ace0',
  'DEBORA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA Z, CASA 83',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '669cccc2-f8b7-4a8d-826d-34bebe0eda4c',
  'PAULINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c35c56a0-9c76-442f-accc-bfc87c73dfec',
  'RODOLFO RUA i',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3c6c3df8-750f-4051-9c60-11987a1f40b5',
  'PADARIA RUA i',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86e7f477-23d6-4309-9bdc-df0a28a67a63',
  'RUA L CASA 55',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6daf36b2-083a-4c06-bf87-cd38a195e250',
  'LA CUNHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA i',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae9442e4-2b02-479f-a835-9c8e6ff08839',
  'ESTRADA DO QUAFA, 620',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ccc28ae3-ed5c-4c76-bf7f-51e4310aeb13',
  'RUA 16, CASA 188',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f5d978a-6468-4f07-89b5-3cc378a8810a',
  'LEANDRO RUA R, CASA 360',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85b4d3d8-f91a-4430-a3a5-f38cba334125',
  'Aline ou Patricia',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA B, CASA 13',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6167d30b-89e2-49ec-906b-f9baab1bc1f3',
  'NELSON BAR',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA ETIOPIA, 54',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4322b255-a9a1-4006-9699-a2f26df3cf3e',
  'SARGENTO MIGUEL FILHO, 28',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62cd4d0f-5889-4ce7-a4d2-5576198768db',
  'RUA 02 CASA 75',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e199558a-2afa-4a30-82e1-313771a9e383',
  'VILA OLIMPICA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7c565a7-5308-4f6e-b83a-ed1edd6a9de4',
  'RUA CARTOON, CASA 36',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a432206e-c413-43bc-af07-b2dade5d587c',
  'LEO CREMILY',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7116527-e158-40ac-9831-228aa6bca0ba',
  'ANDRE TRAILLER PRACA 784',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eac2bb1b-180b-4f90-9527-0857194470fc',
  'RUA JOSE TOLEDO DE OLIVEIRA, CASA 21',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd674b485-8548-4069-aacf-7c2dbeb95827',
  'SARGENTO MIGUEL FILHO, CASA 73B',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39d5867c-4232-4e28-8565-38baf35220ad',
  'CONDOMINIO ESPLENDOR 1',
  NULL,
  NULL,
  NULL,
  NULL,
  'BLOCO 01 APARTAMENTO 303',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '413a8a3f-63d8-40b5-ac22-0d86dba3a699',
  'RUA M, CASA 90',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e7075c2-e440-48bd-877e-f9aa9aec3931',
  'PAULA',
  NULL,
  NULL,
  NULL,
  NULL,
  'CASA EM FRENTE O ANALANDIA, MURO AZUL',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '573af922-9b6e-4b65-bcf3-d6fee27ecac5',
  'DONA ANGELA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA I, 166. CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bba97fdb-1461-4b4f-8534-72bea0d9f1dc',
  'RUA T, CASA 49',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9f2ec73-44e9-40e9-89e4-5019f21471a8',
  'RUA JAIME REDONDO, CASA 06',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '96bcb57c-ea9a-497d-ae57-3ce227bd9cc9',
  'CARLOS GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93a4a4da-9da2-474a-b3f6-ec76612c5898',
  'RUA DA AGRICULTURA, 13',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8dbcd90-e684-4ecd-a86b-fbc4a81ee873',
  'MARLINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '10c0fd64-474c-4f9b-a75c-863cb719eabb',
  'SOLANGE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 09',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f95db449-ac0b-4e48-8ec5-e6df4da75573',
  'PALOMA MANIE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1f4714f-543d-4205-8eb4-4f2ede6440ff',
  'RUA N, 14',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0194155d-0892-479b-ae1d-3e0e93b4f7c7',
  'RUA L, 119',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '75fbe6fc-4ef5-4d4b-a611-4fc9495f98ba',
  'FERNANDO GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA KAMPALA 103 FUNDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c54dfb4b-bd07-470a-9ff9-64a9594c17be',
  'DONA SOLANGE',
  NULL,
  NULL,
  NULL,
  NULL,
  'SALÃO LOUNGE 88',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '913216ef-2ff3-47da-bf56-cacf26d0a3c2',
  'RUA H, CASA 28',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '289a9b0f-f803-4780-afbb-e53fb45e5784',
  'RUA R, 131',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a836a96b-7d20-4a62-ac84-fb896db7863a',
  'JOICE JORGE ZARUR',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6576633-2be7-4936-adf9-37fbf6702a3c',
  'DAIANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA CONGO TRAVESSA BENTO CASA 04',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '18c6fbb1-359b-46b2-9633-d0fe91fd006f',
  'CAMPESTRE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '155aac81-cd62-44cc-bfa6-875286e54fa1',
  'RUA PEDRO POMAR, 441',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d96cd6e-c067-452c-ab14-b2ec7078bd58',
  'RUA PROJETADA 12, CASA 03',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26556f7e-5ef8-43ad-82f1-d6a7f20ab7ae',
  'TRAVESSA RODRIGUES, CASA 10. CONGO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '806a5555-77ba-4129-b3ef-3782da2dbd0d',
  'RUA N, CASA 150',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5f87f159-7314-4ae1-8714-c728551875f2',
  'COND. ESPLENDOR 2 BL.09 AP.502',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '615435ec-9c53-47c2-acd2-d63b9c21c638',
  'PATRCIA PRIMO',
  NULL,
  NULL,
  NULL,
  NULL,
  'AO LADO DO BAR DO CESAR',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ac9229c-6cdf-43b1-9a03-b2e58039c814',
  'ALICE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O, CASA 409',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a425cd61-9922-4248-a6ad-7383093d96fd',
  'IGOR',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA O, CASA 245',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5fcc58dd-3856-4822-ba3e-256bf5a9915f',
  'NATHALIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONDOMÍNIO ULTRALEVE, CASA 73',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9fba4f2a-f8e7-4c44-aae3-d469d7a8485b',
  'RUA O, CASA 408',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9c56b73-fb95-4549-a194-5577c2414242',
  'ROSILENE',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAVESSA TAFAREL, 333. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07716751-dc84-4a03-81a9-830a6c56debd',
  'LUCIANA MARA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 13 DO ACACIAS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e32286b-bc70-4f71-9dff-a5fd91e02799',
  'ESTRADA DO QUAFÁ, CASA 50',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '69fab295-3bf9-4381-8220-fd0a116bf180',
  'RUA EDUARDO SOLTO, CASA 96',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6b3ce26-a58f-49b5-82df-5d4a736e0fb9',
  'ANTIGA RUA 19, CASA 25',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27eeb132-a4c2-42a2-a5c8-b791841a49ca',
  'INES',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA JOSE TOLEDO DE OLIVEIRA, CASA 21, Nº JARDIM DO EDEN',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '981bfb19-00e8-4433-9c22-5e4a49ebc217',
  'RUA DANIEL JOSE DE CARVALHO, N.02',
  NULL,
  NULL,
  NULL,
  NULL,
  'LOTE 10 QUADRA L',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f21d3f1-72e3-4ecb-813f-e3776f3bc6ac',
  'ESTRADA DO QUAFA, 416',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c172beb7-4e27-41f0-b6e1-c3e20bb33e30',
  'MÃE DA AMANDA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3abf2c5d-0455-4a9c-8b25-f7666e18589b',
  'RUA JULIO REIS, CASA 35',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a9d5982-3293-4640-aa6a-2cd5059d93d0',
  'RITA THOMPSON',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA RUA 05 CASA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '110d2e9f-d626-4a64-8105-e2368281d6e8',
  'RUA K, CASA 48',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a76d3c3-5102-4c14-8f25-b1d11a85bef2',
  'RUA P, CASA 73',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b540aa70-7127-461c-a9fc-d93a9f626710',
  'RUA L, 39',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '046ea6b5-5685-47f3-a02d-52acd65776a5',
  'PARA MORRINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  'FINAL DA 17',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89c0e6b6-3ab3-4141-831d-d694625bfa4d',
  'RUA K, CASA 98',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c962d23-c430-40ae-92a9-06dcc4b7e2c2',
  'RUA KAMPALA, 103 FUNDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1be79a50-4f9e-4933-97d6-ec2bed4cc5e2',
  'TRAVESSA MICHIGAN, CASA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63ea99fb-e90d-4c48-a3ee-e401e5570917',
  'RUA SUDÃO, TRAVESSA ISLÂNDIA 7A',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '18d6ea12-cdf3-4fc8-ac3d-0b6122329a65',
  'RUA I, CASA 12',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b103b52-402f-46fe-a200-4c683747a460',
  'GRAZI PADARIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA RUA 05, Nº32',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '873589a9-c078-4ed7-a470-381817f660de',
  'SALAO DO PANCHO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA TUNÍSIA 40',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e00769b7-6f9d-4f43-bcab-12ba6d41c0f3',
  'RUA CUPERTINO MARQUES, 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5710e6b5-5777-456a-a70e-9721d9181dbe',
  'RUA XANGAI, 191',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39c0940a-cf8a-4d8e-9245-35082010e16c',
  'RUA OTAVIANO ROMEIRO, CASA 92',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74458617-ad05-4f91-b6f2-00e8ee079b47',
  'VILA 15, CASA 31. LEAO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb2ef1ae-8d4b-41da-b932-6894a58e8066',
  'TRAVESSA 90, CASA 27. CAMPO DO VILA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9919a6e7-00a6-4463-b1b1-5c65a3d2c02f',
  'RUA H DO VITALLE, CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f13a0e67-9185-441c-b662-5edd3f095e6d',
  'TRAVESSA BARCELONA, CASA 12. PICA PAU',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bd9f7bb-faff-4ac2-85eb-5d86961791ee',
  'RUA T, 65. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6955f5c9-9436-4d61-b50d-9956aaafb98b',
  'RUA M, CASA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '710b1903-5517-46e4-ac33-c52e9c795158',
  'RUA 02, CASA 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b0e16e1-fd47-4a02-a4fb-e0db77194377',
  'RUA OTAVIANO ROMERO, CASA 69',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a9c7378-a914-450f-85ee-723ed4a3d27c',
  'RUA PEDRO POMAR, 461',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6bc3784e-1ca0-4210-90da-8dfefbd0c662',
  'RUA FELIZ, CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '968a4808-0749-4f60-8fbe-892e96d837b8',
  'B.A',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52341733-bd72-46b5-91ec-be788c6722e9',
  'AVENIDA ALFREDO DE ALBUQUERQUE, CASA 80',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4dbf3a40-10e8-4fb6-af9a-054786bf6889',
  'BARUK FESTAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '155782e7-7c70-4f7c-913c-41f1a4d1659a',
  'RUA R, CASA 303',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1fa89888-2b45-44b8-9150-97d5be9958ee',
  'RUA E, CASA 31',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eadcafca-117e-449a-9e87-f686d0d75a17',
  'RUA COSTA JUNIOR, 18',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2046ccde-75da-4d42-9770-bb429431937f',
  'RUA F, 130',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '70f16e93-40b1-4d93-b2fd-c7cbf9002622',
  'RUA MARCELO TUPINAMBA, 56',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db683c39-dfca-4ff8-a73a-41ba3a67454e',
  'CAMINHO DA BICA DO PADRE 46',
  NULL,
  NULL,
  NULL,
  NULL,
  'LADO DA CASA DO BOMBEIRO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '943d2af5-4839-4e5e-b4e3-1a5c3dbf5749',
  'GUANDU DO SENNA, 1469',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39f95506-f257-4d37-b4db-5e34874f95c5',
  'RUA V, CASA 56',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '46a85cb0-1ef6-47ae-9ede-298afd8ecdf8',
  'GANDULA',
  NULL,
  NULL,
  NULL,
  NULL,
  '2 RUA A DIREITA DO ACACIAS, Nº PENULTIMA CASA DA RUA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f33e7a78-df1e-4a15-848b-c2d7a7b9c5aa',
  'TRAVESSA DELFIM MOREIRA, 119',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '76b07dbd-fece-47cf-ba6f-14d769df3256',
  'TRAVESSA SORRENTO, 15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7aeb1670-75b3-41cf-aeff-2d2871fd028f',
  'RUA ARTHUR NAPOLEAO, CASA 30',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f5f078b6-4616-4e26-9ffb-09eef416f71f',
  'RUA OSCAR FERREIRA, CASA 35',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cecb1df-b8f3-4d48-83d6-f33874aee48e',
  'JESSICA GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '856dac57-0828-42a5-8dca-0bb8d9f1b08c',
  'RUA N, CASA 99',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1059b569-9939-4870-99bc-5a724313af27',
  'RUA Q, CASA 141',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c024aa6-8512-45db-ab52-8ac2c83c6aef',
  'CONDOMINIO 855, CASA 15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd8050ff1-fabe-4e82-878d-aa2b196890eb',
  'ESTRADA DO QUAFA, 369',
  NULL,
  NULL,
  NULL,
  NULL,
  'NA GALERIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62631f84-d0d2-4ac1-91ad-dcee30836a4a',
  'TRAVESSA LATANIA, 07. LIGHT',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5043d532-cee7-4a82-a798-1e5c3dc6d58d',
  'TRAVESSA ALELUIA, CASA 17',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4f24c48-016f-4306-9246-6c6588dabe11',
  'RUA BRAZAVILLE, 47',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9663d78e-0444-4b6d-aa9d-2decab110852',
  'SALAO GABI\RENAN',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89bcc060-1b18-4ff2-9c73-28e3e6689b23',
  'SALAO DUDA',
  NULL,
  NULL,
  NULL,
  NULL,
  'CAMINHO DO JOAOZINHO, Nº 2. SALAO A ESQUERDA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e42f6573-2497-47a3-8825-6bbab95bc720',
  'LOUNGE 87',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a71ecc1-31c7-4314-975f-89f5fb5d79ba',
  'MARROCOS, 73',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd74cf465-82ce-4fba-9013-ee1d3e12065d',
  'AVENIDA MARROCOS, 88',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e618f33e-9a87-4e30-9578-9d39bd25b6c6',
  'TRAVESSA RODES, CASA 59',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA VILA 08',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a67c7cf-4c03-447d-9543-c8002ec33caa',
  'SOCIOLOGO BETINHO, 44',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1de58e48-fab8-42c0-85ed-fb10e9c0b26b',
  'TRAVESSA VACARIA, CASA 06',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0910aaf6-2192-4496-bc53-eac004cadef4',
  'RUA S, CASA 37',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '48ab13b1-fb7b-4b48-b74d-9943780289b2',
  'RUA K, 16',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c52fb69e-74ce-4d4d-a2c5-d562b2cb5458',
  'RUA Q, CASA 182',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22a7621e-78e7-43dd-bcb2-f96fd233d917',
  'JEREMIAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA CUSTODIO MESQUITA, CASA 09',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99e72ca7-d289-4407-b272-56f43d298528',
  'SEU NELSON',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA BRASIL 34855',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '04396432-4402-4a22-842b-5d40db1f9630',
  'RUA O, CASA 28',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b706b235-0ba0-43ff-9692-ca6d225a3194',
  'SITIO SEU ARLINDO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f61e4351-d750-4472-ab88-39122c6eae50',
  'DELAINE',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 213, Nº 22',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d2ef425-5d15-4df3-ad2a-15eb27b9aca1',
  'TRAVESSA SANTA RITA, CASA 02. METRAL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c57f05fd-9de6-42f0-bfa0-8520e28dd7f2',
  'TRAVESSA BAMACO, CASA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e26607f3-ba11-479e-99c1-1d1a686c403a',
  'BAR DO NEGO, METRAL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '23c063d3-5295-432f-83e5-8f683eba9381',
  'LEANDRO TRAILLER',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd883eda-9ed5-46c2-a34f-3cf3483f1495',
  'RUA COSTA JUNIOR, 12',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e60ca9d-8819-4bde-b064-e24fdeaeb820',
  'BAR TO EM CASA',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA 2372',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '842d08eb-f547-4192-a85b-ccbbf5df415c',
  'RUA PAULINO DO SACRAMENTO, 93',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '480234ab-6511-478d-89f6-4f13454e7439',
  'RUA GALVAO BUENO, 31',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM FRENTE A ANTIGA RUA 15',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b641ba3-b48d-4c81-aa7f-32cdfebeafe8',
  'JUSCELINO KUBCHECK, 48',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49588b37-fb90-4801-af0a-dd492ad07096',
  'MARLENE',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 10, CASA 03',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4eea4720-1563-48be-be25-f10099e29854',
  'ESPLENDOR 1 BLOCO 09 AP108',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '565f3d46-e8ff-47ea-995c-ef27c9b79434',
  'RUA N, 174',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c622e58-94af-4548-b09e-322132746e2e',
  'TRAVESSA MAMORANA, 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7421e60c-fa6a-4a60-9675-ef2ff155f96a',
  'RUA PEDRO POMAR, 390',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a398b1b0-3407-4ab4-8b81-1c57078b167d',
  'SALAO SONHO FELIZ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3f39154-ae5a-495c-94fb-90021492a2be',
  'ULTRALEVE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0c9ecf1a-3b1c-4fce-bdcb-3eedf4d96c07',
  'RUA CHAD, 13',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '183931e3-d54c-4f63-b6b1-03dbe0fda127',
  'RUA C, 188',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ef62f8c-f8b5-4907-be10-2e76aad2a5d2',
  'RUA 20, CASA 158',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a24db03-3db2-46d2-a82e-845df5ff6629',
  'RUA LINCOLN OESTE, 80',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d14050b-be7f-439f-a56d-63021562e661',
  'RUA A DO VITALLE CASA 05',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64471136-83d3-48a9-bce5-4712aabecdb2',
  'CARLITOS BAR',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 10 FRENTE DA 26, CASA 137',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '33fab2a6-4ef0-414b-96e3-579427b97749',
  'SUELI MARQUINHO PINTINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '15d8a622-782e-4c84-bcda-74fb8f0cae06',
  'TRAILLER DO BAHIANO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '871a8c16-3140-4b1b-90bd-59b44e37471a',
  'RUA N, CASA 72',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83cf760e-702d-4972-8832-ffaed349ac0a',
  'TRAVESSA OTAVIANO ROMEIRO, 24',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '435c5a91-c29f-407c-9010-f57fce6affb7',
  'RUA TANGANICA, 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a6ceccb-b511-4ce4-a8e6-405827f0e69f',
  'RUA 02, CASA 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '897e44f5-a64c-4dd1-a911-867111032e55',
  'RUA DA AGRICULTURA, 20',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e77c188-0e99-473c-819d-fb30ffbece31',
  'SALÃO MM',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 278, Nº CAMINHO DO CARRANCA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '01e7f4ba-c703-4bce-92a7-6fa12b65a6f2',
  'AVENIDA ETIÓPIA, 72. FUNDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cd6815a-2f97-4f28-90f1-5aee212735f7',
  'RUA CONGO, 160',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0204f428-1b64-4e92-9eaf-78bc3be28077',
  'LUDMILA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '24cc1c9e-2e14-4307-9a29-fd3815e2e963',
  'VERONICA CRECHE IRMAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4df0c494-9ad0-48c4-a04f-a410baf8e919',
  'RUA PAULINO DO SACRAMENTO, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91ad77e9-9742-4e32-ba3a-f5c485c04248',
  'PADARIA TIA HILDA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA 10, FINAL DA MALVINA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd58c2747-b517-4161-8c2b-624acdf442a8',
  'ONZE UNIDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA COSTA JUNIOR',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad1318b6-d6b6-4239-98f4-33b007e272e5',
  'RUA I, CASA 312',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f1ec7c36-4f37-4756-8f24-d59b62695fd7',
  'DIOGO GÁS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfd02e1a-4797-4783-9381-e42b97f1c5c5',
  'LARA',
  NULL,
  NULL,
  NULL,
  NULL,
  'SITIO DO JOAOZINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a47de25e-1118-41e4-9f56-f22f2b4b46cf',
  'RUA U, CASA 334',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f0e05eb9-345a-4bfe-81e0-69db99f42640',
  'VILA 87',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e12b9abf-c6ff-43aa-9829-3ba511ee9913',
  'SALAO MIRANTE MORRINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c00901e5-3601-49ae-bfc4-d48c11b3795e',
  'ACACIAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA PROJETADA 12, CASA 03',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '903a661c-369d-49bd-a055-8ce66024e075',
  'RUA 05, CASA 182',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dcbfa3f6-bc71-4322-bd9c-5e83f02755d8',
  'RUA N, CASA 151',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7bb460ae-3a43-4c1d-bf7a-f0321b45bb67',
  'RUA F, CASA 50',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '595c551b-4604-47ab-922e-c79adbac5dcc',
  'RUA P, CASA 97',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff9c14b9-fcd8-4458-9040-19629117daaf',
  'RUA T CASA 83',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5f90ce9-a8d4-435b-8871-3432444b8c83',
  'BAR DO DIDA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA EDUARDO SOUTO, 62',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7518124-2e76-4855-ac25-ef9fe00a98e4',
  'RUA A, CASA 178',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41ceb339-a6eb-4676-bd33-5d573a277fde',
  'RUA F, CASA 02, DO VITALLE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f1d461d-7d26-4249-986d-1d9209ce2dd7',
  'NEM BORRACHEIRO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '077e2e30-6bc6-4bb4-a5b4-c7a2d92b5a66',
  'RUA 10, CASA 137',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9baa867-f430-4c9a-82f4-637fae766917',
  'RUA 05, CASA 235',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b37cf9a8-9606-499f-a043-0a5ac283b8fe',
  'RUA TUNÍSIA, 08',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f2b7ba2-a4ef-4ee0-8a45-3c6cb738d738',
  'NILTINHO BAR',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 05',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '457e018b-369a-4051-a34b-cec3829aa271',
  'ALEX MANEL',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGO BAR DO MANEL EM FRENTE AO POSTO DE SAUDE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37b7463b-fb9c-4d93-8d12-efff4af7605a',
  'RUA U, CASA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c553e11c-97d1-4c00-b2c2-625826e14f55',
  'PRACINHA DO PRESÍDIO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea0a7496-596c-4f48-bda3-64ace9aa0aef',
  'ANDERSON PRACINHA DA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a8f50b3-487a-49a4-932d-1a4b9f0e8b0b',
  'RUA 05, CASA 142',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d8d7e99-eeda-46e3-b8d4-95e58851923d',
  'JULLY',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42f89195-e949-424b-ba17-47d60a50cd9c',
  'TRAILLER DO LUIZ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9ffbd90-1fbd-43a4-b0f8-970ba0ab1274',
  'RUA Y, 16',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '514fb78e-1102-4c7a-9a5e-eb74c78eb9f4',
  'CONSIGNACAO KAKA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1b78bed-3fac-48d3-983b-f67552304ff5',
  'SORAYA PRACINHA DA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f69b20b3-4a8f-44dd-b9b0-6283b26bc464',
  'RUA B, CASA 84',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b1a67ace-b0ba-45c4-ad06-bd7ef4ad833c',
  'MILTINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20b466d3-9001-4bde-8aff-d6598e21d107',
  'AVENIDA CENTRAL, 96',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f910cae-e30d-467a-bebb-bf4be25066ac',
  'RUA O, 344',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95298579-b543-495a-ab8e-b6ff9d09b6fd',
  'RUA 23, CASA 110',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '416181e1-59a7-4182-9bbb-2227c3921b0d',
  'RUA JOAQUIM CALADO, 29',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77f3cceb-2a33-4dad-8fd6-59a1eb82e832',
  'TRAILLER PRETO BARRÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5619b50-2b44-4afe-9f84-ece8fdc9040b',
  'LOJA FLOR DE CEREJEIRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'SARGENTO MIGUEL FILHO, 362',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2ba0128-69b7-419b-9aa4-27d2781e5679',
  'PAPITOS TRAILLER',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7652807d-a0cf-4019-a851-da96538f2adb',
  'GORDINHO TARDEZINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c38844bb-46f6-45df-982e-049a46242ac5',
  'RUA 05, CASA 419',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43efc26b-9c6d-46c2-9034-e3a04003443e',
  'BAR DO ROQUE',
  NULL,
  NULL,
  NULL,
  NULL,
  'XUXU RUA C',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61b173e9-eaaa-4c05-91dd-bef3fb4618f3',
  'GUILHERME (BAR DO OSCAR)',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '88c532b5-e074-4118-8745-ce58d2bd5f38',
  'TRAVESSA BARRANQUILA, 58',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07194c45-29f4-462a-be9c-37760b6d94b7',
  'MAURICÉIA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f45d3153-4662-4890-b740-1bccc9f2f102',
  'BICHEIRO LEOPOLDIVILLE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '96cf0502-a303-4cba-844b-bef51c5e58a7',
  'TRAILLER ALTAS HORAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d1e81c9-6074-4328-90e6-e9b8b5966a23',
  'AVENIDA ETIÓPIA, 25',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e2dbead2-4606-4d4b-99b6-233394c9e74e',
  'TRAVESSA RODES, 78',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '389e6301-3263-4724-b050-b15343aa40a2',
  'ÍCARO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA TOGO, 07',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3fb8c7f7-e415-4535-b1c0-b9a8392aa85a',
  'RUA DA AÇÃO, 05',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9eea5878-40df-407f-b9d3-334d4bbce46b',
  'CAMINHO DO ENCANAMENTO, 168',
  NULL,
  NULL,
  NULL,
  NULL,
  'DELSON DOS PORCOS',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '239db73b-9bd3-4705-924d-898a33539137',
  'RUA 05, CASA 261',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '927f1ccb-7857-4c68-a258-c138f35da4a7',
  'RUA SUDÃO, CASA 08',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '25bb8569-41d4-4955-8170-57acb0a239c4',
  'RUA D, 43',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b111b67-cd42-464c-91f8-341d00bd52de',
  'TRAVESSA PASCOAL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e8b6b03c-94c4-42ae-b356-17fcb24fa3c7',
  'QIOSQUE DOS BRINQUEDOS',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA DO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '406e2298-69b6-4a2c-a789-8823d5f34047',
  'ANALÂNDIA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b1dc6784-79a2-4f19-ac30-6c9ebb6c649a',
  'RUA PRETORIA, 59',
  NULL,
  NULL,
  NULL,
  NULL,
  'LOJA RIO LOUNGE BEER',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c83dcc09-b18c-4bea-85ce-dd6bd74a62b2',
  'RUA R, 122. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '97502cfb-7447-434d-b16c-a78bb3c15117',
  'RICARDO',
  NULL,
  NULL,
  NULL,
  NULL,
  'BAR DO EDILTON',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2392868e-b536-4a09-805f-0af6fe96342b',
  'KAILANY',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ef9d560-e145-4eb9-956f-cf38b53a4766',
  'ALESSANDRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ANTIGA RUA 21, N.123',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e75ff73-226b-49fb-b0aa-8550e8d28f36',
  'RUA A, 30',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b74b9b35-7ab3-4eb0-9f28-eb0cf1836705',
  'TRAVESSA CEFALONIA, 01',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd60e6466-31d7-4260-acc1-f8d730704114',
  'SANDÁ, 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a1273f6-a519-4a3f-9e7f-8eb375a9c8fb',
  'RUA U, 350',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '72d99564-248c-455e-b909-cf0f6ab6a12f',
  'ZÂMBIA, 78',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eaa7b366-987e-4360-9020-aceb60a9926f',
  'BAR DO SOUZA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '25c9f95f-f2e3-43ea-9d9a-dc2ac482d3b4',
  'MANOEL',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA GANA, 51',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0057a7eb-b314-4d7e-b06d-c79c052f111e',
  'DECA',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILLER DO MÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c49baa67-259e-4a0e-8a0c-c26012865814',
  'RUA CHAD, 40',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '558dcfd8-ce04-4faa-932d-75f73cc0a696',
  'RUA 26, CASA 197',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8c35945-3a90-4faa-b071-2ed32f2ca880',
  'TRAILLER LINA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b4f153cf-cfe2-48cc-bf82-284cd34c9dfc',
  'RUA K, CASA 106',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3017f4df-f6ad-46d6-87f4-3c6df3e80f11',
  'RUA BOAVENTURA, 12. METRAL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6fc01d59-ec84-487d-9f82-62236c517b0f',
  'AVENIDA CENTRAL, 15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1878eb16-59db-4e20-a612-b5a9af922a35',
  'RUA CUSTÓDIO DE MESQUITA, 35',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e1418870-9c03-497e-822d-8d13b80552f6',
  'ALFREDO DE ALBUQUERQUE, 51',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ec081ea-7eea-433c-b844-d681c938ebc9',
  'MACICLEIDE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 16 EM FRENTE AO Nº 64 E O Nº76',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b000a6c-8088-4ceb-9670-d28595e917dc',
  'GORDINHO CONSIGNADO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b289b715-d8b3-4b95-97f6-767c11e9cdd0',
  'SÍTIO BOB',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5747f75-fca8-4d79-acf5-48fff52062fd',
  'RUA 10, Nº 165',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3328a1e-5e9a-4a07-96d0-328fd2904534',
  'TRAILLER RUIVA SKATE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6eb2226f-4837-4b05-afc3-389863370169',
  'SALÃO GARDEN LOUNGE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA B, Nº 12',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9a6b14a-ff19-41e6-bc81-29fd4cc87141',
  'ESPLENDOR 2 BLOCO 02 APTO 504',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c2e926b-fe78-4c87-8d09-62152a5b9ffb',
  'RUA 05, CASA 347',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb89fd1b-8a22-4e84-a641-893c42537f84',
  'ACADEMIA GORILAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2ca735e-0630-4201-b4dd-aa7d41023b3d',
  'BAR 05 ESTRELAS',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 10',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dcdaeb32-6ade-45d9-8ae9-b1f069efe601',
  'RUA U, CASA 450',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '715da6d5-8ff2-4fbd-86fb-5387400a6fd8',
  'JACSON GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDO DO SENNA 885 LOJA A',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0e26ab80-7f41-493c-9a17-e67378de7c55',
  'QUIOSQUE Nº 15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '614b871a-f45c-458e-9b71-77d74df794f9',
  'RUA VIÚVA GUERREIRO, 08',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e9117fe-dd9b-4ac7-b9e5-0814eee65d79',
  'TRAILLER DA LOIRA',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a1b085c-7ffc-416a-a231-f3d969a1a03b',
  'MICHELE ANDRADE',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DIRCEU DE ALVARENGA, Nº 116',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8340e440-4916-45ae-9d67-7dbb436df35e',
  'RUA 21, CASA 123',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a9d658b-1b0b-431f-a3fd-8cb599ce8ee6',
  'RUA 10 EM FRENTE A RUA 30',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '79b3d455-36a2-43b2-a5bb-3ce1fd6422ae',
  'ESTRADA DO QUAFÁ, 93',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85e00b7c-bcf9-45bc-b63e-342c164b0001',
  'RUA TUNIS, 59',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'CIRP. EM FRENTE AO BPVE',
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2bff108e-e83b-4296-ba5b-73cadd580735',
  'CARLINHO BAR',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '714ee010-7c25-40ce-8b76-f4b32e8cae66',
  'ESFIRRARIA DO PAULISTA',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA ALFREDO DE ALBUQUERQUE, 09',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61d225b1-fb9e-4dab-8588-c3bd5fd26493',
  'RUA DA FRATERNIDADE, 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5223a871-05f0-46a3-82f8-c553f215d6f1',
  'RUA U, CASA 504',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '742bc5d7-1682-46c2-87e0-9aa0c975957c',
  'AVENIDA ALFREDO DE ALBUQUERQUE, CASA 69',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7250ea71-59b2-42df-9cc3-3d88c7fbfe9e',
  'RUA C, DO VITALLE. CASA 16',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da4024d9-0873-46d7-8f35-f86074c78434',
  'ÂNGELA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c61bff8f-54d4-4588-be1c-03bee1b5cba5',
  'AVENIDA ALFREDO DE ALBUQUERQUE, 51',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8db5d8a-9916-43e3-b073-ad09d6a8701b',
  'TRAILLER VELHA GUARDA',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRACINHA DA 07',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f33fd4e5-7127-4965-b971-e15162cfb8ea',
  'ANTONIO TENDA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1473e7b0-7ecb-4443-99fe-c9872cd4a969',
  'DANIEL FUNCIONÁRIO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a473e98-6c40-4db6-9274-68049627205d',
  'LÉO OFICINA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '84c2de00-6e9a-4991-ae8c-f2e2ff2d33de',
  'RUIVA PRAÇA SKATE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a659db4-2015-454a-813f-164bf807bcf0',
  'RUA J, 107. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f51be033-10ef-42eb-b5fc-8affde23bcad',
  'CRECHE LEÃO 13',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5152b4e6-7abe-4efc-93df-6bfd94fc085b',
  'RUA T, 65.CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5bd04c2f-2e2a-4127-8f1c-5cad298a1c50',
  'PAULINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 10 EM FRENTE A RUA 22',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '342a924c-fb67-4a1e-bf95-82cd56252164',
  'ESPAÇO ORNELAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e9409a9-c7d4-4b5b-9dd6-00d851f44f83',
  'ML COMBOS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d7d11b9-900a-4f87-99b5-4331cdab5c72',
  'RUA COSTA JUNIOR, 103',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae69a5d5-1f18-41a4-be30-27d377028645',
  'RUA AMSTERDÃ, 37',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc783c16-cc73-459c-ae4a-6d0c4400691c',
  'ROGÉRIA',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 213. CASA09 - CONDOMÍNIO PALMEIRAS GREEN',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '97b9f415-fb0e-4242-b97d-71a161b3eb5d',
  'Trailler Kinder',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b06e59f9-26e8-44bb-b4f1-d2eaad7759d2',
  'ESCOLA CETIVA',
  NULL,
  NULL,
  NULL,
  NULL,
  'AVENIDA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6828e496-2033-4978-8b2b-69fabca6c829',
  'RUA JOSÉ GONÇALVES, 19',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0711ac3b-3c4f-4e07-a933-ebdc5071dea0',
  'SOPHIA LANCHES PRAÇA ESTÁTUA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a09d77d-3e9f-4265-8685-c732b48e3e5a',
  'FRANGO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '38edd426-3be3-40b7-a409-0996a815e428',
  'ESTRADA DO QUAFÁ, 161',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ba6261fd-f79f-4789-a686-a67364155d32',
  'RUA DA FRATERNIDADE, 30',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e97e407-912d-4090-950f-d370439dd49b',
  'Trailler Tidé',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac7f8535-1157-4cb9-b23e-1882bbc438d9',
  'LARISSA - SARGENTO',
  NULL,
  NULL,
  NULL,
  NULL,
  'SARGENTO MIGUEL FILHO 143',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd8aa06ae-6375-4cd4-bcfe-4c69502f0153',
  'KINHA TRAILLER',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILE VERM FRENTE A LOJA CONSTRUÇÃO E TUNISIA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b81d50a7-72fa-4819-a0a0-57248a7eb1f3',
  'EDNALVA',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA CONGO, 160',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4bfc867f-2d09-4841-9790-9f3518acae7a',
  'RUA PROJETADA B, CASA 07. CONGO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e96b232-d127-447d-b2c2-164bc2360f05',
  'EVENTO MOTO CLUBE 17/11',
  NULL,
  NULL,
  NULL,
  NULL,
  'CAMPESTRE',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47fc2a3b-ad1d-442a-a628-bb51c59d1d8e',
  'TRAVESSA SANDÁ, 07',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f601195-f763-42bd-87e2-fbd770fa71f9',
  'PADARIA ART PAO',
  NULL,
  NULL,
  NULL,
  NULL,
  'SARGENTO MIGUEL FILHO 1.723',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '67c876ac-efc9-43a9-8150-96dca69cdf78',
  'RUA 10 Nº25A',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8734a840-fc92-4c9a-921b-1b7ecfb1c6fa',
  'RUA F, CASA 327',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd9c87de-39ad-4992-b141-a6ae58ab8a71',
  'ROBERTA FILHA ESPAGUETE',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a31e0c78-8a44-49ee-9eb3-d6d5cfead55a',
  'RUA BAMAKO, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ea8c6e0-c759-44e2-bdff-7bcbc60bbb9f',
  'CARLOS/ALINE EVENTO MERCK',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8e6282e-cbc8-42ab-ba86-4d73def949cc',
  'TRAILLER DA NENÉM',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA DO QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa3bad6b-a53a-4752-8666-081fb0cb1e68',
  'RUA PAULINO DO SACRAMENTO, 65',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '55c615b6-79bc-4bc5-b9a1-9e7613d48f9f',
  'CABELO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA R, 155. CASA 01',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4de65ac-c2ad-42a1-a392-7314faabae77',
  'NATHALIA TENDA',
  NULL,
  NULL,
  NULL,
  NULL,
  'ESPLENDOR 1 BLOCO 09 APTO 401',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7dd23c22-3ac0-49d7-bd3f-8b944d153701',
  'RUA C, 186',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63f6f4ce-a8ac-47fa-a46c-7d6696f242d8',
  'RUA DA AGRICULTURA, 37',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b12dafbe-caa3-49d4-a98e-68ef6bffdf81',
  'PALMEIRAS GREEN',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 213. INTERFONE 09',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '930b2fbe-5a92-4f0c-ba96-e9435ecc6403',
  'SEU JONAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a6a3391-1123-4f92-a8f8-81ac86296709',
  'RUA LUIZ AMERICANO, 23',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c5687730-d31a-412b-9fcf-0c935587355b',
  'Rua 2 41 cs2',
  NULL,
  NULL,
  NULL,
  NULL,
  'Rua 2, Nº 41',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5eef22bd-c5a1-400b-a01f-49c7f78e948b',
  'MARD',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA DA AMIZADE, 14',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7430d350-a907-4f91-ac84-26eac0234b9a',
  'DÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5753e142-5605-4833-8d0b-39ca671f2627',
  'Cristiano Ultraleve',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c203122b-ec49-4743-a68a-ea1001cf1620',
  'RUA 10, CASA 247',
  NULL,
  NULL,
  NULL,
  NULL,
  'EM FRENTE A RUA 20',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '875e7e39-6547-48fb-a085-7388dbbfe168',
  'RUA 02, CASA 391',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4afba1a6-d436-4151-9f43-42ed1d1691a7',
  'ESPAÇO MRIO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA E, CASA 26',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '773a0d73-8bfb-40ad-b354-5c5e935a977c',
  'TRAILLER KAROL',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '685a00ed-2bfb-4337-b120-a413470a78ed',
  'RUA L, 103',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da04a820-c807-4d48-bb95-33d163225c97',
  'RUA HAMBURGO, 82. CASA 02',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8897eca0-8360-4a31-9ec4-80b012b5e6c2',
  'ANDERSON QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f88d0eb-3466-45cd-b863-daf91bbc6ca2',
  'KAROL QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e31298ad-1b71-4392-934d-fef038ad1bf0',
  'RUA F, 31',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9f092b0-7f32-4219-8b97-7817fa9e01a0',
  'RUA 15, CASA 73',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '88295c83-7618-43b2-8b35-70c7b0276c4e',
  'LUCAS TRAILLER PRETO',
  NULL,
  NULL,
  NULL,
  NULL,
  'RUA 10 EM FRENTE A RUA 20',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ee0145d-e275-4204-8f22-414c2e0366b1',
  'AVENIDA 01, CASA 1328',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22bd7945-6104-4426-8f4c-f815549e728c',
  'MANGUINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '873a25b9-c2a8-4761-a11c-1b9d96beaa38',
  'RUA M, CASA 15',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e1c748d0-be10-4bdf-8b3c-d13937439470',
  'TRAILLER DO DAVID',
  NULL,
  NULL,
  NULL,
  NULL,
  'PRAÇA 784',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '410d17e2-8a5b-4d00-9969-5ad3e4dca4cf',
  'RUA 22, CASA 206',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e789472-b895-4e4e-b15c-07a8495755ec',
  'RUA ENFIL, CASA 16',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '311849dc-5e5d-458a-955f-168cfae20a18',
  'MARCINHO BAIXINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '791a9e68-473d-4ce0-8d72-b388d827cc54',
  'RUA JOSÉ GONÇALVES, 38',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '574797f0-3404-4efc-af4d-63e8821dc256',
  'RUA 22, CASA 81',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'de292f85-28a1-4472-9d74-e502e58ecacc',
  'GUANDU DO SENNA, 1449',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db7695c6-9f49-49a0-aa06-b47d087b20e5',
  'NANE QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a42cf7ff-864a-402e-b8bf-1461a8851750',
  'TATIANE QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c3d3cbf8-13dc-4836-9a63-b159a6d09457',
  'PAGODE QUAFÁ',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b8aebd5-a542-4bd0-9f65-f84372b46a56',
  'AVENIDA CENTRAL, 52',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3beffb1f-7a12-4f3f-b281-268a5863f82b',
  'SORVETERIA GUANDU',
  NULL,
  NULL,
  NULL,
  NULL,
  'CAMINHO DO FIGUEIRA',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5dbf9bc9-4bc3-428d-9d8f-398b89849700',
  'AV SOCIOLOGO BETINHO, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9d256f5-06bf-4245-8ada-ad7b7ec72152',
  'TRAVESSA OTAVIANO ROMERO, 41',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd8ddbf6f-72e9-441e-856c-fb2743b0d002',
  'RUA V, CASA 31',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42cef7d1-d0ba-4c45-a8b3-525b55525f1f',
  'FELIPE DÉIA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05b8b43d-c7dd-4e09-bf86-e53d19088eee',
  'BARRACA DA DAIANA',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 2.255',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c60840f-cd57-4890-9c87-5a3e604cbc01',
  'RUA ADSABEBA, 03',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39e7401a-1ba4-4951-b381-8eec72b24483',
  'RUA MARIA FONSECA, CASA 06B',
  NULL,
  NULL,
  NULL,
  NULL,
  'CONGO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e33b8219-8d6b-4a76-9b13-3332c145abba',
  'RUA DA AMIZADE, 20',
  NULL,
  NULL,
  NULL,
  NULL,
  'SOCIÓLOGO BETINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '430ebeea-b1f2-4d09-9af1-bd3a08024e60',
  'RUA R, CASA 113',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68c23683-def6-445e-a3b5-6e3e07d3ef5c',
  'CHILE',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILLER DO MÃO',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '69125ce9-c320-4ba8-8f88-452c2410231d',
  'RUA CONGO, 118',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a310acb5-2bcf-4a8c-ae1d-a2042bd51078',
  'PARÁ TRAILLER ABÓBORA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62c8af53-4280-4d5a-99ad-b16559249a1d',
  'ESTRADA GUANDU DO SENNA, 213. CASA 56',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8aa0be3-d442-4792-9262-e5e6682e7ca5',
  'RUA G, CASA 72',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d47f46c-f0fb-4448-940e-e0fe68224e02',
  'TRAVESSA CATALUNHA, 21. LEÃO.',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '79853762-38af-4fe4-aec4-a8ea91526833',
  'PADARIA 26',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d12116e-8b51-484a-8b2c-993aa4b00319',
  'AVENIDA ETIÓPIA, 78',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '090c6026-701f-4178-8aef-0e945bce342b',
  'CRECHE NINO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd0983d0-4c10-4e46-b7dd-14b114654ee6',
  'AMIGA BINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  'TRAILLER ROXO BRR',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca7e6c25-e3ff-41b6-a87c-b060dc0489be',
  'AVENIDA BRASIL 34.967',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13028723-5935-499e-b02f-075654dd5623',
  'LL CELL',
  NULL,
  NULL,
  NULL,
  NULL,
  'PONTO FINAL DO 853',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0ac32c1-1db8-4fcf-af86-71da26ddccd0',
  'CHURRASCO PRACINHA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8deae6c8-40b5-484f-bc2b-c5c44215f8ac',
  'RUA E, CASA 63',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a6be44e3-45f0-460c-b58f-778719cdd66d',
  'DUNGA',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff816f56-69a0-4eff-8522-a8461a549b88',
  'BARO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0993f8c6-e7ce-4a41-8ef7-4602496efa1a',
  'SALÃO ORNELLAS',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd6584e66-adbc-4f6c-9edd-ae44a95cf098',
  'DORMITÓRIO DA DAI',
  NULL,
  NULL,
  NULL,
  NULL,
  'GUANDU DO SENNA, 2.255',
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a016358-7905-48e3-9a41-f5e98933a826',
  'DIONÍSIO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2fd5251-b785-42ba-884b-315fa8567cf4',
  'ROBERTINHO',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e23efc4d-05cb-4206-a0aa-a4e80762930b',
  'RONALD GENRO NENEM',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  0,
  0,
  '2025-12-19T15:25:58.997Z',
  '2025-12-19T15:25:58.997Z'
) ON CONFLICT (id) DO NOTHING;

