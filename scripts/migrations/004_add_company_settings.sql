-- ==============================================================================
-- MIGRAÇÃO: Tabela de Configurações da Empresa
-- Permite armazenar logo, nome e dados da empresa no banco de dados
-- ==============================================================================

-- Criar tabela de configurações da empresa
CREATE TABLE IF NOT EXISTS company_settings (
  id TEXT PRIMARY KEY DEFAULT 'default',
  name TEXT,
  logo TEXT, -- Base64 encoded image
  address TEXT,
  phone TEXT,
  document TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Inserir registro padrão se não existir
INSERT INTO company_settings (id, name, logo, address, phone, document)
VALUES ('default', '', NULL, '', '', '')
ON CONFLICT (id) DO NOTHING;

-- Comentário na tabela
COMMENT ON TABLE company_settings IS 'Configurações da empresa para exibição em recibos e relatórios';
COMMENT ON COLUMN company_settings.logo IS 'Logo da empresa em formato Base64';
