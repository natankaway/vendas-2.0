/**
 * KAWAY POS - Agente de Impressao
 *
 * Impressora: Elgin i7 Plus
 * Encoding: PC860 (Portugues)
 */

require('dotenv').config();
const fetch = require('node-fetch');
const net = require('net');
const fs = require('fs');
const path = require('path');
const https = require('https');
const http = require('http');

// Configuracoes
const config = {
  apiUrl: process.env.API_URL || 'http://localhost:3000',
  printerIp: process.env.PRINTER_IP || '192.168.1.100',
  printerPort: parseInt(process.env.PRINTER_PORT || '9100'),
  pollInterval: parseInt(process.env.POLL_INTERVAL || '3000'),
  printerId: process.env.PRINTER_ID || 'default',
  paperWidth: parseInt(process.env.PAPER_WIDTH || '48'),
  printLogo: process.env.PRINT_LOGO !== 'false',
};

// Estado
let isProcessing = false;

// Cache de logo
let logoCacheUrl = null;
let logoBuffer = null;

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

// ============================================
// COMANDOS ESC/POS
// ============================================
const ESC = 0x1B;
const GS = 0x1D;
const LF = 0x0A;

// Inicializar impressora
const CMD_INIT = Buffer.from([ESC, 0x40]);

// Selecionar code page PC860 (Portugues)
// ESC t 3 = PC860
const CMD_CODEPAGE_PC860 = Buffer.from([ESC, 0x74, 3]);

// Alinhar centro
const CMD_ALIGN_CENTER = Buffer.from([ESC, 0x61, 1]);

// Alinhar esquerda
const CMD_ALIGN_LEFT = Buffer.from([ESC, 0x61, 0]);

// Negrito ON
const CMD_BOLD_ON = Buffer.from([ESC, 0x45, 1]);

// Negrito OFF
const CMD_BOLD_OFF = Buffer.from([ESC, 0x45, 0]);

// Tamanho duplo (largura e altura)
const CMD_SIZE_DOUBLE = Buffer.from([GS, 0x21, 0x11]);

// Tamanho normal
const CMD_SIZE_NORMAL = Buffer.from([GS, 0x21, 0x00]);

// Cortar papel
const CMD_CUT = Buffer.from([GS, 0x56, 0x00]);

// Nova linha
const CMD_LF = Buffer.from([LF]);

// ============================================
// CONVERSAO UTF-8 PARA PC860
// ============================================
function utf8ToPC860(str) {
  // Mapa de caracteres UTF-8 para PC860
  const map = {
    'Ç': 0x80, 'ü': 0x81, 'é': 0x82, 'â': 0x83, 'ã': 0x84, 'à': 0x85,
    'Á': 0x86, 'ç': 0x87, 'ê': 0x88, 'Ê': 0x89, 'è': 0x8A, 'Í': 0x8B,
    'Ô': 0x8C, 'ì': 0x8D, 'Ã': 0x8E, 'Â': 0x8F,
    'É': 0x90, 'À': 0x91, 'È': 0x92, 'ô': 0x93, 'õ': 0x94, 'ò': 0x95,
    'Ú': 0x96, 'ù': 0x97, 'Ì': 0x98, 'Õ': 0x99, 'Ü': 0x9A, '¢': 0x9B,
    '£': 0x9C, 'Ù': 0x9D, '₧': 0x9E, 'Ó': 0x9F,
    'á': 0xA0, 'í': 0xA1, 'ó': 0xA2, 'ú': 0xA3, 'ñ': 0xA4, 'Ñ': 0xA5,
    'ª': 0xA6, 'º': 0xA7, '¿': 0xA8, 'Ò': 0xA9, '¬': 0xAA, '½': 0xAB,
    '¼': 0xAC, '¡': 0xAD, '«': 0xAE, '»': 0xAF,
  };

  const bytes = [];
  for (let i = 0; i < str.length; i++) {
    const char = str[i];
    if (map[char] !== undefined) {
      bytes.push(map[char]);
    } else {
      const code = char.charCodeAt(0);
      if (code < 128) {
        bytes.push(code);
      } else {
        // Caractere nao mapeado, usa ?
        bytes.push(0x3F);
      }
    }
  }
  return Buffer.from(bytes);
}

