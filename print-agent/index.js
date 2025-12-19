/**
 * KAWAY POS - Agente de Impressão
 *
 * Este programa conecta o sistema PDV à impressora térmica.
 * Ele busca trabalhos pendentes no servidor e envia para a impressora.
 *
 * Compatível com impressoras Elgin, Epson, Bematech e outras que usam ESC/POS
 */

require('dotenv').config();
const fetch = require('node-fetch');

// Configurações
const config = {
  apiUrl: process.env.API_URL || 'http://localhost:3000',
  printerType: process.env.PRINTER_TYPE || 'network',
  printerIp: process.env.PRINTER_IP || '192.168.1.200',
  printerPort: parseInt(process.env.PRINTER_PORT || '9100'),
  pollInterval: parseInt(process.env.POLL_INTERVAL || '3000'),
  printerId: process.env.PRINTER_ID || 'default',
  paperWidth: parseInt(process.env.PAPER_WIDTH || '48'),
};

// Estado
let isProcessing = false;
let escpos = null;
let device = null;
let printer = null;

// Cores para console
const colors = {
  reset: '\x1b[0m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  red: '\x1b[31m',
  blue: '\x1b[34m',
  cyan: '\x1b[36m',
};

function log(message, type = 'info') {
  const timestamp = new Date().toLocaleTimeString('pt-BR');
  const prefix = {
    info: `${colors.blue}[INFO]${colors.reset}`,
    success: `${colors.green}[OK]${colors.reset}`,
    warning: `${colors.yellow}[AVISO]${colors.reset}`,
    error: `${colors.red}[ERRO]${colors.reset}`,
  };
  console.log(`${colors.cyan}[${timestamp}]${colors.reset} ${prefix[type] || prefix.info} ${message}`);
}

// Inicializar impressora
async function initPrinter() {
  try {
    escpos = require('escpos');

    if (config.printerType === 'network') {
      const Network = require('escpos-network');
      device = new Network(config.printerIp, config.printerPort);
      log(`Conectando à impressora de rede: ${config.printerIp}:${config.printerPort}`);
    } else {
      const USB = require('escpos-usb');
      device = new USB();
      log('Conectando à impressora USB...');
    }

    printer = new escpos.Printer(device);
    log('Impressora configurada com sucesso!', 'success');
    return true;
  } catch (error) {
    log(`Erro ao inicializar impressora: ${error.message}`, 'error');
    return false;
  }
}

// Buscar jobs pendentes
async function fetchPendingJobs() {
  try {
    const url = `${config.apiUrl}/api/print-queue/pending?printer_id=${config.printerId}&limit=5`;
    const response = await fetch(url);

    if (!response.ok) {
      throw new Error(`HTTP ${response.status}`);
    }

    const result = await response.json();
    return result.data || [];
  } catch (error) {
    log(`Erro ao buscar jobs: ${error.message}`, 'error');
    return [];
  }
}

// Marcar job como concluído
async function markJobCompleted(jobId, success = true, errorMessage = null) {
  try {
    const url = `${config.apiUrl}/api/print-queue/${jobId}`;
    const body = {
      status: success ? 'completed' : 'failed',
    };

    if (!success && errorMessage) {
      body.error_message = errorMessage;
    }

    await fetch(url, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    });
  } catch (error) {
    log(`Erro ao atualizar job ${jobId}: ${error.message}`, 'error');
  }
}

// Formatar linha centralizada
function centerText(text, width) {
  const padding = Math.max(0, Math.floor((width - text.length) / 2));
  return ' '.repeat(padding) + text;
}

// Formatar linha com valor à direita
function formatLine(left, right, width) {
  const spaces = Math.max(1, width - left.length - right.length);
  return left + ' '.repeat(spaces) + right;
}

// Formatar moeda
function formatCurrency(cents) {
  return `R$ ${(cents / 100).toFixed(2).replace('.', ',')}`;
}

