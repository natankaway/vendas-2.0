-- ==============================================================================
-- MIGRAÇÃO: Fila de Impressão para Impressora Térmica
-- Permite que qualquer dispositivo envie impressões para uma impressora central
-- ==============================================================================

-- Criar tipo ENUM para status da impressão
DO $$ BEGIN
    CREATE TYPE print_job_status AS ENUM ('pending', 'processing', 'completed', 'failed');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- Criar tabela de fila de impressão
CREATE TABLE IF NOT EXISTS print_queue (
  id TEXT PRIMARY KEY,
  sale_id TEXT REFERENCES sales(id),
  receipt_data JSONB NOT NULL, -- Dados completos do recibo
  status print_job_status NOT NULL DEFAULT 'pending',
  printer_id TEXT DEFAULT 'default', -- Para suportar múltiplas impressoras no futuro
  copies INTEGER NOT NULL DEFAULT 1,
  priority INTEGER NOT NULL DEFAULT 0, -- 0 = normal, 1+ = alta prioridade
  error_message TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  processed_at TIMESTAMPTZ,
  completed_at TIMESTAMPTZ,
  created_by TEXT -- ID do usuário que criou o job
);

-- Índices para busca rápida
CREATE INDEX IF NOT EXISTS idx_print_queue_status ON print_queue(status);
CREATE INDEX IF NOT EXISTS idx_print_queue_created_at ON print_queue(created_at);
CREATE INDEX IF NOT EXISTS idx_print_queue_printer_id ON print_queue(printer_id);
CREATE INDEX IF NOT EXISTS idx_print_queue_pending ON print_queue(status, created_at) WHERE status = 'pending';

-- Função para limpar jobs antigos (mais de 7 dias)
CREATE OR REPLACE FUNCTION cleanup_old_print_jobs()
RETURNS void AS $$
BEGIN
  DELETE FROM print_queue
  WHERE status IN ('completed', 'failed')
  AND created_at < NOW() - INTERVAL '7 days';
END;
$$ LANGUAGE plpgsql;

-- Comentários
COMMENT ON TABLE print_queue IS 'Fila de impressão para impressoras térmicas remotas';
COMMENT ON COLUMN print_queue.receipt_data IS 'JSON com todos os dados necessários para imprimir o recibo';
COMMENT ON COLUMN print_queue.printer_id IS 'Identificador da impressora (para múltiplas impressoras)';