// ============================================
// FUNCOES DE TEXTO
// ============================================
function textLine(str) {
  return Buffer.concat([utf8ToPC860(str), CMD_LF]);
}

function formatLine(left, right, width) {
  const spaces = Math.max(1, width - left.length - right.length);
  return left + ' '.repeat(spaces) + right;
}

function formatCurrency(cents) {
  return `R$ ${(cents / 100).toFixed(2).replace('.', ',')}`;
}

function createSeparator(width, char = '-') {
  return char.repeat(width);
}

function createItemDivider(width) {
  const pattern = '. ';
  const repeats = Math.floor(width / pattern.length);
  return pattern.repeat(repeats);
}

// ============================================
// DOWNLOAD DA LOGO
// ============================================
async function downloadLogo(logoUrl) {
  if (!logoUrl) return null;

  if (logoCacheUrl === logoUrl && logoBuffer) {
    log('Usando logo do cache');
    return logoBuffer;
  }

  return new Promise((resolve) => {
    // Se for base64
    if (logoUrl.startsWith('data:image')) {
      try {
        const base64Data = logoUrl.split(',')[1];
        logoBuffer = Buffer.from(base64Data, 'base64');
        logoCacheUrl = logoUrl;
        log('Logo base64 carregada');
        resolve(logoBuffer);
      } catch (error) {
        log(`Erro ao processar logo: ${error.message}`, 'warning');
        resolve(null);
      }
      return;
    }

    // Download da URL
    log('Baixando logo...');
    const protocol = logoUrl.startsWith('https') ? https : http;

    const request = protocol.get(logoUrl, (response) => {
      if (response.statusCode !== 200) {
        log(`Erro HTTP ${response.statusCode}`, 'warning');
        resolve(null);
        return;
      }

      const chunks = [];
      response.on('data', (chunk) => chunks.push(chunk));
      response.on('end', () => {
        logoBuffer = Buffer.concat(chunks);
        logoCacheUrl = logoUrl;
        log('Logo baixada');
        resolve(logoBuffer);
      });
      response.on('error', () => resolve(null));
    });

    request.on('error', () => resolve(null));
    request.setTimeout(5000, () => {
      request.destroy();
      resolve(null);
    });
  });
}

// ============================================
// CONVERTER IMAGEM PARA ESC/POS
// ============================================
async function imageToEscPos(imageBuffer) {
  if (!imageBuffer) return null;

  try {
    // Tenta usar a biblioteca escpos para converter a imagem
    const escpos = require('escpos');

    return new Promise((resolve) => {
      // Salva em arquivo temporario
      const tempFile = path.join(__dirname, 'logo_temp.png');
      fs.writeFileSync(tempFile, imageBuffer);

      escpos.Image.load(tempFile, function(image) {
        if (!image) {
          resolve(null);
          return;
        }

        // Gera os bytes da imagem
        const width = image.width;
        const height = image.height;

        // Comando para imprimir imagem raster
        // GS v 0 m xL xH yL yH d1...dk
        const xL = (Math.ceil(width / 8)) & 0xFF;
        const xH = ((Math.ceil(width / 8)) >> 8) & 0xFF;
        const yL = height & 0xFF;
        const yH = (height >> 8) & 0xFF;

        const header = Buffer.from([GS, 0x76, 0x30, 0x00, xL, xH, yL, yH]);

        // Converte pixels para bytes
        const bytesPerLine = Math.ceil(width / 8);
        const imageData = [];

        for (let y = 0; y < height; y++) {
          for (let x = 0; x < bytesPerLine; x++) {
            let byte = 0;
            for (let bit = 0; bit < 8; bit++) {
              const px = x * 8 + bit;
              if (px < width) {
                const idx = (y * width + px) * 4;
                const pixels = image.data || image.pixels;
                if (pixels) {
                  const r = pixels[idx] || 0;
                  const g = pixels[idx + 1] || 0;
                  const b = pixels[idx + 2] || 0;
                  // Se pixel escuro, marca o bit
                  if ((r + g + b) / 3 < 128) {
                    byte |= (0x80 >> bit);
                  }
                }
              }
            }
            imageData.push(byte);
          }
        }

        resolve(Buffer.concat([header, Buffer.from(imageData)]));
      });
    });
  } catch (error) {
    log(`Erro ao converter imagem: ${error.message}`, 'warning');
    return null;
  }
}

