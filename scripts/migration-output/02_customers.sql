-- Migração de Clientes
-- Total: 1045 registros

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '163406a3-4001-4621-adf3-1009a31dce1d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06c89a2a-521a-4e13-9dae-726ededd2a8b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3637d818-eec6-4f22-a19a-5d4532697159',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'edcac374-0a70-4b97-b0ee-b3042e0203ba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f79b8a0-fb67-438c-b8e2-2b31d5f0a384',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'baa7e2b7-0280-400e-92a8-e7a5255bca85',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73aed38f-4561-4869-93a0-9ed188551373',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b171967e-87ef-494f-8043-d49e05d48fda',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49283742-9beb-49f5-aa8b-a86ecea9e0b3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '46ae9b44-11af-464d-9afb-c4a5546f284c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd4e66754-6e34-4fb6-afde-c66821883b07',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfc499d0-49d4-4f5c-b543-44e1076079ce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93db1d23-b7cb-4d37-a8d9-8ea454554f89',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e3500158-a5a8-488b-981b-0fbf69e0ed16',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dddaf2a-4890-4015-975e-b4bdb56e995a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '38fd3432-de5b-4911-84c2-859a5410b812',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52188058-9232-48e2-83ed-36e3e0e1397e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '726a3cce-73ce-4ec7-bc4c-73aa6a7d407b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad3abc74-f42d-4013-9af6-9c3d673a717a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '98d55ca4-c7df-48bf-871c-8dc05871bab1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '76604dac-741c-4356-ba83-04b16b31d21d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '006ff8f6-f40c-4fc7-af49-0c35c2c6e6d1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd9bd9ee-2bfb-4392-a134-0eadeb136ba0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3381b0c7-4d8d-4a61-96e3-9c7b3c58eb2c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a1dc104-a51f-4da2-bb53-a5f815ec8182',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f99bc561-e80f-4e03-8926-cef277eaab28',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc8a9bb9-996d-4af4-9261-6c19cbaf5953',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '30c246ce-3315-41a1-9e11-1475dd287b18',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '23393377-2d81-4d4f-a579-df8525929b79',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1273b85b-882e-4c0e-bd1a-cdcbeacec868',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c354f895-a4f2-4036-9d98-81d1ce05048c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d30bdfd-27fb-4222-a131-0a53d10f1e64',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a806ddd2-ee12-4ad5-b138-9c93846f42c6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '661749a6-a37b-4af3-94be-1276e9343852',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e29663b6-1ff8-455d-8ce6-f4feb9fa67c4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5d93e7a-4808-4841-b717-a26c5983a547',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '29a02475-b3ca-4291-8053-0222ad3ce60c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '732aa21c-c50c-4e4a-b96f-9d202c630765',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a25c1917-5310-4ed9-acb1-b6741e140652',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e385fbb1-8d57-4b63-83cc-de6debc80499',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f833c11f-6d51-43b0-9a8c-8344dbe33fca',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '03cc2b40-bf43-41c1-8a15-3cee7992f909',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b328fd2-f705-489a-af9d-f3010a78190d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13f0e901-2d33-4300-a4aa-70aeae4598e5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c66f598-add9-474d-bf16-9194c214372c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8323bc8-6865-4a2e-8c3f-79be5c12d4ab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '32185b56-5532-49a7-bba7-956b3b4157f4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c56ee2c-346a-45de-aaaf-d1e8648c814f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b30b8ea9-c4b1-4479-806d-315a86f1783e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0518174-7ba9-483f-a86a-008f9d09fe5f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cf1843c9-c873-42ea-98c1-1174abd772a8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '798b10e3-0f6e-4619-85ea-2ff88e452c53',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '503b42fb-6275-46d2-9e9d-27c6e801d4e8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e59efa04-9479-4288-bfa7-be9252dd0574',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b891eee-6951-404a-93ff-c2c7686e0a44',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cceb4a6e-25ec-4048-a14f-9fe540f2e9b0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95e5ded6-b029-4d23-970a-45d8cae79aa6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e89b937e-f361-424e-a587-695e8c4ad846',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b3c76b5-caac-4d68-85a0-115d659d1db8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dda80a32-7a76-4cae-8cdf-c865ff6b73da',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6da0e9e-2048-4ad7-9aa7-90e3722ac9af',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41470ea8-8a4c-4106-942a-42339f496703',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e85f255c-3b26-4340-9fa0-c609992646c7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6262bf19-5896-48b8-87fd-d6e466da0156',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21df3657-c56c-4cc6-97c4-cdfa5e88c11e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1466477d-affb-458c-b1cc-a33503cac9cd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '36422021-2d4b-4c79-bda8-c714d1f348e3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '96308d0d-6d33-4a30-bdf9-90ca5ee74607',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17f7985a-db0b-4dfd-82e6-023e41eaaa38',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '377189d9-ca56-432b-9a5a-723fb53b77bd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c61ae8ec-09ad-44b5-86fa-6189fd2c1e7f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4ce0990-5d57-4f37-bc04-c5662c00eff2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7613102-69ce-4736-aba5-d673be140630',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '533ece35-01b7-4a3e-9ec1-fc55bf84ce7a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6ce9b33-cbea-4c13-bc10-b2d2f7e88d25',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '253f3a5f-d98b-4848-a233-540607b8c032',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4244512e-2d2f-4cf8-980c-67672f90aa86',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b86a90b-53b2-471c-b6ee-cc72f33588f0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed272efe-b1a2-42c4-a4f5-61ea7953d63d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8334da11-ccf7-4b9b-99a6-68d608485785',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '511bb506-037c-4a95-88c5-5186289f0311',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2d10c50a-9d09-4f21-834b-2a5d3fae4221',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a08a492-7913-4298-ab2a-cc1b055fa99a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '65a4add0-8f88-4004-b6c2-649002900386',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ac31b53-fce5-4de5-b683-48903f0652ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afc55101-8112-428d-8a43-2532dd93baf9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '54d4ace4-645b-488f-b0b2-753a16a9df03',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ccbb5304-d849-4ca8-b529-6f20207ba77c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a4f047d-a629-4a9c-8c66-8f1cff94b0ed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'daa44415-a62d-4203-8024-01b87693d559',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81849277-c3e7-4e1e-b0f7-3ab0051593d2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '712c9556-699c-41d4-8f4b-071983a3d05a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cc8eaff-9f50-4f63-8f3f-a7f2fa6adb92',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27e3965a-8c3c-4212-b908-46fca50617a9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea850228-b895-4c1e-8332-7b148ed6da93',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19e5e7c5-3d06-4b27-88ca-4ad336cdf726',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '23a3aee9-bf41-45fb-8b72-e273a3d81f5a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2ac9a96-3274-486b-abb8-56082a92c5c1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfa50831-f3f9-4525-bb51-5fc2a9925ee9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd738c22e-ea25-49ce-8afa-f5eeac33e5cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ce1e4dd-0f68-4b36-8f86-810bb7aedfd4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '04a72ac8-880d-4860-9414-1060c046edf8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e326566-d3f7-41dc-81d4-e9ebe2dc7c32',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd151252d-d832-4ad7-aece-8aa9d07495c4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e2f7aa8-9d3f-4c56-9e9b-fadc9d8b870f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6bb8d288-66d6-4f97-ab26-be2d48075b6b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '684ed972-482f-49ce-86e1-03d7d78b26fc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43322f6b-c4bf-401b-9247-2aacbda604e9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b73cc211-1ce1-49f0-bca9-ee885f249ed5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5f6eef71-9426-4c85-9d2e-fbadc8aa4a4d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bf4d41a-bfc6-430f-b1b5-28035b3a7b7d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b894b46-3794-4375-a6cf-3f846e5c2a4d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ca8eacf-dc71-47b9-93c7-e88fabc6166e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66a75ae5-bba0-49d3-994b-3f12951be5c5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c664c1f-f6b8-43db-ae50-01e714510c1d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '30fb6689-0886-4004-b1d6-99eafb738af1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b55544e-1e7d-4301-9c51-ba3470a6ac5e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7dd1ebd2-a7e7-4753-82fc-2f01fbdbd552',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c14c8a1-57d5-4f7a-8718-b563ba078a09',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e508f644-7c26-4672-ae21-091e9f29daa5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc46dd75-3f15-47b9-8adb-ecebf9defc3b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05d0b8fe-a269-46fa-a44d-52c30b288cf8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '858700b5-7c3b-46dc-bada-2f3842001bc4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6fba7d2c-9a7e-4fc1-92a0-f4a96fd77429',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a17d203-d833-4b07-ab7a-db17b738cbf6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '462bd6a2-e2f1-4457-8048-20d4d23adbcb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd68bbc4a-1c88-4264-96ee-0ae893d9c28f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b547f4f-22f9-44dc-a6a6-b6f4b9216b00',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd66ad1dc-bd16-4af8-b2cb-72be077deb13',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '070aee53-4398-490a-b522-e49f7306643d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '29cf4495-aaec-4dfd-9255-66a9cd280c0f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b82c17c-d219-4b87-b8cb-aace13c4aebe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aefc724f-4cf4-42da-aa9f-f8ba489e9606',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c227a744-de9a-4184-8584-1f5b78a06cfe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4582b4d-7bb6-48a7-8dd7-ddd51218290e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc363e39-65cb-4d24-8682-181f5c56e3b3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7750cf1-9328-4ae9-9b7a-1c3a54585d38',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb19bcf7-12ca-4185-8236-6b28bcfb33c2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59a4d9c7-3fe8-44b4-adc7-f2875a75f2b5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e7f9f7b-9a2f-48b3-abf9-ef714be8e19d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a8e6812-ee5e-4979-a6d1-c9e3d0e250ad',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'caad7102-33b4-48f5-979c-c487a98b26e2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47835232-622c-4475-9125-8bed7eaa7f25',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22c69c70-969c-4a46-9b09-f905c3306790',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '98bab0ef-7732-4254-a3b1-625c83946021',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad500d2c-2b8c-4baa-8356-8b70649e43b7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '175bcc6c-afdf-4f42-9293-1dee5b1811f4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9c917f5-4595-45ad-86fd-8f3bf65637d5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1abf3d6e-9735-4130-b0c7-6f365f9139ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a95b001-b525-411e-8a5c-25e789ba418b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d89e2b4-c544-4db0-a552-9eaa83b3607e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c0b1b241-8aa7-4580-995d-9ba55211268a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9b6ff0a-2e57-4453-bee7-7621877de40b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b7b8988-9249-4e88-89f4-a8a042c64b85',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd87c8430-61e6-4a1e-a833-d69625fa1f12',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6533e679-9c9a-4d71-8116-18548bbc2d95',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77e1b39e-42d6-45a1-8271-675d0cb0bb72',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b67aedc8-43cc-45dc-b898-37fbd6101d83',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '79a40530-abd4-4bde-a9dd-10aff6199cbe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bf12248-7fb3-41f7-889c-e45eba45f717',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4fcf1be5-4fc2-4253-b73b-364138601a44',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35c67ea1-c86d-4996-9ef6-3f04868d418d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e2a4069f-ac37-48a7-a4e7-58b66b751ec9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e83e6ad-0dd6-475f-a048-832367bdd1a4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '984713dd-35e9-4f30-9df3-48e7d3a4b6fa',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '932f6b06-48bf-4a80-af39-c680c4a9d212',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2019855-338a-4341-9e2e-505fcdfb94e9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e01ca431-c2ea-48bf-9ea4-2a3c570eb53d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ad9672d-9d4a-47ba-a7c6-2bddf8c2fb7d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4435b42-d0d9-440b-84ef-2a4524787565',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '845ed9f8-850e-4c5d-b231-f6e3adddf97d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '305ff4ad-dfeb-437f-842e-543322fa3bd9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8cc9fd1-c270-4dba-9f10-5e0870add767',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da649725-cc2a-4f1c-b66f-86785d92740a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ee65b72-1e6c-442d-804e-2e11acccc2d6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09d8bcf4-e29f-4592-96a5-a93b2d5e4fbd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '830b1ea9-1618-47d6-9a66-9268c97cb015',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7721c887-8330-493d-8305-ca898ebc4ef1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f89fcfd-5359-422f-80e9-14ad449432ec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7487b859-67c5-4f45-8a6a-4d70b0570f6f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7979029-36ed-43f2-adb0-832a52d76409',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9be5c160-53b4-4f84-bd29-d60cd5bb684f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '401f817a-ce59-4ebd-b4a8-def0c2064c27',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eeac8730-1c8a-4657-95f9-7dc43150f744',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4419992c-f9bc-401f-a3ad-bc5f105e705b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c74b43d8-8f99-456b-b8ea-4e43f634a848',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a683527-366f-4202-895e-ad462e081e59',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '92db94a5-0f38-4d25-a209-5d9044f7ef24',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86c1fec4-86db-4fe8-b92d-936732b8c2ce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9fbef743-deeb-4c4f-b070-74ae59b7c8ad',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43dd54bb-3d25-4e3b-a635-01c97c451b02',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4fefdf90-68f9-497c-8fd7-8879fc07de5d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca7c431f-50e1-4acf-8b5e-1049b8ae5e73',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cef33060-af78-4049-9842-5653566777c5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50fc09d3-791f-46b8-a3d1-f36e23e11343',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '181ace46-723b-41c0-94b6-0fe6898a4a05',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae07b129-dcbb-4a16-97f7-f490de73e767',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7c740fe-9e6f-4b39-b2e5-8a640b1af0f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '403016fc-d6cb-4085-93db-d2d34551a80b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '545c5008-37ec-4683-bc73-a0e5a5c8355e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f7a6547-d2c8-4716-9e00-503578790ddb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64a58513-8fab-4155-b6d4-197a60b13237',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52ca6f13-27aa-4cd8-8435-9b8451943dfe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1817e469-84ff-42fe-ae6e-471902e44710',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a27a352-7fa2-4173-a517-ed75db38ea69',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e347090d-1b87-4e7f-92cf-6a17da6125a3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '796e4ac6-71a3-41c4-9206-96bdf1b9c820',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f208717e-8e24-4c8a-bf4b-f0776f1455dc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b9aee018-644e-4c85-b82c-01a76a2abdde',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca383576-f7ee-4f29-bba2-ec61ab037a2a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5af89301-a8c8-4f92-b5be-e263d8c9c519',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1a81373-8911-404d-ba4f-bb6aba0b52d1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bbc93af1-45e1-4576-be27-5bfd16cc7a57',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17bf1bc7-b957-45cb-ad1c-7e47ded0196a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cf865a62-23f9-4e83-b532-b51c084ae6fd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f59e6e4-43d2-4bcd-9c34-aca743135624',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7973f24-b651-446e-ac2f-9415503147d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c03bfa08-e3ed-421b-b382-141281a8e0cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b587ebbb-f0b6-49d8-9be6-07d601a0d1f9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '780db7d4-bea3-40ed-ba4f-ee9fa0258c6a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c00cd813-4ad5-40a1-a2f3-9d469ef1377e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '358fa46f-1d4a-4e4b-b6b0-bf62a86fb705',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dcab12f-5134-4d3e-95c0-b666b4d7b6a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '630f7f20-9f3c-414b-9655-6df3c5a5c25e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed4287b9-fe28-4783-a5a9-d4bc36064676',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '78977f77-fbb3-49bd-996f-840feb311674',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad18e19c-6676-4fee-9402-ca8f82f7d7d6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d0feb66-1196-421f-bb66-4af5a7ff805d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b7528fd-7300-4a69-b7cc-46fb0bb41420',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7614885d-d436-4f49-97f6-2d3681e8768d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ab474cee-51dd-4679-b92e-0a3272bbf7a6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a121f976-0d66-4f4c-a21b-bef6706ce5e1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81f921e7-09b6-42d9-bb86-11f4ca12739f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2943dc79-d613-4ed1-b30e-f1eeb865457a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dfd4a916-d595-45ee-a56c-4a0d505bb4b3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd0f5475-6cd6-4dde-a9ef-7830a0567470',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b227a5f3-51d2-4935-8636-c8419f47ab66',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8dc7f54a-2192-42a1-81fe-20c4e6db29a1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eecc3b3c-1308-42b0-91d3-2a739a5c616b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4820df73-364d-4e02-8ba0-19d559db677c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4aa63c27-c961-4f3d-ac3a-e43c1b092da1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd633f16c-c8c7-450c-9ab1-9c632d62efa6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce62706f-40ca-439e-9b89-b574be454758',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3b0bd48-1675-402d-abaf-661879f95ff8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86bb76f9-82f8-4e24-9d6c-a4ea1ffef7dd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dadf9554-2672-4a76-b689-a611047726f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f4de2f2-121b-4eef-b9a8-9accd6e9701d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b564c72-1cc8-4509-9f11-8e9be7dd9279',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bbf10ed-3dab-484a-ab27-570675444bbe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2302f833-75c2-4d22-b1b2-9136002fc448',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8db1a1d9-447c-48b4-8985-4fcd30da1750',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1dacc1c1-3f15-49a1-9dfa-924b5d460aae',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '70cae528-d6c2-47ca-b02a-c12aae4701b6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3e31d59-d26b-49b6-b96e-35b5e78f4907',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2fb9abe-ff51-4cc1-afc6-9918d372172e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a84018c-2839-43f2-9e19-dd2cceff7456',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '447864da-0251-4d5b-89c4-45429afd8889',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6815b5e-34d0-431d-a7d8-7c9b814d9944',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '54bd92c5-dfbe-442f-bfe4-3ebbe235a0e3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af380b68-2047-4330-ba24-8f72ef0e85e1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7c7e3ce-836b-4311-b77d-13d159bd92ea',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2cc9fd9e-d24f-4e19-a7f4-b7526a42cfd4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42243b17-970a-438c-a14e-6cac95ba93c9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c626586c-65c4-4a02-b1ed-96a9a7b00020',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce752c81-e627-4019-99a6-4db1c6b091bb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '795e08ae-4bc4-4cf9-aa3b-63bf6d96f2f4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a9e381d-a4dc-4cd3-86e5-da1c488051cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b644701-edc8-48e8-afc5-91ae9ea5c58a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ed1e304-3c4a-45b6-adad-a677e482d418',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b041852b-a20e-4afa-b5f3-7247185f9b0b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e5c583a-0106-4994-a08d-67838b32ddf5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77a02874-c363-4cf8-8347-f7a78c015edf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6f9afe14-fe17-4cf9-9197-7c4577334c9b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56cd16af-7f37-4ec5-ba0e-e5627449e840',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df16ba62-465f-43dc-8479-2a6ea6cce03d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce2116d5-ed6a-44b9-ae7e-95ae17e95570',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37237ab3-6955-42dd-88e8-0bb1b306a7b2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0e4b650-aec4-4021-b6a8-467524269cf0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b4f2d79-763f-4943-89c4-acf7789d4bf5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db9ccfca-88f3-4593-8780-c9c0d89f0469',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e0b5c53-c365-4c6d-9125-97be853475ba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '359e3cdb-bc8c-4d87-910e-b6839823582c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f56f572f-0733-43b7-b187-3cb8da6891f2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b95a2f2e-e997-4731-92ab-02856a024906',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea1c179e-9931-481f-89dd-9e61cde32767',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a35a19d-5afb-4413-931b-87d599324267',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91cb2c11-0040-420a-8c64-8a0b1fc46e1e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3da0273c-8810-4fb7-ad04-467d44e34c3e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d7906f7-051d-4911-b67e-c534c5332669',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0835571e-fdd3-412a-a109-ec5617449673',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aafcaa67-0a60-49c3-b61f-c7fabfe07a79',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af2351bb-905d-40cb-95eb-5c27ffa02d8c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6e64467-1d7a-4a2c-8921-ccaa0cadd4d1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22c88dd3-a394-4bf2-bc41-1d8fd61dcd82',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b91ab38-fd5b-473b-bca4-8a07a61e68e3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3715e0e1-9807-4483-9a72-e04becbc2f5c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '849e4e84-5b8c-4706-b729-160eae034b17',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49d212c6-a859-43f0-9137-b27a21049416',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6a0f7e4-54bb-401e-90dd-778e39c02c2a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a418b006-ffbc-43c1-a6f7-8a65cfd158ca',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85aa8126-9907-47c4-9d3e-5a918e2556f0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87b74486-3aa7-44f2-a1d5-81ac5d18681b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2a39765-4272-446e-afd8-20dfac9aabc2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '624f520f-35a6-4fef-a7f5-4b778622b30b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c48a479-2696-4b56-a9af-cc4f76966693',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '887c1f51-d8c5-456a-a98a-71ec5427fba9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0de32a0f-3f80-4432-abe1-9e8bb4cc868e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7f00b923-ba60-403c-9336-c989b71897f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8133a6f3-d819-4aef-8d38-b85da88d72fb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c532e1f0-be99-4287-b082-e21d0e3efb9c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d3543c1-2713-4678-93ed-502e0b109a32',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61a6ffc8-5c73-4563-89ee-0b9b8c3229ad',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f210f01-0110-4943-964e-fde6950642dd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e22bf5b6-e89b-415c-9851-02d0e02d65cd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ba681499-d8ea-466e-aae4-61169f891a0f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d44aad9-6123-4a07-8442-1a2a9a56fb22',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '763cc3de-da3a-40f5-93f5-2f60878b9c4e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cea46d18-38cf-486d-b321-f2e8f2873f08',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a213598d-c068-4a68-9537-2fe37989e121',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a18c0caa-7ff7-4ad6-ac9a-9834a0a0084c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0831cd72-6052-4fe5-b784-f45a3fedb977',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '753fbaaf-07e9-479c-8fd2-ae297b08467a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c89ea4e8-df56-4304-a0b9-663e78c06a68',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7f471dc7-c52d-4b71-9d85-62f6d86788ae',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1bc8c366-63ba-401b-8621-9a2abb3e7a42',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b038e340-6e49-4dc9-b77a-359fb1006ec0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43d5b1e7-0706-4c29-887f-529946639ff6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fea92072-673d-43bc-8983-f89866aed59b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1682a6a-5b78-422b-8c85-5751206a0afb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef7246f7-f475-4df8-9726-2ab61912b071',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8b883b8-c8b0-4574-8665-7793b93a12bb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1ee9118-87b9-4c82-9d23-7831a8294b68',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ebacb32a-80e5-43d5-abab-88924c6e7bc3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5dda656a-e2b4-4142-a23a-ad3a8da6b1da',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3746f559-7c47-4a67-8c59-44388df2e3a5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1586ed9-47a3-4bf8-bea5-15479929c9e3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '830aa5d7-1034-4360-b014-30cb5637cdb2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3167c6e1-661b-48c4-998d-1785b12c98d6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7e4a379-c4b5-4147-ac01-90a17d1c48dc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66a9721b-eca2-4d0e-86e9-e6c98595d885',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6cb3a4fd-894c-4123-8ff5-583de7378ec5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9bff4ec-413c-4834-aa94-f6ba8d53e0b5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb7a53b4-edff-4f94-92dd-9c3ac9124dc8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42d1699a-d4f2-4b5e-a5c5-4ee60d1fb971',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e53680e4-ca0d-4a56-85ab-76446ad10c54',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '312ca510-0c95-4b8d-9e08-9e420464a4d5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd04d7ce1-6fbd-4a19-ad9f-0961ef116e88',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '765f4a3e-aa93-4f9f-9c14-d0c864f21e2f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ee174b49-a0d0-450c-bd54-7d836fe432ea',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f23ebd5-b5f1-4556-a9ec-674785701510',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9d17aad-9e0a-4926-94e9-aed713cfce9d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2cd341d-2063-4124-adde-83c8c00674b7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '352a9c12-d47e-431f-bb74-d42bcd3c77e7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc9decd2-c152-4c9f-96bc-6fca16f61d8e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7895850-0862-462b-9fba-b4e7e4e320ec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8c0f2e3-1018-4acc-810a-fefb9e23ea85',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80c2e28a-305e-4142-8aef-08e9b61dda4a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bb1a690-8a59-4a07-a804-0408935e0408',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73532f4c-ea8f-44bf-b927-6dd29c445f56',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64776561-5b4b-4942-b021-7c5879c7a970',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b27f593-3fb2-4c2b-900a-a5983425b3ff',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80a95aad-2b6d-4f7c-bebf-a1e3470931bf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bee1209a-e73e-4614-870b-30e911f1de77',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f218cf0d-0d4a-421e-a951-043d2c47e235',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad6358a4-3b7a-497f-9ff6-81197b0beaef',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea4ce676-bc75-4ea0-a485-46fe63b5d528',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8341f90e-d618-4c55-9d79-4319e2224fdc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6f1c380-f5a9-438b-b6d6-6ec8939c85a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ebb73bcf-65e6-416d-98d3-b6be56c56855',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d59c36b-477d-48af-a598-940369f890cf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6babd328-d557-46c8-8e4d-5c46deeb0a13',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e8ede906-15e9-4c35-b201-b8e6f8bbf472',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dacbcc5-845e-47cb-aac0-a832bbac2ebc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ffef883-52eb-44c7-b091-bb3a43fd65d1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77f3351b-4652-444e-ae4d-c358905ef6aa',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c0c1ebf8-dbb2-4b04-899a-00110f869395',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '36400e99-8b37-4198-9728-cf00f71ac301',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07c6c68b-60e9-449e-942c-8537b64f2ca6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7da20107-993e-4409-b0e5-9f51912dccc0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a93bbb35-d931-4895-8dca-22e485ac3b7d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '732124dd-399e-4247-a394-c8131af46bd7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b30f0e4-3354-4400-99e6-5320d73f9d7b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c5ecda75-5f50-4f96-9642-f1c5ac350acb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b53565c-9ae6-4b9c-b234-54041b712e8b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c7db856-a8f8-4172-b0c5-c2078ab97474',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cfb7469a-c2c2-41a8-84b5-394eb9756d87',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4273f90c-4489-4e27-8b87-7c280a3c7223',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4134230c-36f9-4919-b270-83ccd5b95820',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '816c94cd-9fb7-4a01-abfc-2888cbf5dcdc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'efc8ba30-ba19-406f-9e52-8573375989ed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08fd32e9-2ec3-4673-b117-7ab4074f20ae',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e139e165-c45e-439e-aece-fd05e45fc6ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd830a0b-b865-4b33-8a8c-7edfdf04a776',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ddb4100-f7c5-418c-856c-07b047dcb8b4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4aa3c12d-ca8d-4f01-9b0f-e33fd2eace99',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa44b94b-db46-459a-88ac-f230b0d4e4e4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '035c6eb8-535f-4485-aab3-024f378c2803',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c47633a-85d0-4096-aae8-02ac9775f5a1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3e95a93-a532-4056-b091-5b1a903f34af',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7ebf305-34be-4bfd-8e0e-e8de8b6edfba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7fe53d89-b699-4472-9047-01463bc1d969',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e3a95324-dd90-4329-bb80-8a886a3d0600',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '865ec8eb-0f72-4ef5-b2a3-00c1d13b2127',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c83a5f0-8f7a-43be-b683-5ebbef8ba9f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a90477b-e537-4dc3-89f2-f6fe0bce2699',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87492db7-d357-49b6-b894-024325ee27a0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e578a11b-bca8-4832-a953-b2b33524b376',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'faa8f3ad-0d22-4573-90a1-07e86806f502',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cd004b0c-aa9d-4d63-885f-69519a179c0d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '94e261a1-02bd-48e6-9846-fe9555e3feb9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '75ff5548-279f-4643-8ffe-e78c8818568d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afe8b38a-4c0a-47d8-a878-124eabbb5dd5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7a9ab66-67e9-400f-a881-9861668c0a15',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd044dbf-b99e-40db-990a-52c4892cbcda',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e10cad3-9593-4324-b174-6317c33569a0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8dea352-3c2b-4c0f-8af0-db3b6446f78d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1622241d-9fa9-4fb7-9afe-afbab75966b1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '949039b0-f678-4430-98c3-a60177203dd3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a5b162a-5114-456e-80ec-b303f29bfe9f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8170aa4b-3527-4de9-8912-c51ae491ba87',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ea59546-c8d4-48ac-9fb8-cc63d667a119',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd34be4d-9d49-4ee6-866c-5eefd71cf278',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08eeec1f-cb09-444a-898f-657c231a12b4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8042e324-228d-417a-8cf1-2e8e6d1b95d5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fda12406-eaef-4d56-8181-9dd2fbe2b4cd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c78ecaf-0a56-40ba-b1b3-dea90912a665',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d0fefd6-3f81-4be4-98e1-a6578cafec6b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f135df29-12f0-4882-a30c-ce99a97ae3d7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d050eb0-3f17-4b28-8d7e-e3f63c3aea37',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f570d6d1-34af-4487-8642-c0da67398d6f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06cc67fd-d233-4773-b4c6-9b83d5a6c582',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd251ff6e-cca7-494d-8799-7dda055e09c8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cd29462-598f-4c1a-a0da-4e3a236ef97c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c18e6f66-1c05-487e-a34b-fa8aa5ec2d87',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd66961a-8249-4c9f-b815-55ce0e128f3e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7de38661-41e7-401d-a1ca-ceaee4982301',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86dde8e6-0414-4d38-aabc-1ec4e753948d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c10475a-5fb9-4b66-ad57-545cb2b0567a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd584b2f0-437a-43d6-9d17-e1b93746f29c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '605e2c04-8fb8-46ef-9a94-3835397cbc27',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6bac5695-f332-4633-be4c-1fbe0af26fda',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f9499b3-02f7-4e06-bd72-b150efcfd141',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f1697bfe-0d2e-488e-a0bf-abf5b03a559c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bda34d01-5d2c-4ebe-ba51-28ae4393b8ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50b684a0-cc6a-4980-9b22-fe47639c6aef',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da31e51e-8fd2-437c-b1fb-bdee9aec6a8e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3746ebaa-168b-43e4-9a82-65d343418e6f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7eedc6b8-63d5-4515-b75a-871aa0355178',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4e3de12-27d7-4f38-8d57-3e188539af0b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f167bebe-3ac3-4b77-91ea-cf122516db44',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b31dd8f1-76ed-4b27-bf3f-8f4aaa2902fb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c097417-0ee0-44f2-8e64-92fca4126dbc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f98c0d4-f743-4434-b4e2-e86bcd0ae5ce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77112629-2104-4310-9794-9aca7a824a44',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82dd12e8-9688-48bd-b045-85b4221d0e36',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af15f820-62fa-463c-bfbb-85e66a1b86b5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5f4a3cf-9a0e-402f-a49a-ce6ed0922500',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3e8ca86-ac12-4a2c-bebf-3126604f971c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c8c7c0a-6f04-4b66-a7a9-2274b20b67b9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '455237f2-4438-4471-94e5-5ab83d3152a3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa78058d-90ed-47c4-9b73-03b9a5c8f658',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca615406-6918-4f8c-83c8-28e4c517ff7e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f4ce073-0085-4802-b465-682e6db377da',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f61961e0-6d9b-496e-aaa4-80631067cb61',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3879ce62-7007-4578-9cef-78b78c2c017b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '509e298b-f21d-4ea7-b4cf-5928c681ffb2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a5d44a2-c759-4366-9b38-4181fcdad747',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be42ce69-f8d9-4d27-8dc3-ca505f1984ff',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8db7b769-abaf-41e0-bd84-c3ecaa0d5062',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2cb9ca6-6412-4287-b573-52e7f8514952',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07bf5549-01d6-48b4-a584-46a2fa6c0621',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e4b8525-21f3-494a-a405-a12eaf6128d5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ee2224f-0837-47a6-9548-9a90e5323a1b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7e54c73b-a676-4d52-b447-934e8afaace8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '043f7902-1788-43e9-a21f-5c84e7ef22fa',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95286619-4959-426f-a0b3-4c2f5a3103d6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d070959-afa7-4cdc-bf23-81e998e3efd9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfd7b2d3-e4df-48d7-acd5-5f75b9263ca3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4808bb79-7dba-4b25-9313-93a06142e975',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7c152a9-3954-40c3-80c6-574b05191bca',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9846f5b-6583-44dc-8821-e1c8deee0686',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'acc44007-e6dd-4886-99c5-74c9ecbb0e5a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e73a48ce-2f36-427d-8aa5-5741a3d34bb1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da3aa4d3-e679-4acc-a8d1-a0bc0d283f56',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af656838-cade-4088-a9d5-ea3a7066aeab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dcb14053-3d80-4484-89c3-851ca2010d65',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '124d8300-edf1-42e3-923c-2ff576a12463',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '233a0aec-fb97-4bc5-a80c-220a6307ec16',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5edf8d2c-abdb-40a1-a73a-f317a300ace5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f15683cd-897e-44be-96e5-582af86c3873',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d8b37ba-6a50-4445-a176-dd97351cf2ea',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf89f293-2450-45a8-8c5f-61494a9681ab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '073cd2a6-3dd7-453b-a11c-f9d5d9e53c34',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9b0e322-6bcc-4740-9a2d-b73c9e243103',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '141689a6-0eb8-4156-a60d-da7fca120647',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cabd037c-d0b4-4ad9-8077-b70bd2a65bf7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd78117f8-93e2-4a87-944e-7b05799f958a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '389255ff-c58d-4561-8a1a-06c3fa328a38',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1504a27-72e9-4e04-bee4-574892a505dc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e012811f-1551-45ce-8fef-d2785c911b42',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '762a1a3d-74d2-461e-9149-2220b72e18c3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80fb2dd7-dd36-4399-b2f8-c3d5cb665add',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c0d9b124-16ae-4332-b5e1-f8505107c441',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '67578df5-51bc-4c93-9255-7dacff691bd2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91370d02-83c4-48f2-9bfb-61674c1a6d28',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0b99a94-e51e-424f-be1e-4e06d0a84a57',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62036341-3128-4ec7-95ac-20fff320b504',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3fc31d20-840d-4524-9a16-1a473b0e80a8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e86d1387-b90c-41a9-b8d2-4676dd4e5dec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed1e6e1c-69a7-4932-81ee-9eac7123b8d3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fbd0268c-40c8-4b06-96ed-6c8e1d0a254d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2908ae1f-fd47-45e8-b20e-bd3266c0b685',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '393c5118-439f-4fde-beb1-aaa05a2d346b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c94f57dd-b0ef-486a-9d2e-f29979d0e090',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '92d7cbd5-fdd5-4330-ba35-3794f1220052',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68499c96-cd36-4f18-93c2-06be3f508bed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c48db527-317f-4a17-99d5-b1bfa7e357ed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35af3d3a-e85d-40c4-a83a-6e0da70558d7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c17c9cf-7860-4d62-8aea-cde898ca6646',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8a0010da-09df-4381-b1bb-ea7a9a1dd1bd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c0a0411-6253-4d04-b34a-08d364145d50',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa93920d-f68d-41ff-b73b-1bd519ad0e8e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '206112a0-9298-4005-b3ef-37a56164a6f8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd853050d-90de-488a-bd0f-bba4a8c29a2e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b17c912f-5591-4427-a393-c2391825b3b5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '11d70768-5c1d-438f-9e8a-6a877bb22de4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfe668ad-ce15-4f28-b92a-88c2ca64b987',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42e5c58a-a6fd-4abe-9593-8aa7cb8156bd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '545d8669-870e-460c-96f1-ba56840e7b0e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '570b1ea3-37d6-474f-a813-4a7260202150',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae699a2b-67b3-4519-9244-b8b186f7a996',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52c21ab4-82b1-478f-ac0e-ab3cf1bf41cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db732f89-dc46-4246-bf89-f7e0a6e9ca37',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abdf2899-b6f9-446c-9a0d-a06a93d057d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b30bf485-9f76-4c0d-869a-60b383717a66',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6eab054a-28f4-4329-88c2-122e5c1084f1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7780105f-5842-4203-ade0-7cd9860aff21',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91c3d934-89e3-4156-bffa-4632dff8ad43',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7d264caa-8588-4289-b948-774a16ed6394',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0265bd9b-f6b4-40a4-b1a8-3c7cd0940df3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c002385-f722-49c2-8ec9-65d6a171a88b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c2424685-700e-435e-a856-42d9930b28fc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '698dc97f-aafb-4e9c-bc50-8439d3b8594b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ee39e161-63a0-4ad5-9668-6ee2b50223a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6d7fca5c-114b-40aa-acf5-36fcbb40267d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87d73cb5-57ff-4054-b07f-e682fd32305c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4bf80acd-59e0-4032-afcc-81d455a3280a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf8fd350-4356-4e9f-b5e5-ff33a250ee9f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4de7b563-e089-49df-8ba4-2de23bab891c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '645fd17c-041d-41eb-ab70-2f63dc4247a5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'affeffb4-1a90-41bf-84bf-649abd7287fb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e98d4d8b-ae6c-4d68-8abf-c60a119eb940',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b46f910-59b5-492e-8eb4-ecc348b7771b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '97b0fdf8-10dc-48d3-9046-132a42d65bb1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd71a4da2-36e3-4fc4-8872-ef27aa96b601',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ddf8998-d1f4-43b3-a9e7-28e1cb4526ae',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e00716fa-0619-4a2d-8667-6c05af0e2c21',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '024daa08-9b1c-4cad-805f-fa226f3ad19a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68bb90be-ee6d-4ebc-b175-6da142141bf2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93e46938-4ae6-4b15-b4ba-e41eb384a3f8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ed6e8cf-cca6-4ec5-9f77-550508ee1f74',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2d74c4ca-abe8-481f-b685-cedd4e7938e8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3241e667-d655-45f1-9b35-1f207cda5c2b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '10c2de81-34ea-41d8-b6ce-03e9814466f7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f2abd8d-057b-4200-9190-cf5ca8aaefe7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17604484-3342-4218-9586-c95acf9101a2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '75e97f59-29d8-401e-b83c-bd13926470ce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c045499-7161-495d-9277-1b2b1cf54551',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3aabf63c-df9d-4b93-a150-ba1328841861',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02353c70-ea74-4f04-8e3b-97e260697497',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0100ade1-692b-42d9-81f3-a38db334bf3c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '23445e83-ed92-41c3-9f60-3975e73b7b3c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bbd6d8fd-bb6d-4599-99fb-3938d5c77344',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21a41e2f-4c38-4254-a3e2-57274b447b2d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5560de8-8e8e-49c2-8d3b-6719f87c2b39',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49d6b59c-439d-4c8f-982f-dc7341c4c152',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '30130666-c719-48d2-aaac-396cec597f46',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4def2004-af50-4cc3-a765-a99f4ba74c6a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f538d961-558d-4e6b-a4e5-a3106dd8165a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c66fc569-e394-4d76-b82b-e135285a6909',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '612d00e0-1e81-4a66-9b19-d9158554f974',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a64a6fa9-9874-42c8-b28a-5c5609719da3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a6213337-5e99-4174-a0b3-68533beff79d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '217cd8fc-37ab-4894-8061-eec76faf673e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5b664a9-c8e3-41b4-8324-2c46398d50b6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'adede632-9770-47c6-a0af-5be44473a17e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f5294ff-b082-48ee-b9e9-d61011c55c3b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e794970-f6bd-4025-8a4f-01ccf0b4ead8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '426f38b9-921d-46c6-9d74-b310070fdd15',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef61faf8-c054-4d73-8e68-240c292d12d2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e2899915-df2a-4c9f-866b-9e040a59150c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9aa636b7-5090-46e6-9e96-d943510303d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cabd606e-a8c4-479d-8c3a-0f7fb7f6f00d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a6b5de6-a854-4711-90d0-83ab1f007066',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d46ff65-3f5c-488e-b7f2-fc772746d7e8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd925451c-a18e-4216-bee0-64d4b61018b3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '576133d7-9b20-48c4-8909-91d21c74508b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8f8c13c-0078-4265-9a9c-d98940bbc2f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1fce39cf-dd93-41db-8bbf-a7b61924e4f7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dbea3955-d7c9-4acf-bb40-5d7163ab9789',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd9741d3-6bb4-4fc7-871b-63375c7cf3ff',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39359300-aad4-4d16-8b80-3764bbc94ddf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '78ccd76a-5f5d-46b0-970b-5d8e15ac06cc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c69342c1-c4e0-401f-9bd3-75f63c7dd3d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db9717d6-9182-472c-933a-406c72b69214',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21db6bb9-f594-4ba0-a884-6f860a89fc95',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6393315d-e9d3-4e39-901a-41148f5c4330',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8906b65-edf5-4793-ba30-5a062a05dc0f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a48b162e-ae2d-4331-b540-9dd8f9d57534',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0ec8d56-ee2f-4a9c-9998-6fd1a1a0df4c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64f01875-f2a6-4fe1-856e-5eceafb05f29',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bdde71a1-ef13-4090-9af1-20000c3a2a7a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd6b85fcb-5ccc-48bb-a63d-80d999357d2b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb64a9d6-95d4-43d0-b6d8-0542b83cb48b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '537d2893-b8da-471e-b71f-99db51b384eb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bfba5b1-db86-428d-869e-ddb77fe55c69',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '103d87eb-83b5-40d1-9768-07540fb1a8c4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9bbdd1ac-5296-48f6-84c1-20f0ff92ba90',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b05427b-cbcd-45ab-9e2e-4f9cdac66abd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83fe5991-8fe4-4ec8-947b-05adca8c1330',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e6d6a1f6-292c-4e65-b603-05072f6c4f04',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68a523f8-3e6a-4771-8c44-f892681e1ca9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80b32327-6054-4190-9296-705b7daf032e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9841657-c7d6-4674-8b4f-8b0f4461fb7b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b01c001-cd92-4722-bf87-184709459f16',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fba596e2-aa5c-429a-94fb-0699c0f114b1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f351f0c-1ebe-4e6c-a599-f0004957ed8d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d160386-f2ed-43b0-8795-9016a8b44c51',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63560fc8-718c-4a6c-9a9a-cafaa237bfaa',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ec24ff53-036d-4186-9e56-6d97376ea110',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5fec0cc3-b552-43e8-b8ea-3c69de9be8e4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1123047-4dc7-4123-ae8c-f66f45528087',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2363267f-08a9-4490-9f32-22628a2d0c7d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '577901da-77bb-4bed-948d-ec1bd0b5be04',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e73f7e0e-2983-4932-a7f0-d3f89dea1e3c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5d0b0a9e-3154-4994-811d-2f609dfa4879',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9bde0cef-5b86-409f-9ad4-bc01ea70aea6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7b8de49a-87ee-4389-a82c-3aab6d705bdb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1284b524-6804-49ac-86e3-9644224a89a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f7fb820-bfbe-43f2-8e36-8b00eb47cc59',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89559db6-489f-4a0d-ae4d-c2f35206d513',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ada15ec-3b30-450a-8818-139e783315c5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dcfb383f-eb74-434a-8220-f0e1d9b78dd0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '043322a7-916f-4cd9-a1d8-19d3cd1e6c62',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c70912c8-daf4-4159-b7cc-664ae5a077de',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e663e2e9-b129-417a-a858-826459737c1e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db7cd056-c710-443c-9a2b-085420b43153',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '24a72bb4-1831-4218-a51d-81f6c4245841',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7124884e-8c42-44af-9434-90c430b1ce9d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a170ba07-4c1b-4f20-b1ec-301af65cf994',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db5a8295-0866-450a-9738-b037607e82ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f497241-00a4-4b5b-a135-e546f56d3867',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0783e7f-cd18-43db-b5c2-7507af607739',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c94773fe-9bc4-47aa-9661-8faf891851cd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb272266-e47d-4ea9-9a9d-e82b895afb51',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '746ab5c5-ec7a-40ea-aaad-9e9673cda10d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8e1b29f-e6fa-4447-8245-6d18cd9a8016',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '111a2c05-b46e-45d0-b721-d05a940e2a69',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc2c3fcd-cd7b-4450-bdbd-e168c3da7e94',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9b0ad2b-0820-4fe4-a98e-3aec49c6e572',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4590c73-fbd3-4d91-b764-0b64df92d3ad',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b43fb9a-9bf3-4236-b1ba-504749025814',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6771ea3-74d6-4d0b-b371-e70b6630ba09',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12cbe84e-d752-44fb-b577-bbd8138bf20f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8d88e8b-ef77-4811-ab17-73ca48e9a280',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb42d23d-6232-4a03-a237-3977e059b1b6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6026e84e-14e5-4155-84ba-723677670bab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f395f5d1-9337-459e-baa9-303cf87a2d2a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c9628a8-4b5c-4c52-bd98-c85d9f8fb8c0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '131f0e28-d6c5-4070-9352-6773352bf57d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e998ac6-f1bb-4bd4-bae5-5f8122da824e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9243ceef-e334-4430-889f-6988a95a2387',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd5fd885b-56e9-4403-a91d-305e6dabc460',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d1e1a30-a027-47fb-b7fd-f2058494c5b3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd68f33f3-265d-4e7a-8849-fea951371315',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85ca8ffe-1457-4f09-b1da-b13e88e97136',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '744b2114-47de-454a-8b57-4be28f85f3c2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ffecbfd-77d5-4928-b667-69e14792f9a9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '846e3c0a-0647-4098-9e7b-74610bddcb40',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5045a5f3-5e08-44c8-8b9a-d3dcdd3bcca9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '53e660e0-f551-4005-a88f-9ed447042ca4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7905ee9c-7a21-42c3-99fc-216fca6b7ba5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd57b8bd8-c3f7-44ab-808d-fcc1a317d6d4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc158941-7fda-4260-80a5-ca2e95d33f55',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9853817-f4dd-4523-9569-3c1b12f733ed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afcc93d9-f73b-413d-89c0-67a81deb97cd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2489aea4-3918-4e90-9ff9-5a3862b65241',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '851a2c52-7f64-4610-9c35-7ac8cd7f422e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abdbc1d0-45e1-4e70-8ca7-8a154f960f6f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26572ae8-5e5d-4be8-9089-0df7e31948d0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '523538c7-4f5a-4848-8679-60129b9e0008',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86813da5-102b-46ba-80cb-f805e8f0cdac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7650fc02-8db3-44f3-ad8e-f8f069f31c2a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c842686-dad5-41fe-afaf-03e5304d7f4b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abf0506f-5a86-4293-aec5-01a827072e5c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8017736a-ba98-4753-aeec-9f341631e74d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '16417552-b49d-453f-9fd6-a95c471e0e4e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12771669-0745-4339-b7ef-7ddc04346ba3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a30b1576-60c4-4b90-85ed-9405d6d472ce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a723dc95-fedc-4a40-a690-7f888411adc4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17f9abe2-2a1c-40bd-9cdb-074ae103a921',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ab7bf19e-7b78-40b8-a345-48d23917881d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59e7bc66-c5eb-4ffe-a3cd-b6ef8e0ad224',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4906a801-28f5-43b4-8cdb-fa3c245d0596',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ee8100a-5230-43d4-aa49-6d855f202c90',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e6c904ba-5192-49ea-b833-421c89a07964',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b33f325-0021-4907-b157-852389ea2ae5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac4c5443-7537-45f5-aff0-a3e38900aba4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c0b94651-8efb-4727-a82e-b92d0202ce3b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b68bbdb-d811-4d01-8d7c-90d15a008a78',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82255653-4a8c-4135-b262-b707388d2a7e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7fddc571-dc95-4466-a5ea-38067dac0e73',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac932c46-693b-4613-9fea-47efad49aea2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'efa7816c-7f21-4bf5-a517-76a04860288d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7baba6bd-1880-4d45-8afe-58c38ca6ae9c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '15a6a1ec-bbf6-41f0-b617-3c35f5f2a7f5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61c29c64-116e-4c99-9b40-1a1f2b214938',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ab8369f4-6f2e-4c6b-96fe-691c2b71ff8b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ac752ce-a4b7-445b-a067-2f3471dd2d1e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e036eb50-cb2f-464b-a814-f556a3d64bb1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb816c52-01bd-42ab-bf2d-2a65a7c0e1d2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '634002d3-f323-4358-9fa5-65db9be71909',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be17e7e2-ad0d-4105-a831-e2f4186b9d6f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c331c374-2ecc-4ca1-9bff-131398a9f7a3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e55b365d-ff2e-4109-b906-72501c06cb2c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc7bf488-56ef-4c6d-94e1-0d09cbf25918',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '88f7e5da-c02f-417a-a99a-f88c748e48a9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dffdbe4-0162-46da-bea4-b7251709842e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ee7d98f-a21b-4905-a32f-d7ac7060f1ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90d698c9-de60-4cd8-9d0d-0db16316f239',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7483e1e-24af-4ce8-b814-5c703687090a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5eb12704-1d9d-4e8f-a0f7-9ba744d5974f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9adc156d-fe8d-4c65-929e-3e3c481158d9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ccd5876-2f82-48c7-9c36-744d723c7fc4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1745d37-5363-4ad7-b0eb-2783c184fad3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cc40132-fc26-4e79-89d9-6848c9d69049',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '406523a3-f9a7-484f-bc78-b1c872e11c9c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '700f3802-5720-47e4-8768-559e9a73571d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d65d6ca-d50e-442a-950d-9a96fe97a664',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ed98eef-5adf-42ed-84c6-6762b76387ad',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42a2b63c-ed16-4b67-a20c-041581c87661',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c867b8f6-f7d4-47c1-bb4a-dc8eb52482e4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'efeba938-c371-4e54-87e9-a2b8f551e5b1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a4ef9baf-ec48-466f-9f29-7d824029108b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '580c0d4a-d8d8-40a4-9299-ad68f2da404b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e253b1fe-b9ec-424a-96d5-27b484647f10',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8ffafde-4a7f-41b7-ac80-2817f0b1f9d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc28c874-ad2c-45ae-a1bf-13ded45991d7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd521f5a3-9c9a-483d-a750-6dbd409e5487',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea545b5a-5433-4cae-8cb7-96efb3ba9e26',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7cc1c0e-09fe-44b2-8c34-5c3be5cbda30',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13b8ad4e-3d6a-4882-a2a9-d2dd74458054',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '44a3790a-4850-4e8c-accc-64e67bb55ce4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58f85c0a-7a58-41fc-b48c-4c93459fe67a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ec43294-7b62-4cc2-8540-b0466018dafb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '32e7f21a-1ef2-42a8-9681-342c94693bfd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ebcb999-290f-4292-b20e-2ca207cc2dc8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93e774b4-5b37-4186-ac14-d868875bc01b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83afce74-d2cc-4b51-a6a9-c1691cc5cb24',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be7c4264-a9ce-4791-9483-e2167e67f405',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82274ee9-312a-4150-907a-478651154be7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'adeb2907-756e-4325-b219-335db38d7fa8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3dc10905-7895-469f-9e43-c37fef0bf5c8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fde5bab4-5e21-4cce-aeff-33517657688b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12e72d13-f689-4c12-80e8-9d2a511f02df',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '11c9e813-9055-4156-b4d7-88b54e04ce38',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e487de55-10e7-4b17-9f3a-ea5c80c5e5a2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b32ec747-7f90-4864-b55b-c3cc151f3294',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27464a90-579a-4da3-a2e0-80ae90087448',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9976ee4c-0cf4-4509-bfb8-55832a6df9f3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e2b9b5ce-06ac-4af1-b63b-b09b4a1d1dda',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6b41a70-21c1-4692-a494-546d98ce4f26',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fee64e31-23d3-4da8-8db5-a80bc8c87c69',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b53d0fd3-f218-41b7-9da3-e4291d26c9dc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '053256ee-3e26-4052-9c50-65aa805f10d8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '734b6be4-3eda-4c76-b92c-acf399dffa29',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9ab6167-c5de-45bf-a457-5f2db849d521',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '898b14bd-c07e-4008-863e-c366950cf96d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '79c7ff81-709b-41ba-9c50-6f5571e5650e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59e0348b-44bf-4bfb-b06d-5412f694b066',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e3fad09-ebb2-42ad-8b70-fd3a5919d229',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e73b0d7-7941-48d3-9d31-d8f8f1d98ae0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02dd6c8c-70a8-47b8-bdd1-53e068d96816',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c5385a1-ebae-405d-99dd-82b18c8f384e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '777484d5-a413-4bdc-b757-597e8c59559b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2362e36a-6667-459a-b38e-58027427407d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ad553c3-e704-436c-ad30-69425bbf4fc8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ee0441f4-9b9d-4812-81c8-4be18068a540',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99fd8fbc-4102-4630-88d1-8d1c11e3f6bc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '584a9971-6180-4edf-a07e-f3715e21a230',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f90339c-5369-42f1-81ee-e8018814f76e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb8bc218-a753-4f3c-b9cd-5241f6e66f46',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c4cdaa2-080b-41c1-a134-f44d1660c451',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '40b73753-9045-4cde-9eb8-26d77ee8ce20',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61d58c7f-815e-4d36-8fb6-0329680e66e6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bc5e7194-fe5b-43cd-8ff9-8b36ea2d2ff4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ee19b40-c01c-40ee-83f7-53166855f6fc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd57ff649-abc3-4e85-ab3d-9397eb7c00d5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9601f831-55c2-42ae-8a59-1ba54830e292',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e78d4087-b754-4431-816a-8a50ac8ca123',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce70a179-6467-4e64-8ffd-7b0fba1ea6f7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed1cfc3b-b579-4e3a-8181-42d0ad1016d3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aa7a1a7b-e50b-4fe3-86d2-c45b053bc76e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e01a09a2-da10-4ae4-b7f4-de73718fc999',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '33222c1d-2a94-435d-9ff2-98e169601e7d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '70bbeeb2-ca0b-4277-9320-c6a2aff05129',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '410a4383-f886-41a4-89e3-29d3c799ebb6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7753572e-701b-4e56-835c-1b270f3c3b5b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47513910-2750-4444-b78a-9b6a0c455b7e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fbb8ab74-4c18-410e-99ad-1a302618092f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af5a1636-0dfd-459c-9ed2-d8c2a777d99c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '57a8d0c8-5ffa-4b5a-9059-a93b1f30ede2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a37b0089-4c4a-4403-a59d-4da78fdb33a5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b956efb-3aee-4600-b565-0519d0d86c42',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a141956-144c-442e-b323-71385ecd98dd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '240be489-d50e-4989-9d3a-3b3973ccc0d3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd44285b7-c2d7-46e0-b5a4-82c73c88f71d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5d89fdc-9ad8-4c58-a1d9-83a9ccb2b993',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6513a45-5082-441c-95a1-cc2026b56a9b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b2a21f2-78b1-4264-a475-9a67510908e2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bc55f5f9-4fe0-41ae-8193-a6dd1368fefb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a4de953-2a24-4c75-8faa-3cebd3c69caa',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eefbad02-4b9e-40ad-b599-de2e8e4b4ac5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12674265-6cae-4c1d-9191-41583ada95bf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd1612dd-a5bf-4ec0-8d67-a1fcd86e4ff0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b17c1845-cec3-47e9-87ff-84de52cdfbce',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8f8d2c7-0874-4fd1-8546-32922835c5ec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'edc25b2d-f6ea-470e-9d4c-90a74ffec7a9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ddad4ea-ca0a-41ee-98f8-3b16d46df147',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8fb07748-0df3-44fc-b577-2c4618f3b8cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '209cc421-4e98-47f7-a432-162574a4d8d3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b4052d0-01a3-4607-8efd-434022b38630',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae08190d-b76b-4e91-a8a6-4e8865362e25',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3ee9abea-de9b-451d-acfe-390383700676',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cdaf4fd8-dfa5-4f00-898a-23dcfadfdd69',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85589108-7e01-48b5-9bba-cba4a0ade60e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b1a0cf2e-8de3-4c49-a566-a163d8536ce5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '291f2c87-c176-4ebd-ac79-99dbdcd66fb2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82398f30-f32b-491c-a67c-6d5e51e9b169',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a33cee1-38e5-45b0-80a0-fd92175b26f1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a2d0293-0280-4a32-96f2-0254c8f0ee17',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6caecb0-5084-4e86-8317-6e5e153ddb90',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '03ff73e1-79cd-4fcd-bc2d-cc8404486916',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b02ce18-a69a-4340-ac19-257af1b17e13',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bcd80d17-67bc-4046-a20d-1487e0b8f34c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2f28cd4-083f-4f21-9077-8525d2386868',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49da5f28-efdc-4874-99f3-7757866ee084',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e96cf1e-3133-4ff3-9d67-a0f94cf2abbc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a69b7a54-c706-4af8-b4bc-b34e18827c62',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e813a6ba-33cd-4e16-8968-358f30a0d666',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5581d61a-d68e-4acc-8279-bb903a879075',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bdfb7519-6994-4b34-8035-58cf2b5a84dd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9fd5b7b-4861-42e0-8df1-312a7587b3b9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d99923a-e38d-4fdb-a770-f7ab61f98aef',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eb04466d-e4ec-4134-8905-0afbff2868ba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abbd7ec4-3fa5-4091-8eb8-1104c1c7829d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0dc48deb-40fe-4da3-94b4-e893dcdaa600',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0525a910-59e2-46c0-83d9-2fb7b7d35819',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db7fc6f5-020a-418d-8ce3-0ec5ddfb5ac0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a72b1407-f61e-4d5e-9fa8-752b6575f722',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0219400c-b57a-4eb1-8258-2e54339a9127',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c34a3f3c-ad5e-419e-9878-5ce90f5c96c3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '49461b54-4011-4c66-9b6c-e33eeb9449ff',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26b6a469-1e39-4f4f-bb21-f67e2906139c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a22d45b8-522c-4d2c-8dd4-ca104e14ef48',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90f4c078-a03f-4d16-935b-82215f549852',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf8aab81-cf66-40d4-965e-e8881e59336c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b02c803-b143-4d83-b0f8-e78f5f5326f0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd711bbd4-6487-42c4-b00b-89887a98d36c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9aabfc6b-4c4e-4d63-b91f-353a7a0c07d2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '14a14bdd-df77-44b2-8a52-4df0cd50edcf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da62888d-70b3-4eac-ad7f-eed357ca0eb4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e9b73b94-5e6a-4293-8bbd-e32f1a7f3ee0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ac314db-c315-4eff-b162-71703366a02b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0075ef76-cf7d-4c73-bb71-406d340d5e6d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4dd597be-84d0-43be-a256-1de95e5e1063',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9713ca08-43da-4ad0-a1a2-9d210ee23b77',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7549ad8b-6bab-47fd-92bf-5091e32da31b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '515f784d-f6a1-4438-9bc1-14c0aae69aec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7572825e-b2a4-4f7b-97e8-68697736a132',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd06d7d2b-ab6e-47b6-88bf-6256b4d55f55',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1c73ef1-59ff-4b53-9275-ab28728ab1b5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd86e21ff-6691-4cc2-8ca4-f3059d20e705',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dfcc1e0e-6e48-47bb-8aa5-c272adc0a154',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '01f635c0-c8f2-437a-b33f-3ead1be0979d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '701d18e6-bae5-453d-9e68-4c0520821107',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3cfc96b9-415f-4dce-8e67-986ab02da4cc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7425271-100a-4619-ad20-5fc1e4531a58',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '366b9895-9591-4400-bc41-ab7fdcae67b6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6996cf0-6c50-4b47-84c5-024bb02e31f1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59d0fb81-c281-4412-8de7-28995ad3a15d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08587ea9-646e-4348-9def-66dd796f5a97',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dca62106-c04f-428a-acad-df1e78504c60',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9007406a-7808-4572-9ee0-492a23c8f157',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db31619b-6bc3-4772-8327-763340dd7d20',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '208a8a4a-4272-4813-aa12-bd981d4b6885',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9acef8d-c753-4c28-9be7-8c78d94fe3e8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ffcd194b-1933-4154-83f3-045070f19bb9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f23c12c1-84c4-443c-a443-d60cb683f792',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '116aa874-de24-436d-b140-2e3390ff1589',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74aab646-73d5-4f65-a11f-cb4ae0581571',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5a1d551-573d-4c84-ac22-e2cb8a7a6781',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '93c5a1b4-2ae4-4479-8d35-9ae4d39ad497',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63259d17-f226-4067-b8c0-dbb7d927ee14',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59eb80e2-b84a-4311-aa8f-3d8440deb5d0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b10adfd0-089d-4317-b555-4926a347e759',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a6146f89-b06f-4d18-8ae7-641d998c8490',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a6214b7-9b62-4f63-83dd-c81a65d8c7ed',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '181c672e-868c-4b79-9fad-fcaae86021ab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a27cbd2-25a2-43b8-83e0-4b6aac0ceb75',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '59a9ea21-70a6-47c4-9622-5d538d5d1d2d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ac5eb54-6ad1-46e6-bddf-26e25a4c4efe',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3989ee5b-66be-4154-b2bd-fdcf8cdec7c2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7204889d-43ad-4a1d-8382-f1265422a953',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc7aec7f-7468-4fb4-b80e-657dfcf011a8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8432777-a13f-4546-ad8c-38bae133d864',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d29a908-a48e-4124-a755-f421d5dfb5cc',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2bf88d9-ef4e-4004-a104-49b727a7821f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b1177b3-0e87-49ea-ba9f-2a0679440edb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9fed991e-7355-4069-9b18-bf8ed8ef3706',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0972fba6-53ed-4e93-8c6d-8a4df69aa9b1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83d725ab-bde1-4aa4-8585-3a827af94a8f',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '24414238-efdc-482a-9699-2f244de5a686',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '607bf6f1-eaf8-4bff-91be-b2cd65df04b7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12d0d866-75ab-4b3a-b416-ea5b58d61d68',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e1d6a1f1-dfa3-4917-a4f6-3201484c531e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e552038-482f-49f8-915c-dd34ec003200',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b38e7e1-a052-44f5-ad76-47e6d3ba5333',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae899a4a-53e2-4cd8-aa3c-76cc9f6ffe70',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ccd9328c-c41f-4e0f-b67a-ed8500d18028',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '621a8df3-f9bd-4e61-9b4b-e404e8839bd6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c40b8918-ca30-4872-b05b-6fef58ebdd0e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fb435b6-9efc-4a1c-aa14-cfb3439610f2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19ff25b5-68b0-4973-ba2d-5314e94095c7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0524da7-6e6a-4632-ae04-5b650f5441d7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'de6f7e3e-7711-4ff4-933c-70dc618cabaf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9bb2e63-1325-42ea-bce3-ee88bb1347cf',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '23fe50fc-997e-473e-9ce5-52c903f5cb18',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2f8a0b2-98c6-471e-8f38-b9bfa111f8a0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f73721a-5234-4985-829f-de363991067e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1bbb891e-18f3-4229-8d28-ed2e28af6ae5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5f38054c-0a45-49d5-bf1f-427b0ae9a476',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b5b135d-2cbb-4656-8ddc-5ec49a807b0d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f43fdc3f-d49c-4905-8034-02a6e8345837',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd45d2927-4acc-4638-9d64-bcea40f995ba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd6ea3f9-5bc0-49bf-8432-520d6bf14740',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b6ba4aa5-3afa-4de8-8321-4eb18b4c8d7b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '667c6482-83e4-4b8a-b689-73dc90112228',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35925ac4-b066-421f-81f4-5619a152de95',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e1cdd3a-29a4-48c3-885e-39bc9977ac35',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21860217-0a9d-4f3b-8403-0aa4a1f014d0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '331e5853-88ad-42d3-a890-a07726959984',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3e044e3-ccc6-4680-b8c7-453949881eb0',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4982a699-21d3-4fdf-a612-41e4cfabf4e9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b053c1c1-e595-4b9c-a5d6-fdfb558f8b2c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e246e0e-8789-4491-a8e0-096308a8c61d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e03a1d9a-62d2-4e77-afa5-e4083ed2a7c4',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f19dc54-b28b-44ec-87e0-e36daf501be8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8515cf45-b331-48c8-a56d-7e3eb463b0a3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0a52b67-1d94-4bd5-9934-7fa0b9eeb50b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1312a4ae-013c-4811-8202-7b132c4cfafd',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51700b26-644c-4508-ae63-0cef6dc2d7b1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63d3de3a-8482-4028-b70a-fd1b7f640b10',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61239aa8-891a-40a5-aed6-fde82724d270',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dad93cd-57e0-4510-8989-148666d99cc2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e8cedb1-a6a3-402e-a3ca-b89fe5639547',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7ba26c7-3a82-42b8-9491-6a00467f8f2b',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '371c2473-e440-4bf6-a424-56109af7f1ef',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af3eb55b-5d03-4276-af30-b3c59eca7944',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ddf3889e-c817-4fbb-9e53-c2dd49f03f2c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7aa7b620-c065-488f-970e-13b09310ff4d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89c7a2cc-d76e-496e-9ff8-47b25a1dd82d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ab78534-44f8-4077-80f9-077e70b9dcff',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ba83a9c-ca85-4203-9048-883703aa23e9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5808772-d179-493f-8906-98735c8fdb8e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52258f60-622d-43c0-beb2-f4e08de6303c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e50f055-57a1-40fb-ae13-e9150c862828',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b9481f5-b8f5-4e37-aba2-e8453cfb1294',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd62030d-9744-4519-ae3a-0c6f85bc76e6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac7a384e-403f-44a2-9cee-c20066d6f019',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '53d3ff6d-1cbc-40d9-85d1-df5e43105e4c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66d47d10-ef7a-4b3b-83c6-971f3c01ef03',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '34ac3bb9-e17d-42e6-972e-03593e368995',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd379e9b-6b90-42a9-8082-fd072d9c1cec',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '225819ce-f265-40b7-bcb6-6c978ebea854',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3c7de517-c373-450e-b54a-78cb625bd226',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff46715e-a332-4de3-bf6b-ec38c1af7f33',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4503d86d-ffbb-45be-981d-31cd95a75ac7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e092d653-df74-42cb-8253-88a6b4f549a9',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3d06812-d119-47e1-ac83-26af5729cdea',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eca6a32d-fc0a-47a1-851e-b02445b3be0e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b4fa0cdb-3e3d-4083-9d6b-12b80e0d82a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3684fd28-1a24-443a-b9de-b4355728898c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d552a1d-c3fb-443b-a24b-6b9ba1d06ce2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3c4d99be-d386-42ea-af96-a8dd19d20893',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a51af464-ae3e-4c2a-85ac-f26d1b48cc2c',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '54c19a14-2a92-4b4b-a5e7-ce8b26eaa128',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07dbee0e-c5c6-4e49-a494-8e1359b5c31d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '899d2f2f-8be9-4e2b-a7b5-1f34e55d9ebb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df3482e3-e6ef-42fe-8e5c-c901b3ecce1a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7f9875e-d94b-4515-af02-dfb9b06bc91a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6212a6a-866b-49f8-8e2a-575c18ab0381',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd986f25-e82a-4c08-9aa0-b5e812944d1d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0154dca1-a9b7-4756-8ef5-a6ff4082d2d2',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b57ddf22-125e-49cd-ac32-c21a020b2591',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ecce0c70-99ec-47b3-82dc-0156ed95b5d3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08f5bafa-5109-4aff-8a76-3ec92c25aa01',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a1d9351-b3d6-493f-b51d-11284bb23309',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08f4d845-9fbd-4479-a5fb-4c540fd721bb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6909d551-704d-4180-b6e9-9c05da79c334',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '824cbff5-9a9b-4fa3-bc4a-18db278ee549',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '085f415e-c708-4a1a-b26c-68d2447556e8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95ce3354-b4d7-4509-8d30-0f8347a84029',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '423923b2-5201-4afb-8372-86fd4fb8c742',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80da6d33-d486-47ec-b6e6-45de9f9753ba',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6d79d0c3-6c35-4fb5-9611-5a8682b120e6',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a172444-22d9-42b8-81f4-1af185d164ab',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f43655fc-2d45-4bb6-8f7e-f0e8281ddc03',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c44161e-e712-43b6-b457-05303cb87d57',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fca9506b-f154-401d-93cb-705993500c1e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '504cbbc6-c4a9-46a3-b28c-f796b8d48235',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13ff614b-0111-4e02-a968-e9f4e3d23ca5',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c5a6d508-113f-4a35-a665-215a3f407d11',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3af477ac-6e4c-472c-998c-7a0139e3a708',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cb8d3c9-044e-4554-8f33-885c2c19fb1a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6858366b-9a0b-496f-bab1-df5414ee344e',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '82cdf842-35a5-4a02-b495-8c8da9621677',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '83a2c7a7-cbbb-4956-8a20-7eacf923de7a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd65f63f8-2020-4bab-95d8-5296d42bf679',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ceeca05-71f3-483b-9186-305645e7026d',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e6aa1ca-098f-4466-954d-c9ed57786fc8',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e90388c-744b-44ed-aed2-19a5c5729114',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0bffb020-3f9e-46b7-aa4a-c8682c5bad92',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d7e95eb-c3f5-4aeb-b0f2-9861a635c229',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '00090dff-a156-4f6f-a879-0908d25c1b7a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a073d36-c67e-4202-885e-93e9b3560e18',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2784440-d336-47a2-bed6-260d3fe041cb',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77669f3b-0a56-4704-89c5-d4096af0ea23',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd187377c-d1b2-430a-8f08-f286d7b1050a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6eaae694-70fb-4279-a5cf-37bd0395f54a',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '290af3bd-a861-4721-a00c-c46d2865edd3',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b46f66c-6de2-4f1f-b4b6-901c060638ac',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '16bbd4a6-65fc-4819-9b50-050a0eb32ff1',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb2d8a2b-4ca4-4951-9ad7-4508574e08a7',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a5af0ca-188e-4dfa-96d6-a09a80835366',
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
  '2025-12-19T16:08:42.551Z',
  '2025-12-19T16:08:42.551Z'
) ON CONFLICT (id) DO NOTHING;

