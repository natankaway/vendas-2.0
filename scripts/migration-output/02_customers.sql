-- Migração de Clientes
-- Total: 1045 registros

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f1676a91-407a-41d2-bd3e-dfbd9f0465de',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '938c45a0-9fcf-4f6b-9af4-5972b9f9b321',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39c29f97-e3d7-4fda-88f2-6f28f23b85e5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f0dd3b85-6baf-423f-a52e-9eb36b6df859',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'efb989a9-de22-4230-b18e-76dfd03a5c47',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cf1f85dc-73f3-4abd-b875-72e774cf01c0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1a75ffe-3339-40c0-a6b9-eb94271d4e8e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13bd82ea-e13e-4425-ba86-1dd9f6002883',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '72e508ac-dd47-42ba-801e-472808c2cd0d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c06cbac6-5233-44e2-85fc-e94e6953f4b4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35cbd20c-2f8e-4a78-92e5-1be07416c549',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f14058d-d952-4a8c-bd3a-0003f53545a0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '144707dd-8fab-4792-a794-1ff6d9a6a6ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'effea376-ee74-46e7-a678-68cfc54780c5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f39df42-5662-4cb1-b733-2c3c35e6f007',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1c87d477-6ea9-4e6f-9057-29a9217e1e73',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '542b14c0-60f8-459f-9771-e0129e0d908c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6c807929-3a0c-41ca-ad94-bf864e45a67c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1de926d7-3d82-4db8-b8c5-489cb7b6232d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '856cb16c-fe14-42b0-9776-19452805a4cd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5e824cb-03b0-4675-8ec4-0f47457478bd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c04e4d7c-3af9-4d1d-8140-0f61b07d4cb4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db88d038-acc2-43a0-bcc3-871da3d4873c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb8f74aa-2e2f-4ed3-b8ff-9b7e84b17eea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '208374e5-cd21-4568-89f0-8fc8ab706fcd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17960f3a-4a90-4c2a-a21f-02c9a6cd5201',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7cf4c09a-6ba8-43ff-a94b-0c9707c5575e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a4fc04b-abd6-4ed1-a9d6-169c6bd537b7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bcd89cbf-fd34-4cd0-8fab-3ccc85485b2b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8b8b43b-2d84-4620-8e1b-0f3e5abb7677',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5bfaca84-1283-4028-aa88-8222cc425b11',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0362097-44e0-4ceb-908a-0babbf7313cc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '79921131-7575-472f-9dde-b2bc1bb3f12c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8794754f-57df-47d8-a45e-16ea2ede089d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '061d7c0c-a490-4ded-a056-00a2dd2ec705',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51863a98-7a43-4207-a427-50b5aa99df50',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d52d37c-e0a1-4595-b5f8-b2fe291cccc2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd618690e-4a9c-4d14-b85f-77f0b6e9ddc9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '610ea7bd-9142-4aef-bc85-65d0007bf2b9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b9c1059-6750-45c1-81f1-afb4d819d5ac',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51618d21-2886-420f-b881-bfdc4e176a5e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4eec648d-cef1-4cfc-98a9-937df6441a06',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a86b28da-d3cb-4f91-ada9-b231ed5400a6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a327d4fb-7b34-49ea-8460-acb56bc972c8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f0ec29f0-3252-4f6c-98a0-0d9a554c919f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fe3512a3-6a63-4eff-892a-777663742de6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e775acbc-768e-4594-9f58-fb8c256e8f8d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e68eec95-8ac7-41b6-8a3d-04cad40f40fb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff2538ea-306e-48a2-b0de-5622da6d742e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4e02b58-a437-492a-a70c-a7ab186b19a2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a70dedf6-bda3-4048-8a38-7de32973468e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45eef5b4-3bed-45d5-beed-e774bcf2194d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f312475d-93f3-4fa6-b784-b16c8027cd11',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4b31ed0-6bb8-401b-bd38-7bde9399ab3a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '645644af-b4f5-4c64-82a9-01860eebaa09',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '753de0e5-6da7-4e5a-a99a-d7e4ac69ec0b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '92a6ba40-8503-44ca-a249-ced5a4bbec44',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '205f40b6-b255-44f0-9808-da5ace6d9487',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0946df65-6e99-4bf2-8b0d-b51afbd2b30c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95040bc1-3f2c-45dd-8ddc-330621ad203f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9220c977-9b28-4e52-9f7b-029832dfea46',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '29204b76-4dfb-48ca-b76a-2f35bb41249a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '549e5373-6a67-407f-95e4-1769e7eb4455',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b3bdb16e-199a-48df-90b3-b96b97bc1ff2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0658542c-3a53-4191-b373-05e930605f6f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '327fc2ac-4935-43b1-96de-345ea5fafb74',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45752f70-a395-4240-a9fe-7831f9059a4b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26a29e02-477f-4626-8bf6-10fbfc5042b2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0e122823-0722-4a02-966b-915e99b2455f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cfd33bf-9bc8-40ad-983e-f3ab3dbf211a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3db3be44-90b8-410b-a02f-6983c9d63790',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a51317b1-95ea-4877-9168-e8f89825313d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08480ec6-1d7a-4b2a-874c-86aa5339a201',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68fb6d6e-dcc7-46ac-806f-e34d2748ab7d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bcb5e14b-bb03-4de3-a6ee-a005b16b2080',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3f3bf4e-15cb-4b2e-96bd-1b34f5ce9372',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd66ad5c-096d-4994-8379-c724110e902f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '88903a37-578e-40b9-bd99-2f71d09151d0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '61d8e4b0-baa8-4082-b97b-35c29abac134',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41672d75-1107-47c4-9c78-3a51475a74b8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7ad787b-e309-4327-a466-e51d93f66250',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a9dbc1a-4025-4057-8602-9635c7a567a1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8755ce5b-0931-4601-b0dc-237e40dc7e0a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f99ec08c-8b29-4c5f-b6b6-07e04b3d6a37',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a0a645dc-495f-4eef-bb0b-76f1383b7623',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66da8457-f8d3-46b9-9f2b-9f9224552bad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c118e70e-f5f1-4df9-ab70-e39b48ea9f46',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5cc5c953-668b-45b9-bddd-4a58f398a866',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '46fd453a-e316-4dd1-99fa-ea7f6bc0db02',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e45a34c1-b5b1-431e-ac4e-1aadd587473b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19870b91-32a7-4e87-94f5-6d953d21fb26',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2922a637-2f1f-47f8-8f15-10233b4ee21b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '48108250-61d5-4138-b559-93421f29f260',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1d4a974-41de-4ad8-b9b3-a0a06dc93bad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7cd1ec8-0be5-444d-bb10-7befa1d739d1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87f85971-c723-466d-a786-4d532a9a6aea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b2dff59-2aeb-4abd-8497-03d05b982461',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd777baf3-8425-4b66-a64f-63b4c6203beb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f7b4e1f-36f2-4b85-8811-46d40263fb5d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7f51ae94-c834-482c-9a47-79e83af0d57a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '25e46119-6633-414b-b4f0-549c0857773b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '606d4328-7565-4cc6-bec0-f27dbaa1d1f4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2659e1b6-1b46-4f42-b04a-3c4fe20af00b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '71659bde-dd22-4898-b626-8cc684d90875',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '593e5626-53ac-45e7-b98c-3aabdfdf8b33',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0c8fab7d-b5bc-489b-84d5-7d1e356b1e8b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '518e4b5d-0876-4e9e-bc88-7b94bc590450',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6a9eb3e-9814-48b0-9098-08e5e4f65291',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db971f6b-024d-4d97-ae15-3612c33785bf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3122def5-df2b-4766-97a3-4f861a1f82ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fdeaa15-e0f7-4d88-aed9-eeae30091816',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '97b56c58-a431-406d-b7c1-13cd40af5a5b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2c0ea1a-d410-4bfe-b8c6-2ff6954ab08b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f07358fc-1eb2-4f1f-bbd2-2b68e7690758',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dac5afba-c581-4764-a293-8532631eedde',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '711187c0-f9d7-4aaf-a6c6-49d29073713f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e99c6cd-1804-443e-b8a3-e6a079984223',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0bef452-22dd-4565-9841-6cc27902fc08',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56aee6a0-00b8-4d98-ad2d-2f9de5408235',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ca63c7d-3e11-4683-b684-1a2ce7ee3e7d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7e9e116a-a424-495e-b6e3-3a24b2914d3c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ae87860-59ce-43b9-ac9a-366b26f49a8e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86fb5096-4f47-42d2-a042-5f394cacbf52',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd097eddc-fad4-4ac1-808c-e732dd46f427',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '518e21c4-14ba-4c70-97fb-f8b436e82a5f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1788b689-4bdd-4dc8-8457-a32564b9d0b9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff72b4d9-67cd-4285-bbcb-dd39d6c23024',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05aa5faf-c216-461a-bd36-149b1024880f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b509fa50-007f-4e3c-a709-ef21e3157267',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b39267b-3c12-43d1-8b00-d10e4fab8e78',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eba3fab0-7ecb-4905-b3e1-14e499cd9ea8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3d799b9f-6347-41dc-a0e6-4935845281c3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f277f06d-6674-4d18-b1f3-61f3aeab4e92',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb1eac9b-5393-4a27-9ed4-98542839850f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6aed756c-f5e8-4d23-80e7-a7888ac2db94',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '44b0db0a-520c-4c42-8989-09c21685db76',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85a1b154-71b3-4f09-bb89-87b0c0ae7dd4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f16908e2-d720-4f55-9091-ef9df7206086',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1aea2546-1b20-40f8-bf4a-0f4e5bfd0fc8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9471c506-d69d-4614-982c-a51731e00934',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '28475db0-a479-406f-a857-0ef7bed503f9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f97219d4-7b55-42ca-81d8-f8125ece7f4d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3f5185b-e88d-47eb-bc21-a3b516a0b1a6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1eaeff2-ba61-40b1-8d99-38ed72a2043e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ead377fb-6134-4323-8b7b-ec62ab88ee76',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a862e962-18db-4ad6-83e9-bd4dfb51cb8f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8cc07f53-3ae5-4ba0-a38f-49303f42dff6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2cd8fe7c-bc50-456e-a627-e80ca2b70ed4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd64cbf3-1960-45b0-9edc-35e8ac576dcd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e2a7e9b-f10b-4ea1-8f95-07f09333af9c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '588059f7-ecf9-4892-bcbc-5b05fcd92fca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eda17642-c5bc-4890-b79f-d44f6c88c131',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6412545c-3fa4-469a-9c4a-ce9f5907d865',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c19d70d0-bd41-47d4-b132-e9b40546b894',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd719dd32-be99-4257-b81f-d1819fba2823',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2400fcd8-b4a7-45b9-93e9-2a842c9fbb0f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37f749be-8789-469d-b20e-f82c27ab6447',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '524888a4-6a83-412f-a4ef-146580c668e2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8d517cb-b063-498a-96ee-d3205ca03ab6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef89686f-e905-48df-b680-d02799cac1d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '14462d36-82c4-4d6a-9773-cb6106586f13',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aad5cc07-c599-48c1-be7c-caca9c3c4f5d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ffe93317-5b75-4c9b-a0b6-a620ca28aec0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7b180cb-fadd-49f1-a1c3-32417af10554',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6baf01e3-27dd-48f7-abfe-a3a6c9b8a3f4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bbb19b12-9d88-4084-bcbf-f7378140f638',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '94df5078-ae46-45a4-b109-005bf39cd471',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ff06866-0c53-4c59-806f-f6fa75223e07',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '908a53c8-4279-4ada-9f8c-9f9456925398',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73e1ed92-a695-4e1c-923c-21b6ab3f42fd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ae83a49-112f-4a28-abe0-ae4084ccfbae',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b150fc5b-6830-4957-a9b2-11f0b6962b09',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68db5859-eb53-44c5-bfea-b179dc898995',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91edb0ac-2fb5-4700-8c1f-e991e500fadf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd3a77a1f-ae75-40f3-927f-f36a4ad6af99',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '94a948fa-2f53-4d15-a134-024ba9c20c48',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43f88100-7754-4be3-b033-33641e191f5a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73a8639a-c0e5-4348-8b65-dd4d9215c8a9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'efa831ab-45a2-409b-b42a-dbec46225881',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9314ca8a-7e3e-40f4-b341-73c3faed5a29',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '711900b8-0bce-4ea7-bab7-b300e19bfcba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a6ae12a-69d6-448e-a670-d205843a3bb6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b960263-0cad-4f4c-8662-a3311af2ea7a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb65dffc-3112-4647-aba1-9b03c9b47751',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '059cd270-fbdd-4407-b912-98d487650d92',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e0df5fc-9b12-438e-8d58-42642959146f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08811f98-955c-456f-b79f-3916cadaa312',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5e35c18-b9e4-40dd-bc00-6efec3b2a539',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9707b558-87da-44d6-a2e6-17a78531247a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8a0de511-dcb4-430b-b9dc-e46233bd65a7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c29d2812-8646-4b3e-a1c1-b213f2809aa2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ecca98fd-5c15-4435-99dc-f28e5f2aa58c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '85182de3-435d-4d64-8af6-7d4d4ef9dd49',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4cd0e1e7-e39c-4579-abae-b27399511ecc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '020543ee-bae0-4ae2-a2e5-b20cdf72c6a9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd32fccce-46d0-4abc-b0ed-a08a50346eb4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '161f0de4-723f-490d-8a4d-ffe4b7426e6e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '740ee584-7e88-4f9b-bb35-d05baf0bddac',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf1e808c-368e-4c26-8020-d8ef666e5efc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '60473b13-266b-4c55-b859-e9f60ad4e36b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad92239b-e4b8-41ff-a424-21ef3b3a45df',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c3efccd-2184-4fd2-82bd-8672def03d6d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9cee188-5375-4e09-acd3-876c9cb886af',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed9da83a-27b5-46e8-9f4a-4334bc197c2c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ddba8bc-06d8-4881-a3fe-6b28365baa89',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd484c281-e9ba-4ad6-b952-cc48ea1a65de',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '832f60e3-02a1-48f0-b1aa-86396dc4a349',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7193d95d-30d3-425a-948f-d16ea5156a07',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f774997d-e292-43ec-b936-7d48a4b65316',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd01b612b-3073-476d-a11d-b97cdfd4a47e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a82a6f2d-330d-483e-9be4-7a3772e0bc59',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea82c037-6f9a-473e-be97-96ccd4c2334e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd060328-13db-4098-8a20-5f1d3b1f3e9d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '86d22a6c-70db-409d-86cc-06547c74f1fa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8310dfb4-275c-4f59-94a2-c1b368580ab2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7979124-3d0f-48c2-9856-7fd2b0d417c3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e50e4246-84e2-4271-9515-3452ef21ae62',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b717f98-9a7c-48e8-b229-1de4b6485a6b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '42098f7a-cd49-487b-810a-128bef369d52',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cba6e37d-0aed-4e0c-8802-2c6049271c8d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1990ca15-5bee-4ede-8f4d-5c789a180bbd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '087eb02b-8af3-4227-a7b2-2b5883000a51',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '921b91b1-7d54-4856-a979-a38dddfd28eb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '35b42095-c347-4d5a-bb1d-fa38131e5c4b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77a0a983-e635-4b1b-886c-ef934ce6e6ca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1748f2da-eda9-40c1-9a79-8b08803e5eea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc608e29-2e5c-491e-b7b8-d1f4702d6ed6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4c87116d-a79c-4807-971e-062ebf18f00b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '334ae171-bb1b-4d5f-9e7c-95ea04363d66',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7d34c50-04f5-4eac-b0a1-4345ca7c4763',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c769bfec-bc5a-4d92-b35a-025d7492acc7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a73768f-db23-43ca-9921-ce457735c46e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3df2eb19-e165-4537-8e38-2ac36f7aa08a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'facda9de-609c-40a4-ab87-6c6803ebc46a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc536dbd-b57d-4bb3-a46c-55a8edc33e8a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aafc6241-a88a-486b-a880-6841f8250fa3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8da18806-e2f6-458a-a8be-b70e57dc48ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3abc148a-18f9-450d-bd97-1b01f7064b1b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1369619b-610f-4590-a849-ab34de1a0e57',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '252a8ffc-f17c-405d-b05b-23028547f4c0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d09eee9-bcbf-4fb5-acbd-70bb396b1aad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '656bd092-5bfb-4d58-8faa-ee2721f029c8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'acc5bf48-293c-4bf7-920f-227519554c2f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2717a810-e0cd-412b-9cd8-b5152efceea7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd9991d3d-c8dd-4903-bff8-c3782114d50b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07c1e5df-9ecb-4705-a68a-bafe6b83c9fd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8096dce9-dc38-434c-9093-e3986f82bbd5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6670d672-ae4c-48aa-9327-1f274a5a3ce9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e34c3e9b-bd22-4922-a8d4-e891177e363c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed62e3a6-c04d-4855-a51e-9403615367af',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62a2e0af-2d83-4a34-8676-f113aacc8b43',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0004f5b7-5d96-4f43-9163-f43c79db09cf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aaef96b2-5770-4747-b013-c20f6a9c38cd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '08f9b852-d1bf-45f4-9ecc-f32167649586',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a70f7054-45b3-4203-9b87-60b158211092',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4a5fb0e-5451-464d-93d3-50bac3df9f4f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7dcd398-1f5e-49a6-87d1-6934d9df59fd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56fb1af9-c0a5-4915-9152-eb18304f81d5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '441dc829-cce5-4445-9e55-3afdbdc7bd40',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6c5773e6-0a81-4128-b26f-a078268e1f5e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cff55eb3-8016-4afa-be42-f616c81065a7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'affa37f7-19ec-463a-bb22-2470e1d33bce',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2a0b78ac-00ce-450c-aca9-09cfe022cd07',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '78e6dad0-99d3-4a18-bfc4-af059d4daa82',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0a34ce0-7d03-41fe-96c9-e2fad4d90486',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8fa8f485-40df-443e-8b63-c58d140dd6bb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3858add0-c284-4141-a317-7b77fb518138',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8c99c5eb-81b3-432f-ad32-4d7aa24d5edf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '56705e5d-a2b1-4c0e-9342-5e44b5a179e8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3979a9de-c631-4f6c-893c-3cc264701338',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb476aff-5c8b-49c9-878c-802ab8db1474',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e3df3304-dfd8-4723-ada9-e5fc20d61bd6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b87ee01-a8bc-4703-8403-fe576a42fc95',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47d6b49a-d111-4849-a49a-9885b3d404d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '54943e7b-2426-414e-b283-1cbba6c27d92',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0ee67011-9562-4b07-8475-e8597d80f242',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b239a18-133a-4d68-9837-61169374492a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8061d772-f959-4fda-a6b4-31a4b058a81a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2df6851c-4bda-4af9-80ec-b4f78643f548',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ea254d7-cb5b-4193-aa3a-60d74434e7db',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '607e63e8-2db5-40f1-b830-b20243c7900d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd93f808a-bfe9-4aa9-9b8d-478126f7c31d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50c274fc-b63c-4812-9260-c6c365ec2d7e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c297c7a7-a0bc-4927-aefb-c37379d16003',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ace650b-c5c4-4f4a-b416-cbb5f35ed752',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb6e8ff9-ffaf-46af-b4d0-b2b03d940cdb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e905d63-045d-4a27-b2fe-6e1dd9f29830',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2373d5c0-0a84-4de1-a2e2-f672cc82b295',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '554b9496-f8d0-42e5-a48a-b616460d1e7f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c42d9d2b-2c72-4c66-a843-c1bcca6d5239',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b44e9e8-bc95-4799-9aca-4693c8a5cc4f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bedcb608-9e49-44c8-a606-5d97b985b744',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '04d45aa1-e5e7-47c2-be68-16dcb3fb8f3d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5e58245-04fe-421e-8a3e-60e04ec3e80b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4383ce2d-3fb1-41c7-b612-8ef46ddb05f7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8cb4f2de-9c7a-45a9-b5d8-670876bb2358',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b89dac02-2635-4e25-b540-48717e61adfe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd3d45931-c3e0-4f88-b7b9-71ab04ed301c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea4c1237-3e02-4d07-9c86-4da171452885',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da242060-226d-4fb5-8e40-9c186edb8c66',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b2fcc6eb-9770-427a-b21c-196738c957ab',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a2c9ae0-220f-492d-bd53-93fb04872ebe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fe522ce-0616-4668-8dc1-e2d29da6998b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a75c352-1b80-420a-8a03-ed15cec9363d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99bc1f82-ab81-41d4-98da-984d714968e4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1595306a-844b-450d-9eb7-c17791845b31',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fc029b90-8028-44d1-ac06-4784044f086f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad86849b-be47-466f-9c9f-8a88d7c31bae',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bfd21fe1-e80c-4584-837a-7421da9a13ba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a4734eb7-32c1-4e61-8e93-d6951e4c20c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aae17c31-48f3-430d-8ef2-a31fe0e496a0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fa814ed8-44cf-40a8-9cec-a89a94997c60',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0690179f-3b8b-4536-b356-baad1df369fa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '913d47de-0af6-4c28-97fa-16e88f21ec7a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '88197ffd-1de5-444f-875f-90a62a911ea5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f36ebaf5-fff5-40d3-a1c8-3dd5b3f83ada',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad9ac09d-6ade-45e0-bfd0-c55a34440c87',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '57c9c1d3-d678-4164-92fc-ea091f1a4e52',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b7562bb2-5788-4885-923c-753e30aa9888',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9fa1ceb9-17dc-47ed-a8da-7ace5c2d0ec9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0e8798de-9f89-4bdb-96f2-0f518d05da2d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6503dbdf-0acf-4dd1-ba28-c292e2b586b3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a4208acc-3a9e-43bc-ab57-d907f56fd103',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12d41f3d-cabf-46c6-8a37-1c26d4cf2759',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eff8274b-c98b-487d-b7f4-04acdfe4aa78',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ebf5b9a-41db-46d8-98a4-b78b9b6bdb09',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '762f2c91-b632-4c3a-89aa-19d600d2f196',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '777e175a-088a-4b0a-abe7-887a47b2504f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b765d89c-624c-43b6-8489-a64a5cc091a4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2530e3ef-b543-4bea-b2ef-84eb6c400184',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '03cc7d82-6698-4149-81bd-e98053e2c89d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f239b3e-5ac9-4a61-99a1-06c23bd3b219',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd289a4f-f0ce-420e-9d87-36e9036dd3b8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43deafc8-6cc7-43b4-ace0-7d5ba20423d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cf95f33-2e37-4176-8587-528514fac9fa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43e414d5-3514-4017-b3a3-bf09f537989c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '31f78d8c-59f3-4192-9167-02cd87a71cf3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0c87a81-6e8b-42bb-9724-0d9f5305de7c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '014d282a-321f-4d58-ae62-6835f2eb07e9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e6981c4e-d4ff-4402-a11d-cabe1e72c03f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b302d375-968a-4d3b-9cfb-ab6a21f37ebd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f81d7255-3acd-4433-b58f-edf42ad5bd83',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8087370a-75e7-4362-a545-28fee789fd26',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fa513dfe-43d3-4dc5-8606-5c86f29479ee',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a377dad9-64b2-4f45-bc90-38631d85006a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17247279-6f08-420c-b717-cbd7e5822cad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2df0b4b-89b5-4996-8134-aea7731f818f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09c686da-165c-47ff-aa2a-a3573ccdea36',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58ead004-2bcb-410b-99e7-a74e748eb359',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8a23ed66-6764-4ab8-8759-ee0ce0daf6f0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9894bc7-0d80-4f98-a890-441982ef4278',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb6c072e-8ad8-4619-b9fb-1c2bca22159c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bf6ca20-81ee-4458-ae71-e266965eb52d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c13857d5-6126-49f4-bc7a-6f1a0b88fd71',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7db0f5b7-38ee-4f65-852a-01ab9f483710',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77e48811-d305-45a8-907d-3acd7c4b8453',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c635474b-ef08-4f17-ae76-b29d72243b7a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c5bcbcdd-62cc-41cf-9c48-69d8f3297b6b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a9e55c7-825e-460a-be8a-a003d8c9c43b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a70b7f5c-ebf2-4a69-b57d-e59bc4dfae08',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5c49f95-bc4b-4980-aff6-2d8479af2da7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9d3fb34-52fb-479a-be35-840f17e91166',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4b8b640-cde1-4f51-95f3-f9d2879ab21f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bbcd8171-8069-4e6e-aeee-ec2409b59062',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b2435f8-fea3-4596-9b90-66ca70d7e7d7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc22b7c2-d911-4083-9b15-043f68bd1262',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1532a4b2-4acb-44eb-ba1f-5a1dab57bd0c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6822b44c-d023-423c-8a88-996ed9228d4b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c69dd7c-594b-4ed3-8c0d-11e01ccb6f6f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2080277-fd0a-4156-bc78-8bdb8bec0d41',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f128b7be-7e72-4efc-950a-464d4db486f0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e966b758-c32d-4cfb-9610-4b2104784919',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b7500919-0063-4a85-93d8-bca7f1402f43',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63fd5e1c-c41d-4c16-9707-5191ee1f3b99',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '175efd1b-9954-4a18-ac6e-e263685f14f4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2ad2bc3e-acb0-48aa-a4f7-670850dcd1a6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '960049db-27d8-4210-8f50-9dca2b2e52d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f806404d-7b17-4b33-bf70-bd485ba4657c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a253b94a-03cd-4d8d-9edf-b6adf4ac4445',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f1d60d36-03bb-4936-bba5-4ac82608b283',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8346da3b-d126-46b2-aec3-079a912c8de5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bbaabb8-aa61-4512-9756-df6ce0666511',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e16cc8ce-a67a-43e2-a428-45f769a377a7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e2a5dba-b394-4eb1-8be9-9dea2aa14657',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8585cef9-6907-4334-953d-d5eef35289b2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8026bfcc-c138-48ef-aaa4-2a4b0b92d1c6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7dca84e6-b163-4071-ace6-4e308e929545',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06c10f85-6e35-43bc-a84f-d8b3cc03cb4e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4969d16-dc45-48ff-9b4f-bfdb92ff3627',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4378a607-05ef-4949-9ad5-0c363034bb40',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af7f53b0-6586-4961-8d39-745e4eb00e11',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e8504e3-c1e8-4c2d-954d-4b1e98bf2f33',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63bfb3ba-8292-4de0-b2d4-1bd73d0752ae',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7e8dbe10-00c9-4a0a-8acb-af9006ea4ff3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '642e7168-fa7e-4422-88f2-dbe1362450c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6d64c51c-6d4c-4df2-91e5-dafbadf5a6e1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '04955e83-c828-4304-8e1d-66f829bd470e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '39b0b59d-f123-4d69-96f0-2f94c93eb77b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '493936bf-2b54-4abb-95b3-d539f91f5013',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9067dc92-dd8c-4232-b35e-f6cc1e9fed67',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd43f6d92-15e6-4436-b933-1d6c3592bdf4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '970e21d6-8bac-45c8-bf52-45b053e3b7a5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6880539e-6a9e-4eb8-b5e0-98a049c05560',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f453058d-42d9-49b0-b112-b6e7b70dbb1d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7ed9b00-949d-4a26-bfb0-0b6b9345cd12',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91b7eaac-ff84-43f1-b527-69beeefc9609',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a3b15ce-cfdc-4efc-88fc-ec14842248c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c6328b84-a304-4613-bcc6-7d493e20ac83',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e25080f2-99fc-4d5a-ab4c-ae62188f1569',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e6a7fc91-e1a4-426d-a0a9-aacc7c400513',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ddc5c569-3fa0-4412-9a62-c504a6148597',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81d98952-e7b4-4658-ae71-14d09b5b8444',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f11bf3f1-6acd-4b5a-9eb5-1bee785250d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '076793ad-4970-4afe-a58c-29fdb4b3a217',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0f58a72-c503-4491-b398-fd4732a5c6df',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cfb9cc7-56a6-4752-b171-87410440838e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5ef3b29e-933c-4800-9c94-22fc812cd4a7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5fbbb1d8-6c57-4f18-bbf2-f5bc067da26d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '84a48004-d4e7-4ee3-9b7c-e16368a1594d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12900f4b-1045-4689-8070-479d20a70111',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ff419c1-744d-431e-bba2-caf1b38338b2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df23170d-033d-4d0d-b5e5-b58b221dbb30',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bdd295ed-4647-4371-abaa-463a04bd64b1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f819554e-e8e6-47a2-8596-79a22bee1322',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9fd4d4fa-b892-4ccf-a03e-14e36849aa3d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4af3c11c-00b6-47ca-91af-5cc78d409241',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'feb81167-42f9-4bd9-b582-fd6cb0ee37d0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '36b3f289-37fc-44c7-96db-d1fe7e695ffa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2154c43-0151-49be-81a8-1d8555ac89ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '922ea0e6-f26d-42be-a094-3605d38be949',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80bc3ecb-c5cc-41e2-8e27-240f4dfab0db',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4dff8580-288a-47a1-86b1-07a539c9c813',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac79ace8-d4bc-4695-8884-6967247f3353',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '615d115b-487b-4c47-9f00-4318e6a54b51',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '280cb91a-6948-405b-a48d-e549117f0de7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c1223c4-7da6-4595-9811-32890bf9f7f0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c2b5990a-7acf-4cde-83d9-2b32dbf44ede',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e42796b-e960-4bf1-a5ff-7655f0f9f1ed',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5742a740-98fa-4bd2-b22a-fa2c994a84c4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f7003812-0d58-4321-9117-50c43fff3442',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4a515b8-2cb3-4d71-ad0c-334d9ecd2f37',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c3de84b1-1a86-4d4d-a8c4-26997f90b1ed',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73becc40-6eae-4181-9ac2-4c2aa476f6d5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cce734f9-5d22-451a-8ca2-2dec1bf2b5e9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c90845c9-a3a3-49f2-b73c-2e8aaef4ebb9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd05973c9-14eb-489e-bdf8-fc504eb5e679',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b2c2790-74e9-42ab-9e2f-c7e554a0c528',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc590d19-6bfc-451d-a9b1-4a228f8a66be',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21ca3a2d-8b14-4227-a746-2e606fd802f1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '327b11f8-68b9-423b-9a49-0a986f9363d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad876e67-79bf-4843-a5c7-09184950ee31',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99b449b1-8f50-40e9-9d6d-46aae377025e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f27752f-b776-45dc-9333-2faa0e5ab4af',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a494b746-26f0-49e6-9509-0aab48702d25',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '729c2719-2c8d-441d-8fe1-081b1374b5df',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd99d4154-75d7-4881-9c94-a1531b4d0799',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c07541fc-e5b0-42b7-9230-147812357beb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ace12a2f-d963-4ee8-ba8a-b741af4344dc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '839633bf-f6b4-486f-be56-02322179fca0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b27acb9c-cb80-435b-9054-7c2aef38066b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '944af3e1-bc3d-44c7-973d-8e15fe1f6b80',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '725a019b-414a-4388-971d-293bb4aea1af',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd3b402a8-1988-4fb1-88d8-f2d9c20b57ef',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62987132-9fe1-4804-8ea1-864f29e7ddb2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cec7d86f-7c30-4e0c-9d0f-57e5f25dc71c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af63336f-1d3e-4924-880c-5daf54ee693e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '670a7719-70e9-4e96-8b8b-716fe8766d23',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '71cd66d5-af96-4d48-ab7f-5a0ccf6c5d51',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '71c583ed-5fe5-4a41-b3de-1bb184dfa19e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cad7cfe6-739f-4339-92c0-2c772f374c53',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ccf3b54b-49a0-41a0-89f9-17bb5957cdb9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '014ffbc0-2e12-4e72-82dc-f2d423ac68de',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1cbf8a2c-4b14-469d-bd9e-69e731af2092',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '63d7ee2e-6b10-439c-a2f2-e1ec6c2c52de',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b0464e2-c15d-471a-95cd-18c926cae184',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1215ec93-4696-4c34-a44b-936c010389ed',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d17a155-b789-4a60-88a0-70aa56fd040c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '904ce0b1-fb45-43af-8ff2-b4b03b87e74b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a44b4b8-dddc-4392-a235-966a9d421d12',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dbbd198f-ad08-4b95-a990-e9e1fafe7b7c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e3bb80fc-1da8-4848-8cfd-d875f81e0bf2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd26c6da3-002c-4909-b2ba-00d3a7558b8b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '080cf570-f496-4b46-ad38-5b6b8f6b2be5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f696c44-1d63-40e6-8f69-ee076c44d8a7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fd5e9630-26e7-4c8f-9196-3b719d217b23',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ab58795-2756-40f1-b229-afcdb06aa166',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ef880a1-935f-4e92-86e6-cd8ad68c44d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e13cd45-41b0-44a3-af72-d6b8dffbbd9a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '002da8ef-edb9-4041-9533-3d45caa93c6d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aca35afd-fdd7-4503-886d-f4ad55d226ec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22b6266d-22ce-44d5-b490-fe65aa0e959e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b31f354-6a60-4754-93fa-bc8426e64d46',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '199add0b-3c07-41e1-b63d-1e90737ea167',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7e3ab791-9845-4fc1-8b42-5b255e41c0c3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5951e91-a6a2-45f5-9842-bd9ce46ab497',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '416f841f-be91-4047-bc65-026ee1bd7e7e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '702e7c1d-42ca-4c50-9069-eba7c1567ecc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b0b83c31-b764-4713-b4ff-997a6aba6e59',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5195d880-6d13-4579-9831-ebb88f74c4aa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f04f8c10-e26f-497f-8a00-72105940d06e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '36f37548-3664-4434-bc27-b67cdcb3564c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6cd6a5ed-c4e7-43b1-b293-31f7867a90a1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8fa77486-bd8d-482e-84b7-647b810eb0f2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a8cd3e8c-6150-41e7-9ebf-14d8db971fb5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41a6f660-9159-4b88-9e10-a3912044e41c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '73913817-b236-4921-99b9-3ed7ff15bc9e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '28d2d819-6580-4bf3-ba13-97cb4938bd63',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb8f01b3-754e-4d46-a26d-1e8dd32a4eb4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8b9d1fa-bf18-43cf-8416-b7f2260f763b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a89c108d-bbe8-4aab-990b-07b3b5f8f3f7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '999a73a3-e4d3-409e-972d-ad0ae44e4110',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df558f98-489c-42d7-a9f3-cfce8d679a8e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a44054d9-c61c-4339-8474-e75739384533',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be8c9b75-d635-4b74-9323-020505d98f53',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '292c187d-3593-4368-9d92-e21febf91dea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f5342d49-c9fc-4ace-a0ed-c3445ea23d39',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ec53bcb9-887b-47c9-a910-854f96b74355',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db81f43b-8ab2-4dd0-9d8c-c2755db04657',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '25c751cd-cc31-41d4-a153-b9f1041f798c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '653ef300-1f2f-40bf-9bca-0397a2f334dd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb413929-a922-45f6-93d8-68ad1f0eea46',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20664447-92cd-4aa3-afcc-bf1fd8f4e00e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3016e13b-f665-4aa8-b65d-ec368b7da840',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f09b88b-b875-4eaa-9d05-8e6e8530f3ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a02403c-4e92-40cd-8668-09dbc806c02a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd403540b-4966-4ac2-bb0e-5d3a779b28bc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4519bc15-8be7-468e-9528-d10a003f15ca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce6cf7bd-5615-4993-bd5b-67a3f7f124c8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5e917ed-2d66-46a4-986d-5d0a9eea3421',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'abe23b0b-2aec-4b00-a1ea-60e4d258fa20',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '431fd52d-eb28-4f7e-bbf9-d7bf0a2e6f77',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f3e5401-3f3e-411c-8715-88e741c845c2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f767b407-a612-4111-b33c-77d598a55670',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0c34cc43-fc90-4d12-96c7-10afbd68cd14',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a6fcc6cf-c33c-406c-9c8d-db1d91e50f85',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e1530dd0-a475-49ae-9b1d-c247492e7717',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e034aff-49d3-40de-8c08-73b2373bcda8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '81dd4bef-206f-42b2-b1c4-46c7b4a51f02',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8ee06c16-c982-4841-b3b4-465139c9f086',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '630869e0-65cf-41df-9eb0-32c95a24b913',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ad99c39-d7d0-4617-a95c-9e4271366c5d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e5f6230b-fa0a-4e36-870a-4b3a670a65f6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13df1f71-d0e9-41ec-8794-216daa89b29b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6a10cc9d-3f00-4ed7-beb4-c8b00bb890a6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2398b6f-3106-4ce4-a6ba-d84ae607b599',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd307b77b-3dd0-472c-9f97-6153c7d462aa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '612f7a96-003b-425b-984d-621d8e0eae63',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e33e53bd-6f04-4043-9a46-69ab30379465',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '41a55f3a-ce2a-4946-9c18-badc43de1c1f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3a9326d6-d647-419e-b0ca-9bcb3168b59a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e1282bd-aa6d-44fa-a3b3-1002769dc8dd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '05bdf7ad-c2af-45b6-8668-ac891f8e4663',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8db4bd95-9b96-4aa6-b0f5-65d4018566e1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aee5ab71-dbd6-4055-80ad-01292e507633',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9214773f-2561-45a2-90ee-6255040f50ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '301f66e7-1d8b-4bf1-8169-5a1844592776',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45882abf-d375-4398-9f88-deb7754ff49d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6f6f2728-8f5e-430f-b313-8548959ce0bd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf8ae429-5b49-41db-9e53-08924d26f78a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dda992a0-29f2-403b-b8fb-160f367b57a2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bc33274b-e51c-43cd-a9b7-1fcdde5b6f4c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b1a991de-8a1b-4da8-aff3-d1afe7f24aa0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3035b723-a8e6-499f-bdff-7e25ec7706c1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2d3725a-e377-4141-82c5-0a004a3c8803',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '645f3a20-bffe-4671-976c-4533e2592e3f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '43fc29b6-7702-44f0-9f56-fa17281f443f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f10dd7cc-0f2e-493d-9cc0-eefa92baf238',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3bc9e84-0157-4973-9fc9-e49ab6ad4e17',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b2369ac-a466-4c1e-bee0-4d0ee6096666',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3c521a30-b3d9-4937-b48e-ac9e7dd29964',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce7483cb-d896-421f-a43a-1ba0a182a889',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f15d1adc-1341-45dc-9109-1c3088df48ad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '840d2d78-d549-4038-99e5-f0160cc7c770',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8606e6a-38eb-4c75-b5ba-40dd53eb85e2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e35c6ef-ea66-4afa-8d68-1428c901d50d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '69c6d065-ff57-4325-87c3-8d62d248ea1c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '32df3a99-a6a6-4763-a9a3-39bfcbf98bec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '04a6e0e6-b82e-4891-86ce-46a8898eec52',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a24dde01-f8b0-4ac8-b9ee-92346520b812',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e0f4fcc-98d6-4f24-84cf-1d4bb15a304e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a79c1582-ed35-44e9-9a73-f6765755d8ad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26c970ed-0f2d-430d-bfc0-41f70651db70',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '07d0f8e3-f882-41ed-ad89-60eb4c6c2dbb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd7bd4eb1-2a31-43d9-a1ad-7e9b02af9408',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e41a2f5-039e-48c7-9a79-2bdd3dac3628',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fab55107-834e-415f-8335-04f2a032d2dd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd4c167ae-66f4-40ad-b57e-429886e79408',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ec4a0ffd-b25e-4811-84a0-53be3d06b285',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a57a47bc-d534-434a-a7c5-026814d8b856',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce39fcc4-50c7-4594-a774-38c3dfe215ae',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50e8793c-e33a-442e-a4c5-e2d0dabe3ec1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '442b33d2-4a1e-46ea-94cf-71068605a708',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c85201a3-f488-4c0f-9987-27d4dbbc6bd6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c7393dc3-1477-4253-a380-aa155e77f5ac',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c62b8d21-02e0-4661-9fe2-f31c847dbdff',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db53c39d-7c08-4f94-b13c-1a8a96a30bc8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d9947a0-240e-49e1-a2a3-97c4a49eb03c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f214b1d-7792-43bd-b239-1b2ef004d40a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1349131-1d5a-4306-bf68-38c1b83b7dba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ded24f2-6364-4ed7-a07b-e4af09064570',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '581009e0-038d-4350-ae3b-f416218e011f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '17e70680-3572-40ee-8643-68c9795cb4eb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd0a4f9b4-a680-4284-bc10-39652dab6f0b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '165e0f0d-624a-412a-8da7-e3d8d7f5fa68',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8d5cfcde-8186-4d96-a968-5eb2a97b589c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b58a12c7-d38a-441c-bc27-75edf5008b57',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ba24a5d-a4ed-411d-b77f-f676ee6b4fab',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f68785c4-f677-41d5-8a95-2f6db05841d9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'edc1ca3d-85d3-43be-89f1-be17c3d49221',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a59e88bf-7b66-402e-b771-adc489b3ee30',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '675ae5db-4bd1-4afd-8145-0f5aea294950',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c86f5ce0-1d60-4117-bca5-5c5ae557d4e0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4f960a41-569a-40f4-bb45-d088b70b767f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3461b9e-ffbe-45dd-ae4b-3c1fad6ca98a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d44fc3a-2eea-48c4-8bf8-037e0f43bc54',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ec0101c-2d50-44fd-88e8-17ea79d96477',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '196fad32-b667-413f-9e40-3ba131ac2947',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cc089bf2-544c-41dd-815a-591cf0d5538d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3578efb0-fcda-4202-be1e-6d55a7a2e0df',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '16397049-6833-4039-b42e-a2bf4c714cd5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff63f9af-bbf3-450c-a185-7d975c1b433a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1a0bafd-793f-4067-a47c-12756099aedb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3aee566-44bd-4c4c-b623-974da80594ce',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0da06b40-37dc-4a95-943d-cd4b5e138ae3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a06c064-914e-4cb6-90b8-99a28daf6014',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4ca6ca3-98c8-4084-a37b-5b5e10487ed1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22114327-7430-4d67-b4d2-b422dbc52ef4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f6df86e6-f6dc-461c-a22a-0641e3c8fddb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4d25ab0-22d6-4435-834a-062611158a9a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99e8a031-a650-447e-8be7-ae62d84ba686',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3c896ccd-759b-4945-a289-c9714b6bd85d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8af06e01-ecaa-449d-9e79-77afb1c7fbd1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'edc28d2e-c990-48a0-a50f-77d7a5b5fc7b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5f13e83-24c7-41ca-9801-33067120edad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89cd9feb-8e1f-4c38-add2-0d8763eb3f0e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5f4d5713-b45e-4fb3-9973-0c96573da910',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c00fac3-3164-45f4-979c-a577755a3332',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2759422-39d2-423f-90ee-70f4810a6148',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afa967cb-40c8-4836-a1b1-013ec9c5cbf6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80220971-f326-4544-bbc9-51be4fa172c1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad27c0e7-d5d4-4d74-9edc-9ca12187ade9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '992555ae-515e-4fff-abdc-4ae5cae6758a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c5c9f4d1-f08f-4ced-803b-f4ddd906bd5f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e42025c9-92e2-4f0e-9972-f7ab7c40b7f0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f2a4848f-762a-4382-95c2-0400c93e2923',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3259e722-7d46-40ee-82b9-81bd87538189',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a24debd-128d-4cd3-a060-411a17f047f3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e782feea-f7bd-4d43-9c9e-fde57e2e7d3f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e85bf5f5-aa71-495e-ab21-6264cc70166c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae25ec90-dd1a-4cc6-8b05-5a20ef35a161',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '97dbc17b-fbf1-48f2-be83-3cc436028ab3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9dbedf8b-c94d-40df-9b32-93c0e8d1ab3a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9bc8328-6f1e-43cd-a1b5-0891dba651c3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f8fcee53-7d9d-42c7-ab9f-680b72ef6d9b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fb21cc6c-a16e-4846-b0ba-da698f360302',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3e522ee0-9cf1-44e1-9cf5-9a900ae82d8d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f983df85-31c0-4413-99e9-a82b51ce9fb2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '604dfe5b-910c-47ef-ac81-d7bc240fa236',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d835340-a8e7-4a92-8880-f5b7e6cc5211',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7ed92f7b-9afe-47fa-a832-ce40d436c68f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e8dcf9f1-53a8-4d23-9c1a-4bddad335a5a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c4da0552-9f6f-42aa-83e7-c858cccb4b4d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77528b1d-2b5d-4bde-b084-4426b769dae7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7c47a19d-38af-44ff-9cf9-60274b61afac',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e43c18c-82cb-4df8-b884-52f3337c211f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e687223-c02f-41f5-9c44-50e1c6ef7832',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '76393676-93cb-4a9e-8bfe-5c160c7d030b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ebd096c-05aa-4fbc-b0b7-367a4d6a557c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b1279c81-5b8e-4126-8330-5fe832dc3516',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bf5df77-56e8-455e-9983-5de84330cfb3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ff985917-a878-44f6-9d3f-697162e5971a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b9a3dcb-37da-4037-a73e-4a9d81a9357b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7d84d74a-4ff1-46d6-a034-d90e76791850',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e8d0bdc-a6e2-49ed-b576-8d87d4b6d8cb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '47572341-9bad-4820-8087-02c041940935',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fdda9bd1-49e4-4ca0-ba89-fe229c344c99',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cee22ab1-e681-4b1a-ace4-f96ef11a5341',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62f40542-0749-4ca5-9650-a4bcc4d87f55',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3051ea4f-2fc9-4656-bb99-fb872325d9ba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '68a86ca5-f886-4926-bfb8-fea99584f889',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '51dfe27c-0307-4f37-9624-16ae1aa6a9ad',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2266dd99-54cd-4764-a425-a52438467ac0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc7c1dbf-c8d6-47e3-bd7d-4d15153473a3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19f95f03-4f6e-4180-b5c6-3295765988e9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'adcb2c98-7889-47bc-93a2-7e3ce616f3e4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f0cd633-f53d-4d15-9b3f-9a54a5581337',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7924101d-33fa-44aa-87de-dacaf021f23a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '52cc16e6-a463-4823-8640-66d3493de6ba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50d8bbbd-3d68-4fec-bcce-b34c14c652dd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8037a7b6-29ca-4974-8c95-2356de69df8c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8472ea6b-9ac8-4235-be13-3ccbc222a2b3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22d6d079-f7c4-48de-9aaf-a0f936936192',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '76853f18-48f2-40c3-aacf-0f7154b1a6a0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '286d7cb7-5644-4f2b-88da-06e0d8ddb9a9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '84c47b08-4282-4bfd-841b-eee76789adbd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bd1bc584-b4fd-4b09-9740-370b372ee3e4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12e5d3cf-5dcf-456f-807a-0844052fd214',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5339aabb-8416-488d-9bc9-d5cccfbf20ab',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '839cf8fe-92ad-4fb3-93bf-6f30f713aa04',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '58bfacde-2218-4782-9a28-00800fc84436',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b2767aa9-f945-47b7-8ea3-8f3665a3e67e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c198cca8-2a19-4dcc-85b5-0f746d544833',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '98a20a2a-9d2c-428a-8bd7-96fd26b26e64',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9a76bf6-9fd8-4f91-8c0a-c823fdd6366d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '039ffe0f-eca5-467d-af13-e0a2899f9442',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e246465-0872-4610-8898-df84a2bab4f8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '30205dd9-e7a7-49b7-9714-b7f9f5c64845',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dd307b59-97ce-4447-8776-832d4c4d55ec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a299d46b-2235-47c5-8fdb-1bfaf16ee90f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '29fa87f9-ae59-4b4e-8219-0ac2c9731a32',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eecd2777-01c2-4d52-8a4d-25ae55e3fc86',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '629ae0fd-60ba-4d25-b0f8-3628888a7c5d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'de8c9ab9-795b-46ac-b286-3e983d18b815',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '98fbb07a-ee45-4765-a32c-22de2071fb8a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6ad726ce-0444-4d18-8680-12ec561d242f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c375ca74-556a-4f2c-9ee1-7e5926438f21',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e0257157-9dda-47af-85a3-f80af5a8db00',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7f262ed3-0521-4197-819a-51137488cc3c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6b1612d5-939c-4887-971c-6324ce54dc3e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5be3c324-4f20-4747-b13c-9fd8a6d152b0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20923c86-d15e-493b-b5d5-6e28d934a65e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a37f51b-e4b8-4611-8814-6963f42f7629',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf0f1963-f572-419e-bf4d-4de0b201aa47',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '21a56be3-eb2f-4d85-9b08-b9df4b1ac94f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c55d34fc-8854-473c-bf4f-8c4e4c88f915',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f516dc6c-b2eb-4818-9067-5faf6040a626',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5906f56-b849-4ddc-b2f5-2bb02be9fc5e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d5dfe9a-d189-469f-a393-8484c460ebd0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2da9bd40-6d26-489b-bef1-54dfe809cbc9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eb99e555-1f6d-42a5-9af9-6392537e32be',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b442660d-510c-4b59-9ce8-b048fdd636ec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '714f58fe-bec5-49e0-9b8f-546462e4486c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8f3b0955-651a-42d0-9b05-584601a67019',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ba33f060-6862-4671-b3c9-26dadc386176',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7aaaa56e-2e20-4dc0-adff-8b2f72708b6b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8643cf1a-fc26-4f06-b6df-5f108fd569dd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0cb20232-dfa4-4d32-b650-f2432e613c55',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6c1b75a9-cecb-4e19-a612-3e50ef09df00',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1566754e-24de-4ad9-b519-0b491b879c34',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9496be1-145f-4d53-b539-178206fa43d7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9be13e51-5ecd-4030-a921-797d5a89c029',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '20938c4f-2579-4e73-b2c1-f707f7d0f747',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d2e567c-d71e-488d-981c-edf4b2aae48a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7f79cc4-058e-498a-b103-55f6b77d35cb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '873f4d52-193e-4e67-95b9-cc8aab1374ff',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6fe8945d-d2ed-4420-9dd7-a5c63a57602d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '460f8afe-3cf7-44ec-8618-12ab878383ba',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1b783cb-719e-4a85-bdef-591c8833e24d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a9b242ee-2ab3-427a-b18b-2bf25d375e37',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7324e301-3ba9-466a-a508-7e640590cf8f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b02074a4-5c8b-4eae-b308-706c4218451a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '864895bc-16ff-4443-992f-8dfa25de75cd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22795096-394d-4dac-b928-71bb72dbdb36',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'db33473f-2d4e-467e-86bd-4de9f6807a3f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a7fb85bd-b2fd-4632-86ae-cf1aad519fa1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea785fcb-8f4b-4ddd-8232-a348636243bb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4e1b3bcd-acb8-4cd0-9745-1d97db002ca0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '15ab18fe-23b7-4b78-9e72-c5d25dc62e00',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8911a578-2c9b-4511-9fb4-31ed4da9a2ca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce6f7059-df7d-4c8c-b5fd-95fe8ff6ac18',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f71b946-0019-44a7-89e4-44e527891fec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a34c0771-bf2d-415a-8d3e-7bcee7224dc2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '60843561-7add-43f0-9056-ea6b28a797d4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f5813a7c-0e5d-4051-a141-3770b82e4b0e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd75e948c-b4e8-4767-a0fb-2e84e82862d2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bc05b79d-0f13-437f-aaed-65c059a4de61',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b370d1c7-78b8-4137-9f20-67550404d1a0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cda838df-8905-4eff-93b3-6ad7b8ad77b7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91d313bd-2ab2-4119-a15d-ed840830b7b8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f48737f0-f94b-43ce-a64d-e83a92c75e92',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b90a15b-0ab1-491a-812c-856ed301ae8f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4a0bb25a-38ed-4534-a4eb-536db171defc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afcbe7e9-9072-438a-9001-aac60d7c5c1e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '09404c1c-6fe0-4a68-a362-ea7488ccf3fe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dc06a1ec-dde0-49a0-a687-d3793028d865',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '050605d3-cef2-458c-9588-3f1e97f9e06c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '91ec88c4-aaca-4c2b-be28-151d6bab720d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4f6a304-ba62-4bfd-a761-940543ca1afc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '389f0c81-be99-459e-bd56-42513a148cc3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6eff1bdc-6407-4823-913c-4fa75c18a5c8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'da07406a-549a-4141-afb6-19cb4e4cbde3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4eebc6af-547d-471d-bc5a-45b35ebb9279',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3dd2366d-e265-4a36-a87d-bfc98ba4b36f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b5fd5e6-289e-4e5f-a99e-772dced1681b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '46116a55-b5a7-4bbd-ba7b-4411d81f7eb0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a67156b5-dd78-4aed-9d6a-f300c73a7ee2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e356a941-7eb9-49e5-aa41-e75bcff8cdcb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2540796e-0e4d-4541-b363-2973725e4efe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eafe532d-3918-4879-9456-f88201f3131d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f5c89c4-50fc-4c9f-9063-ad325eef44ed',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4fde279d-b183-4f04-a217-4f7b0e017630',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c754cbf7-09db-441a-9be7-aaccfcefb006',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b26b8428-753a-400c-8f86-e0e457f0d4dc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9959589-980c-4e06-83e5-e349e20b223d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9e61d866-9236-4fab-b717-f2791424e8c2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5603b216-9263-4fd1-9e3f-0e9d1f4186f4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '466ed9a9-8eb1-40ff-a8ff-fb8cfd8534fa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '837827f7-bd5e-4383-8278-e1b1da6e64d2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7ae38dc-d3ed-480a-bf41-7c0376125ea6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '277835e2-8900-41be-b5db-263ff2981a35',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '255ed2a4-d393-47dd-b095-6e0bffcbd6b0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b129185-dd92-4935-bb40-d27f733e67e5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3885e2fc-dc0d-4110-a3e5-2b606cdb9312',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9aacc1b8-6c79-43c4-a3c5-dc29f4227329',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a64ffcd2-bf09-43d7-9760-011592e208bf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '92fa2362-180f-460c-9d33-073c03427545',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c7ee9ff-f4aa-4fc0-8e42-98bbaf6668a0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2b42f47d-1c4b-4760-a95d-3ebef129a946',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '26764a96-607a-49b8-942f-087452d25648',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ac86ce78-9483-46ee-952e-e117672510e2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed1f5663-6a4e-4b0b-ab63-b89b3804e5b0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b011c17-ba7b-430d-9c79-f3eb3e9b3dd3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'deca5517-e721-446d-806a-1724a59cd46c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '01956aeb-265b-48ad-ad5a-5a331994b114',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '794834ae-944d-46a4-b7e6-293e937958fa',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '815695a3-6557-4090-b752-a0a36e10107a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'afe882c4-7a05-454c-887f-2bdd7376ed46',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '62d0ddc2-d37f-4314-97dd-2a856ce3dd91',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '02120b57-ba44-4080-a6d6-e81dc5502ec3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ea3af17c-6c9f-4062-aade-d7cdc2d1d2fd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9c7ec84c-2f03-4676-b646-989d7ac5bfb7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ae3764e8-c543-4779-a2f5-bd36cc740e55',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '74dc137e-f549-4f66-9b84-0d724b25dea0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e843369f-3806-43c5-8d9e-dc3d3f7a958b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1e176af6-8c86-4be5-9a50-06bf311daefe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4ace66b1-9408-446c-bced-7e9bf797d3b7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '90c2dc03-a9d9-4fd4-a63c-93641a59ce29',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f9cf2cae-33fb-4f12-8df5-d963134e9cb9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0b505317-e5f1-4294-99a6-46b120f6af87',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1fc78d5d-6d74-4034-9d74-46b8515bb12d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '37cd13c3-21ff-462f-a84a-2b866ced422c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8693b99e-9392-4d5c-99ed-2c4b91f635ed',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fed66dc5-6e48-42af-9ea6-714836f98f76',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e72b74f-390b-4088-bb62-ffda9a36519e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0aa41d9a-a59f-4620-bd39-93a26e25ac0a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8cf1e4fa-2276-4b91-ae0e-553408bdcb57',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9ee00d38-7027-4187-818b-e34eeadd9125',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64aa3868-f925-4b9b-b9f1-106f5facf5b8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7e6c8e13-5132-4f29-9bd4-947cd95a0892',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b9ffc82-2506-40e1-a9bd-848348abc7d0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '27ec4417-204b-40d3-82da-bfd0163ae505',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2f7700aa-4587-44c4-bcc9-aaf66560fd15',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '11f93e74-d17f-4ca7-96f7-5c98cdb13798',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c9350158-3b1c-41de-88b7-db1dd5243ccf',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2cf98406-37dd-44cc-922c-9d19463e5ab5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0f3575e9-3015-446e-bcd9-52c216bc1743',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4930593c-0311-4ace-9a05-c18ba666b249',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '200951fa-5406-41b4-8a1e-0efc40e7ef4f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'aeb2c520-0492-4326-a81f-2a398bdbd393',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5034a04-aaf6-47a0-9b41-171e0a3794ea',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '715a8e09-6c6d-4ba1-969d-9d840812fcbe',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b25568ef-42b6-4887-8292-a05af68bb23f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2fa38bab-1096-4c20-a069-f02e99bd76cb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b4e35af-b73c-42c1-9409-ac124863be04',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ca0a9d56-2bdd-40d1-b012-17b5d0d5e08b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '138399e8-5905-46be-aac1-5c74dbbb9012',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '95c28047-9f97-4406-a8ab-bfdb35fc605b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '18cdca77-9ffd-4658-9e04-cd0e134f4cdb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '929a4ede-bbf9-4eea-92d2-b01d5817c18f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a400713f-fbec-47e2-89b7-c272e2f7ecfb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5786d144-1e42-4db4-9d8e-7a259c41390e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f19368d4-268a-44e6-b298-c2efc03c3f85',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b940121-6767-4b2b-8dca-dfd8516e83ec',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1af6c69-7802-4fce-992c-389c77f74107',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '22269b8b-27a1-4e51-908f-c4ca60827dc7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f60eab0f-ce2f-45b2-b596-af79c177c393',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4eb294df-81d0-4813-b5e3-97515f518502',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b8c4f790-875b-48db-9eeb-573add1f1212',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'be2cc920-4bc3-4b8a-a371-635acf371b99',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5d74fc81-7fcd-4782-900f-da9a77e3fcf6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c653fec4-9724-4163-b011-c3faf6171624',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '29cc9c9d-dba6-4642-a9d5-feccf8596b35',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '961bf2a6-4a34-46f6-a028-6b0b202b1944',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '66185b7c-f1d4-473a-beac-bdcaba9286da',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5e67f2a9-8cc3-4f74-8f28-e75a5e0f43b7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ef301981-cfaa-4eac-956b-2b47edd60661',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9eee529b-24ff-4d2a-9c50-9526e4212e15',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7374aab6-5aa4-4f3f-84b6-d0b8465fab4c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c17b78cc-a071-4510-9501-9a25320ebb5c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1f4ff48d-3ecb-46f7-a853-4868fbb6c14f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ceb46408-44a2-47e2-8142-c06d27a6d056',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8164ec4b-a339-4b7b-a375-0b48a3a70d53',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1de117ea-e81f-4960-a4da-3f2aeecf92fd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c363e322-8f5e-4742-8b05-4a7952138c7b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd2de3dec-5fbc-4302-b72d-14375c1e2a93',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cb96ea5f-59ec-444e-9947-5c216643a3d5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1777e6e-a595-408b-b504-5ac6a28ab8e0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ffcd9f82-18d7-4122-a66e-cff8130c3865',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7b473f4e-635d-4a34-96ce-5559a6437fef',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b787e5d-0d9f-4fc2-8154-935257404298',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3dacfbc7-a013-4028-9009-d9344bc36686',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'eb7c0d56-2936-42fd-bc0e-61e183b265c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8564f4a8-e368-4e49-b0e0-435e9bbb91da',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '45ca057d-98be-4bff-b25d-5505ec562b79',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f560ecfb-491a-441e-91d2-cfbcae3353ae',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e79a1f9-e1c0-4860-bd34-c299b3dfacd6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b008436-ccea-4c3d-bf27-3584358428f0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b5bd0cc0-34ca-4214-b5c1-098174f019c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '48370369-a14d-4f98-a374-20fdd72ba011',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5bbb2368-d3d1-4db4-b07a-907dd9f5756d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7a2ab500-1b35-4c30-8a2e-068206419b65',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0687679f-813d-453f-8362-44eb9cf19f55',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bf4c7932-1e60-421c-9e75-f05be343613e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6e8c35f8-af97-42b3-8321-25b5f920a2b1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2cf2e16a-9005-4ba2-a873-86141aada621',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7d71df31-1bca-4bf0-8903-56f5a2674210',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c6b76ef-95d6-471f-ab96-1e2f5d239d08',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b6ae1eb-e8dc-4940-9b67-368ef938060e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd36e07b0-07b2-4ec9-8823-097cedf1f245',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12392006-fa07-4e2f-a064-482078666e6c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5032c958-b6ec-4750-ae7a-1a24bd7139a2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5940faa7-6029-4a5e-931a-78bb1e1fa2d9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6daf8b17-7221-471a-a990-1c7a2d719642',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7f5c968-fe3e-407b-9b7a-4007ddbc0d63',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c882aa67-5f9e-464d-9327-84c8031f679d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ec204f7b-b48e-4964-9525-0f4d60a615e9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6be25158-2e42-4cad-8625-e5409d531ae7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '50047043-c0e9-4a70-8901-a707cc664274',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1a658dbd-2c53-4df2-9741-4274cb4f1bca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c32c115b-0168-4c62-a93d-8f39a4cb61f8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dff44f5d-c723-4ecb-b439-d5d297f4f904',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cd89a130-ae2e-460f-83d6-c07b9fb1763f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4b9624eb-3875-4845-b57d-3d54fe83701c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c45e10e5-f936-4dc4-b4b6-eef58ab8e8b1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89262c90-df4d-4de6-83f1-b55f46777b05',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e64d1b19-073c-4543-a216-15622b8b56cb',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '13cdb4e6-7efb-4e48-8264-1b36eb8d9aca',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3f652bb9-8d9e-4083-84fe-bdcbfed76307',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b8b2b65-0243-4cb3-892d-a1b8a5550684',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6db29c1a-a77e-4390-8777-92a6ae378cd9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '12ff50b5-7ddc-49d3-96de-cf07cf9cbb9e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cd29a10b-ddee-48f8-95ab-c8e60c6f609d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '050db349-5045-493d-921a-48226d0b1d8a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3b80377d-4616-4e0e-8482-b2e81093324a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06bf8af5-bd3a-4f93-8b0f-a283df66ab35',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'af97782f-2142-47d7-b5ba-1003cc38b579',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5c272592-8891-4e19-ab2f-c38d880fa4f2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b98722b-8ab1-4c3f-89a9-1fc28f4d35ac',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b298fc7f-f252-4166-8a9f-f21d7067b058',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '92be1c93-976d-4bf8-b3cc-c169291eb913',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ead16dff-6c4f-49e3-a9d1-b08bc8cdaad0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '241e123a-9d95-4037-a77e-cc9c65af64d6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9d8e055f-0139-4e61-b41f-ac4ac7e9f353',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a5c3f95c-5d52-4d7d-8191-55a6321b6d2d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9aa73f75-f214-4d34-bbe8-3c8ff4173341',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '850fc295-ae60-43ac-b91b-bc11d605d54b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e97f0370-b9f2-4ba6-b13f-0874a359ff2e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd1383db1-4071-4305-9155-97a63d842cb7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a27323f7-ded7-4907-b937-e2f1e4d1dd45',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '456c91f5-935c-4aa3-a75a-8d6390d364b7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e785f4c5-7491-4e47-b308-ea5519b10854',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b23d68b2-e262-4fdf-8ad6-3bc208d1aa86',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ed5a840c-dba6-4cba-a243-1d9530f7e1c7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3afbad9b-c355-40db-a913-dfb1befa6734',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77fbfba4-0983-4391-84e8-22d61cff4e8c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9a4a45a3-0f04-4229-b32b-b2c469703707',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1ede2ca1-71e6-4958-9b59-3d0235a11ef0',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '48c6e982-7231-4be7-901a-b426c964b08e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '535b36e9-f6db-464e-be56-e4b2ef96a0e5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06682534-6918-409b-ac0f-a6b59dc98912',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd36edead-82ba-43a8-954e-dd5ea4cd4ab8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '881cb443-1096-4390-bf11-b1b9b36a0021',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3bbb9eb6-f497-4f3b-894c-0caa9f5f914a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fa9414cd-860d-4cad-aec3-0e03e1900470',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5d5c5231-6f14-439e-a6dc-ef0c9b14e0ff',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5fc29699-5e85-4b30-a006-a180f7523203',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'bb6cf5a2-90bd-4327-a9a0-c901eeccd722',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '481193a6-6e13-4147-96b5-f3b8b4cb8618',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '00e65505-e189-42fb-9a91-ce3b42920f2f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '043da61a-cb84-40ee-9dfd-cc948d3b8535',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '213fc83d-5f1b-4d38-8112-f96cb84f5322',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5a7db145-f3be-4f03-8316-90747e6c30be',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '77f2aaf8-2907-4529-ad97-3f4d387dfa3d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a75c752f-0b7f-465a-abf0-f8a470dd3e27',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '99a615d7-2e8e-44b6-9a60-0daacb5a6b31',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8e772bcc-5ece-451a-93e1-e7ddaa044678',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '89265a3e-f475-4c08-8a7a-696a2619504c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6427b168-ac22-44ec-b99f-36c5ba172efd',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9f3a4544-da2a-4eff-9f56-c36f3518ae50',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9846cccb-35c1-4a5b-8d48-5067e8d142f7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '016ff519-c879-4458-a1b3-5568f7f95d6d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '44a549f7-a494-433a-8414-c9f1a2ee7af6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '7568cf2e-1d50-4031-a1f5-77efe9f67319',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e4fd63ae-7c33-46f2-95bb-87792d8e0820',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c8f4b4ec-b620-4d16-8c9b-e86f28cddf66',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd5f434f3-4d7f-40ef-b9c3-1922c4a8aa2a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f4b951c8-ed19-4267-b255-aeadcca35036',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fbec5c2d-5aa3-4b37-8c86-729f080394b3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a2e1fddd-be5b-47a6-9a70-21af7c17392b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '64a617ac-7963-4c04-8fa1-50c87dc18ca8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b2d270f1-c48d-4d9d-8c23-1ca5bac1d83b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f55b4091-b573-40ef-a6f3-f6b154a73e39',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'baff4c3a-bd52-4ee5-9e2d-740aeacee63c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '80a95c12-92d8-4b24-813b-f0e7ee78f3de',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '042efa4d-cac0-45ca-a49f-8f031c07b2e7',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c501f3d2-0240-497e-9f8f-ca1baa2e48d9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d1610a1-8d1b-4326-b5b8-e812ff891aee',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1d5bb37e-977a-4176-9d08-0c4e9929217b',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '38c3ed82-00e3-468c-8d10-5a30cabead7c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '87f3f3f3-b5b3-4b44-960d-a47eecd782df',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'cd8fa686-984f-472b-abcb-92275b28577f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0a9c9184-17ab-42b4-8484-d2a9b257d8e5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e44cfdb3-0b76-496e-b62e-28d6e8af4da2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2e13385e-0224-4f3c-9f4f-689cce802475',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'f3ad29bd-e165-4fce-a316-04d212906ef5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '0d6d18aa-1355-42f6-a84c-12c21ffe1664',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e7b264cf-fc8f-4b46-83a4-9067ab567471',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ad0c1450-257e-4c8c-bf57-8f211c6a817d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '03d69cd4-5fc2-4081-914b-1995f7b28d95',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '16fb1f10-4a37-44e6-9d65-707b51fb3a43',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'ce2c0b15-77ed-4843-9465-148db95e17a3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '6eb01c35-16a7-4a47-b827-7b472bb64608',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '19db3d45-8c6b-4b34-9ef8-f6fc38771063',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '06f01eba-18ac-47cb-8ebb-16ea5e8116d6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c25edacf-7bbe-42e6-b111-34614e7f0b57',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd051c947-1b98-42f4-b24c-7ff0af965b6e',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a3c0811f-6943-44d1-b29d-6545e698d406',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '659f7951-a9e5-42e9-babf-91d49c76e8e2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8bb5cf00-3623-46e0-90d4-aedbf40e9fc1',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4509f042-2cee-497b-b20b-af0894c388b9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '501750d0-16e9-44a2-ab49-e40e8d70d65c',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c444181b-39c4-4788-a173-05debce9107f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '8b4a1a5d-33ac-4719-a019-72f8189f2ac2',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '3aa3e91a-2d77-4036-ab0e-d4f5149c0c5d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'dbcf9e2d-6222-4fc0-8ca0-52bf670779a4',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'df784756-d0c8-4621-a000-8d4d78223501',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '591b4fc0-b9b3-49fe-9fd9-a6debd1e6206',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '38cf8d26-9c52-4504-8b8e-78c2be39f494',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '119ec7a2-3fc6-4fd9-98c8-67cccfee92ff',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '5b34d478-8bf4-4722-82d5-84d1b0092398',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4d8f98ee-795c-4c4e-9512-e58cc8bff8ab',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '4144ec79-50c0-4279-8854-62f3424f58cc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'd130f46e-4fc6-463c-9f17-3c34bcc0f9f3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e94c8bc8-2cf4-474f-8c0e-048fc569ccd9',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'fa0adb11-c674-4de8-b42c-04fc9422acb3',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2c42b752-1bc0-43b4-9938-69ffa74cc8d6',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '31cc5bd6-4600-47b1-ac5f-2929036bd04a',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'a1e45eb8-9b82-4c78-9506-6123c3251425',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'c1ca722a-7fa6-42f4-a895-0ad7144560fc',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '2388fa99-2669-4679-bc6c-11e9ac90199f',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '9b135865-1fe6-4dbd-ba1c-609d7a2427a8',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  '1b62be18-bab0-4320-b4e2-5847794d9a12',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'b540d787-2546-443e-947b-b8d21a54751d',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'e685f12d-7208-4a8f-a02b-bacd9caccca5',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (
  'faafe3c1-b6af-45c6-846d-326a4fea7add',
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
  '2025-12-19T16:13:24.352Z',
  '2025-12-19T16:13:24.352Z'
) ON CONFLICT (id) DO NOTHING;