// ============================================
// ENVIAR PARA IMPRESSORA
// ============================================
function sendToPrinter(data) {
  return new Promise((resolve, reject) => {
    const client = new net.Socket();

    client.setTimeout(10000);

    client.connect(config.printerPort, config.printerIp, () => {
      log('Conectado a impressora');
      client.write(data, () => {
        client.end();
      });
    });

    client.on('close', () => {
      resolve();
    });

    client.on('error', (err) => {
      reject(err);
    });

    client.on('timeout', () => {
      client.destroy();
      reject(new Error('Timeout'));
    });
  });
}

// ============================================
// MONTAR E IMPRIMIR RECIBO
// ============================================
async function printReceipt(receiptData) {
  const width = config.paperWidth;
  const separator = createSeparator(width, '-');
  const doubleSeparator = createSeparator(width, '=');
  const itemDivider = createItemDivider(width);

  const buffers = [];

  // Inicializar
  buffers.push(CMD_INIT);
  buffers.push(CMD_CODEPAGE_PC860);

  // Logo (se disponivel)
  if (config.printLogo && receiptData.company?.logo) {
    const imgBuffer = await downloadLogo(receiptData.company.logo);
    if (imgBuffer) {
      const escPosImg = await imageToEscPos(imgBuffer);
      if (escPosImg) {
        buffers.push(CMD_ALIGN_CENTER);
        buffers.push(escPosImg);
        buffers.push(CMD_LF);
      }
    }
  }

  // Cabecalho
  buffers.push(CMD_ALIGN_CENTER);
  buffers.push(CMD_BOLD_ON);
  buffers.push(CMD_SIZE_DOUBLE);
  buffers.push(textLine(receiptData.company?.name || 'KAWAY POS'));
  buffers.push(CMD_SIZE_NORMAL);
  buffers.push(CMD_BOLD_OFF);

  if (receiptData.company?.document) {
    buffers.push(textLine(receiptData.company.document));
  }
  if (receiptData.company?.address) {
    buffers.push(textLine(receiptData.company.address));
  }
  if (receiptData.company?.phone) {
    buffers.push(textLine(receiptData.company.phone));
  }

  buffers.push(CMD_LF);
  buffers.push(textLine('CUPOM NAO FISCAL'));

  // Data e Recibo
  buffers.push(textLine(separator));
  buffers.push(CMD_ALIGN_LEFT);
  buffers.push(CMD_BOLD_ON);
  buffers.push(textLine(formatLine('Data:', receiptData.date || '', width)));
  buffers.push(textLine(formatLine('Recibo:', receiptData.receipt_number || '', width)));

  // Cliente
  if (receiptData.customer?.name) {
    buffers.push(textLine(separator));
    buffers.push(textLine(formatLine('Cliente:', receiptData.customer.name, width)));

    if (receiptData.customer.address) {
      buffers.push(textLine('End: ' + receiptData.customer.address));
    }
    if (receiptData.customer.phone) {
      buffers.push(textLine(formatLine('Tel:', receiptData.customer.phone, width)));
    }
  }

  // Itens
  buffers.push(textLine(separator));

  if (receiptData.items && receiptData.items.length > 0) {
    receiptData.items.forEach((item, index) => {
      if (index > 0) {
        buffers.push(CMD_BOLD_OFF);
        buffers.push(textLine(itemDivider));
        buffers.push(CMD_BOLD_ON);
      }

      const productName = item.name || item.product_name || 'Produto';
      buffers.push(textLine(productName));

      const unit = item.unit || 'un';
      const qtyLine = `${item.quantity} ${unit} x ${formatCurrency(item.unit_price)}`;
      buffers.push(textLine(formatLine(qtyLine, formatCurrency(item.total), width)));
    });
  }

  // Totais
  buffers.push(textLine(doubleSeparator));

  if (receiptData.discount_amount && receiptData.discount_amount > 0) {
    buffers.push(textLine(formatLine('Subtotal:', formatCurrency(receiptData.subtotal), width)));
    buffers.push(textLine(formatLine('Desconto:', '-' + formatCurrency(receiptData.discount_amount), width)));
  }

  // TOTAL grande
  buffers.push(CMD_SIZE_DOUBLE);
  buffers.push(CMD_LF);
  buffers.push(textLine(formatLine('TOTAL', formatCurrency(receiptData.total), width - 8)));
  buffers.push(CMD_LF);
  buffers.push(CMD_SIZE_NORMAL);

  // Pagamento
  buffers.push(textLine(separator));
  const paymentLabel = receiptData.payment_method_label || receiptData.payment_method || '';
  buffers.push(textLine(formatLine('Pagamento:', paymentLabel, width)));

  if (receiptData.cash_received && receiptData.change !== undefined) {
    buffers.push(textLine(formatLine('Recebido:', formatCurrency(receiptData.cash_received), width)));
    buffers.push(textLine(formatLine('Troco:', formatCurrency(receiptData.change), width)));
  }

  // Rodape
  buffers.push(textLine(separator));
  buffers.push(CMD_BOLD_OFF);
  buffers.push(CMD_ALIGN_CENTER);
  buffers.push(CMD_LF);
  buffers.push(textLine('Obrigado pela preferência!'));
  buffers.push(textLine('Volte sempre!'));
  buffers.push(CMD_LF);
  buffers.push(CMD_LF);
  buffers.push(CMD_LF);

  // Cortar
  buffers.push(CMD_CUT);

  // Concatena tudo e envia
  const finalBuffer = Buffer.concat(buffers);
  await sendToPrinter(finalBuffer);
}

