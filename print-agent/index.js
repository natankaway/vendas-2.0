/**
 * KAWAY POS - Agente de Impressao
 *
 * Este programa conecta o sistema PDV a impressora termica.
 * Ele busca trabalhos pendentes no servidor e envia para a impressora.
 *
 * Compativel com impressoras Elgin, Epson, Bematech e outras que usam ESC/POS
 */

require('dotenv').config();
const fetch = require('node-fetch');
const https = require('https');
const http = require('http');
const fs = require('fs');
const path = require('path');

// Configuracoes
const config = {
  apiUrl: process.env.API_URL || 'http://localhost:3000',
  printerType: process.env.PRINTER_TYPE || 'network',
  printerIp: process.env.PRINTER_IP || '192.168.1.200',
  printerPort: parseInt(process.env.PRINTER_PORT || '9100'),
  pollInterval: parseInt(process.env.POLL_INTERVAL || '3000'),
  printerId: process.env.PRINTER_ID || 'default',
  paperWidth: parseInt(process.env.PAPER_WIDTH || '48'),
  printLogo: process.env.PRINT_LOGO !== 'false',
  // Encoding: PC850 para portugues (suporta acentos)
  encoding: process.env.PRINTER_ENCODING || 'PC850',
};

// Estado
let isProcessing = false;
let escpos = null;
let device = null;
let printer = null;

// Cache de logo
let logoImageCache = null;
let logoCacheUrl = null;

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
      log(`Conectando a impressora de rede: ${config.printerIp}:${config.printerPort}`);
    } else {
      const USB = require('escpos-usb');
      device = new USB();
      log('Conectando a impressora USB...');
    }

    printer = new escpos.Printer(device, { encoding: config.encoding });
    log('Impressora configurada com sucesso!', 'success');
    log(`Encoding: ${config.encoding}`);
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

// Marcar job como concluido
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

// Formatar linha com valor a direita
function formatLine(left, right, width) {
  const spaces = Math.max(1, width - left.length - right.length);
  return left + ' '.repeat(spaces) + right;
}

// Formatar moeda
function formatCurrency(cents) {
  return `R$ ${(cents / 100).toFixed(2).replace('.', ',')}`;
}

// Criar separadores
function createSeparator(width, char = '-') {
  return char.repeat(width);
}

// Criar separador de itens (pontos espacados)
function createItemDivider(width) {
  const pattern = '. ';
  const repeats = Math.floor(width / pattern.length);
  return pattern.repeat(repeats);
}

// Download da logo e converte para escpos.Image
async function downloadAndCacheLogo(logoUrl) {
  if (!logoUrl) return null;

  // Se ja tem cache da mesma URL, retorna
  if (logoCacheUrl === logoUrl && logoImageCache) {
    log('Usando logo do cache');
    return logoImageCache;
  }

  return new Promise((resolve) => {
    let buffer = null;

    // Se for base64
    if (logoUrl.startsWith('data:image')) {
      try {
        const base64Data = logoUrl.split(',')[1];
        buffer = Buffer.from(base64Data, 'base64');
        log('Logo base64 decodificada');
      } catch (error) {
        log(`Erro ao processar logo base64: ${error.message}`, 'warning');
        resolve(null);
        return;
      }
    }

    // Se ja tem buffer (base64), carrega imagem
    if (buffer) {
      loadImageFromBuffer(buffer, logoUrl, resolve);
      return;
    }

    // Download da URL
    log(`Baixando logo...`);
    const protocol = logoUrl.startsWith('https') ? https : http;

    const request = protocol.get(logoUrl, (response) => {
      if (response.statusCode !== 200) {
        log(`Erro ao baixar logo: HTTP ${response.statusCode}`, 'warning');
        resolve(null);
        return;
      }

      const chunks = [];
      response.on('data', (chunk) => chunks.push(chunk));
      response.on('end', () => {
        buffer = Buffer.concat(chunks);
        log('Logo baixada');
        loadImageFromBuffer(buffer, logoUrl, resolve);
      });
      response.on('error', (err) => {
        log(`Erro ao baixar logo: ${err.message}`, 'warning');
        resolve(null);
      });
    });

    request.on('error', (err) => {
      log(`Erro na requisicao: ${err.message}`, 'warning');
      resolve(null);
    });

    request.setTimeout(10000, () => {
      request.destroy();
      log('Timeout ao baixar logo', 'warning');
      resolve(null);
    });
  });
}

// Carrega buffer como escpos.Image
function loadImageFromBuffer(buffer, logoUrl, resolve) {
  if (!escpos || !escpos.Image) {
    log('escpos.Image nao disponivel', 'warning');
    resolve(null);
    return;
  }

  try {
    escpos.Image.load(buffer, function(image) {
      if (image) {
        logoImageCache = image;
        logoCacheUrl = logoUrl;
        log('Imagem carregada para impressao', 'success');
        resolve(image);
      } else {
        log('Falha ao carregar imagem', 'warning');
        resolve(null);
      }
    });
  } catch (error) {
    log(`Erro ao carregar imagem: ${error.message}`, 'warning');
    resolve(null);
  }
}