// Imprimir recibo
async function printReceipt(receiptData) {
  return new Promise((resolve, reject) => {
    const width = config.paperWidth;
    const separator = '-'.repeat(width);
    const doubleSeparator = '='.repeat(width);

    device.open((err) => {
      if (err) {
        reject(err);
        return;
      }

      try {
        printer
          .font('a')
          .align('ct')
          .style('b')
          .size(1, 1);

        // Cabeçalho - Nome da empresa
        if (receiptData.company?.name) {
          printer.text(receiptData.company.name);
        } else {
          printer.text('KAWAY POS');
        }

        printer
          .style('normal')
          .size(0, 0);

        // Dados da empresa
        if (receiptData.company?.document) {
          printer.text(receiptData.company.document);
        }
        if (receiptData.company?.address) {
          printer.text(receiptData.company.address);
        }
        if (receiptData.company?.phone) {
          printer.text(receiptData.company.phone);
        }

        printer
          .text('')
          .text('CUPOM NAO FISCAL')
          .text(separator);

        // Data e número do recibo
        printer
          .align('lt')
          .text(`Data: ${receiptData.date || new Date().toLocaleString('pt-BR')}`)
          .text(`Recibo: ${receiptData.receipt_number || '---'}`);

        // Cliente
        if (receiptData.customer?.name) {
          printer
            .text(separator)
            .text(`Cliente: ${receiptData.customer.name}`);

          if (receiptData.customer.address) {
            printer.text(`End.: ${receiptData.customer.address}`);
          }
          if (receiptData.customer.phone) {
            printer.text(`Tel.: ${receiptData.customer.phone}`);
          }
        }

        printer.text(separator);

        // Itens
        if (receiptData.items && receiptData.items.length > 0) {
          const itemSeparator = '. '.repeat(Math.floor(width / 2));
          receiptData.items.forEach((item, index) => {
            // Linha divisória entre itens (não antes do primeiro)
            if (index > 0) {
              printer.text(itemSeparator);
            }
            printer.text(item.name || item.product_name);
            const unit = item.unit || 'un';
            const qty = `${item.quantity} ${unit} x ${formatCurrency(item.unit_price)}`;
            const total = formatCurrency(item.total);
            printer.text(formatLine(qty, total, width));
          });
        }

        printer.text(doubleSeparator);

        // Totais
        if (receiptData.discount_amount && receiptData.discount_amount > 0) {
          printer.text(formatLine('Subtotal:', formatCurrency(receiptData.subtotal), width));
          printer.text(formatLine('Desconto:', `-${formatCurrency(receiptData.discount_amount)}`, width));
        }

        printer
          .style('b')
          .size(1, 1)
          .text(formatLine('TOTAL:', formatCurrency(receiptData.total), width))
          .style('normal')
          .size(0, 0);

        // Forma de pagamento
        printer
          .text(separator)
          .text(`Pagamento: ${receiptData.payment_method_label || receiptData.payment_method || '---'}`);

        // Troco (se dinheiro)
        if (receiptData.cash_received && receiptData.change !== undefined) {
          printer
            .text(`Recebido: ${formatCurrency(receiptData.cash_received)}`)
            .text(`Troco: ${formatCurrency(receiptData.change)}`);
        }

        // Rodapé
        printer
          .text('')
          .align('ct')
          .text('Obrigado pela preferencia!')
          .text('Volte sempre!')
          .text('')
          .cut()
          .close();

        resolve();
      } catch (error) {
        printer.close();
        reject(error);
      }
    });
  });
}

// Processar jobs
async function processJobs() {
  if (isProcessing) return;

  isProcessing = true;

  try {
    const jobs = await fetchPendingJobs();

    if (jobs.length === 0) {
      isProcessing = false;
      return;
    }

    log(`${jobs.length} job(s) pendente(s) encontrado(s)`);

    for (const job of jobs) {
      try {
        log(`Imprimindo job ${job.id.substring(0, 8)}...`);

        // Imprimir cada cópia
        for (let i = 0; i < (job.copies || 1); i++) {
          await printReceipt(job.receipt_data);
          if (job.copies > 1) {
            log(`  Cópia ${i + 1}/${job.copies} impressa`);
          }
        }

        await markJobCompleted(job.id, true);
        log(`Job ${job.id.substring(0, 8)} concluído!`, 'success');
      } catch (error) {
        log(`Falha ao imprimir job ${job.id.substring(0, 8)}: ${error.message}`, 'error');
        await markJobCompleted(job.id, false, error.message);
      }
    }
  } catch (error) {
    log(`Erro no processamento: ${error.message}`, 'error');
  }

  isProcessing = false;
}

// Iniciar agente
async function start() {
  console.log('');
  console.log('╔════════════════════════════════════════════╗');
  console.log('║     KAWAY POS - Agente de Impressão        ║');
  console.log('╚════════════════════════════════════════════╝');
  console.log('');

  log(`API URL: ${config.apiUrl}`);
  log(`Tipo de impressora: ${config.printerType}`);
  log(`ID da impressora: ${config.printerId}`);
  log(`Intervalo de verificação: ${config.pollInterval}ms`);
  console.log('');

  // Inicializar impressora
  const printerReady = await initPrinter();

  if (!printerReady) {
    log('Não foi possível inicializar a impressora. Verifique a conexão.', 'error');
    log('O agente continuará tentando...', 'warning');
  }

  // Iniciar polling
  log('Aguardando trabalhos de impressão...', 'success');
  console.log('');

  // Verificar imediatamente
  processJobs();

  // E então a cada intervalo
  setInterval(processJobs, config.pollInterval);
}

// Tratamento de erros não capturados
process.on('uncaughtException', (error) => {
  log(`Erro não tratado: ${error.message}`, 'error');
});

process.on('unhandledRejection', (error) => {
  log(`Promise rejeitada: ${error}`, 'error');
});

// Iniciar
start();