// ============================================
// BUSCAR E PROCESSAR JOBS
// ============================================
async function fetchPendingJobs() {
  try {
    const url = `${config.apiUrl}/api/print-queue/pending?printer_id=${config.printerId}&limit=5`;
    const response = await fetch(url);
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const result = await response.json();
    return result.data || [];
  } catch (error) {
    log(`Erro ao buscar jobs: ${error.message}`, 'error');
    return [];
  }
}

async function markJobCompleted(jobId, success = true, errorMessage = null) {
  try {
    const url = `${config.apiUrl}/api/print-queue/${jobId}`;
    await fetch(url, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        status: success ? 'completed' : 'failed',
        error_message: errorMessage,
      }),
    });
  } catch (error) {
    log(`Erro ao atualizar job: ${error.message}`, 'error');
  }
}

async function processJobs() {
  if (isProcessing) return;
  isProcessing = true;

  try {
    const jobs = await fetchPendingJobs();

    if (jobs.length === 0) {
      isProcessing = false;
      return;
    }

    log(`${jobs.length} job(s) pendente(s)`);

    for (const job of jobs) {
      try {
        log(`Imprimindo ${job.id.substring(0, 8)}...`);

        for (let i = 0; i < (job.copies || 1); i++) {
          await printReceipt(job.receipt_data);
        }

        await markJobCompleted(job.id, true);
        log(`Concluido!`, 'success');
      } catch (error) {
        log(`Erro: ${error.message}`, 'error');
        await markJobCompleted(job.id, false, error.message);
      }
    }
  } catch (error) {
    log(`Erro: ${error.message}`, 'error');
  }

  isProcessing = false;
}

// ============================================
// INICIAR
// ============================================
async function start() {
  console.log('');
  console.log('========================================');
  console.log('   KAWAY POS - Agente de Impressao');
  console.log('   Elgin i7 Plus - PC860');
  console.log('========================================');
  console.log('');

  log(`API: ${config.apiUrl}`);
  log(`Impressora: ${config.printerIp}:${config.printerPort}`);
  log(`Largura: ${config.paperWidth} caracteres`);
  log(`Logo: ${config.printLogo ? 'Sim' : 'Nao'}`);
  console.log('');

  log('Aguardando jobs...', 'success');
  console.log('');

  processJobs();
  setInterval(processJobs, config.pollInterval);
}

process.on('uncaughtException', (error) => {
  log(`Erro: ${error.message}`, 'error');
});

process.on('unhandledRejection', (error) => {
  log(`Erro: ${error}`, 'error');
});

start();