// Imprimir recibo - Layout igual ao navegador
async function printReceipt(receiptData) {
  const width = config.paperWidth;
  const separator = createSeparator(width, '-');
  const doubleSeparator = createSeparator(width, '=');
  const itemDivider = createItemDivider(width);

  // Carregar logo ANTES de abrir conexao com impressora
  let logoImage = null;
  if (config.printLogo && receiptData.company?.logo) {
    logoImage = await downloadAndCacheLogo(receiptData.company.logo);
  }

  return new Promise((resolve, reject) => {
    device.open((err) => {
      if (err) {
        reject(err);
        return;
      }

      try {
        // Inicializa impressora
        printer
          .font('a')
          .align('ct')
          .style('normal');

        // ============================================
        // LOGO (se disponivel)
        // ============================================
        if (logoImage) {
          try {
            printer.image(logoImage, 'd24');
            printer.text('');
          } catch (e) {
            log('Erro ao imprimir logo: ' + e.message, 'warning');
          }
        }

        // ============================================
        // CABECALHO - Nome da empresa (grande e bold)
        // ============================================
        printer
          .style('b')
          .size(1, 1);

        printer.text(receiptData.company?.name || 'KAWAY POS');

        // Volta ao tamanho normal
        printer
          .style('b')
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
          .text('CUPOM NAO FISCAL');

        // ============================================
        // DATA E RECIBO
        // ============================================
        printer
          .text(separator)
          .align('lt')
          .style('b');

        printer.text(formatLine('Data:', receiptData.date || new Date().toLocaleString('pt-BR'), width));
        printer.text(formatLine('Recibo:', receiptData.receipt_number || '---', width));

        // ============================================
        // CLIENTE (se houver)
        // ============================================
        if (receiptData.customer?.name) {
          printer.text(separator);
          printer.text(formatLine('Cliente:', receiptData.customer.name, width));

          if (receiptData.customer.address) {
            const addrLabel = 'End: ';
            const maxAddrLen = width - addrLabel.length;
            let addr = receiptData.customer.address;
            if (addr.length > maxAddrLen) {
              addr = addr.substring(0, maxAddrLen - 3) + '...';
            }
            printer.text(addrLabel + addr);
          }
          if (receiptData.customer.phone) {
            printer.text(formatLine('Tel:', receiptData.customer.phone, width));
          }
        }

        // ============================================
        // ITENS
        // ============================================
        printer.text(separator);

        if (receiptData.items && receiptData.items.length > 0) {
          receiptData.items.forEach((item, index) => {
            // Divisor entre itens (nao antes do primeiro)
            if (index > 0) {
              printer
                .style('normal')
                .text(itemDivider)
                .style('b');
            }

            // Nome do produto (bold)
            const productName = item.name || item.product_name || 'Produto';
            printer.text(productName);

            // Quantidade x preco = total
            const unit = item.unit || 'un';
            const qtyLine = `${item.quantity} ${unit} x ${formatCurrency(item.unit_price)}`;
            const totalLine = formatCurrency(item.total);
            printer.text(formatLine(qtyLine, totalLine, width));
          });
        }

        // ============================================
        // TOTAIS
        // ============================================
        printer.text(doubleSeparator);

        // Subtotal e desconto (se houver desconto)
        if (receiptData.discount_amount && receiptData.discount_amount > 0) {
          printer.text(formatLine('Subtotal:', formatCurrency(receiptData.subtotal), width));
          printer.text(formatLine('Desconto:', `-${formatCurrency(receiptData.discount_amount)}`, width));
        }

        // TOTAL (grande e bold)
        printer
          .style('b')
          .size(1, 1)
          .text('')
          .text(formatLine('TOTAL', formatCurrency(receiptData.total), width - 8))
          .text('')
          .style('b')
          .size(0, 0);

        // ============================================
        // FORMA DE PAGAMENTO
        // ============================================
        printer.text(separator);
        printer.text(formatLine('Pagamento:', receiptData.payment_method_label || receiptData.payment_method || '---', width));

        // Troco (se pagamento em dinheiro)
        if (receiptData.cash_received && receiptData.change !== undefined) {
          printer.text(formatLine('Recebido:', formatCurrency(receiptData.cash_received), width));
          printer.text(formatLine('Troco:', formatCurrency(receiptData.change), width));
        }

        // ============================================
        // RODAPE
        // ============================================
        printer
          .text(separator)
          .align('ct')
          .text('')
          .text('Obrigado pela preferencia!')
          .text('Volte sempre!')
          .text('')
          .text('')
          .text('')
          .cut()
          .close();

        resolve();
      } catch (error) {
        try {
          printer.close();
        } catch (e) {}
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

        // Imprimir cada copia
        for (let i = 0; i < (job.copies || 1); i++) {
          await printReceipt(job.receipt_data);
          if (job.copies > 1) {
            log(`  Copia ${i + 1}/${job.copies} impressa`);
          }
        }

        await markJobCompleted(job.id, true);
        log(`Job ${job.id.substring(0, 8)} concluido!`, 'success');
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
  console.log('========================================');
  console.log('   KAWAY POS - Agente de Impressao');
  console.log('========================================');
  console.log('');

  log(`API URL: ${config.apiUrl}`);
  log(`Tipo de impressora: ${config.printerType}`);
  log(`IP: ${config.printerIp}:${config.printerPort}`);
  log(`Largura do papel: ${config.paperWidth} caracteres`);
  log(`Encoding: ${config.encoding}`);
  log(`Imprimir logo: ${config.printLogo ? 'Sim' : 'Nao'}`);
  log(`Intervalo: ${config.pollInterval}ms`);
  console.log('');

  // Inicializar impressora
  const printerReady = await initPrinter();

  if (!printerReady) {
    log('Nao foi possivel inicializar a impressora.', 'error');
    log('O agente continuara tentando...', 'warning');
  }

  // Iniciar polling
  log('Aguardando trabalhos de impressao...', 'success');
  console.log('');

  // Verificar imediatamente
  processJobs();

  // E entao a cada intervalo
  setInterval(processJobs, config.pollInterval);
}

// Tratamento de erros nao capturados
process.on('uncaughtException', (error) => {
  log(`Erro nao tratado: ${error.message}`, 'error');
});

process.on('unhandledRejection', (error) => {
  log(`Promise rejeitada: ${error}`, 'error');
});

// Iniciar
start();
