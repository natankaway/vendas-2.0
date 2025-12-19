/**
 * Script de Migração: SQL Server → Supabase
 *
 * Este script lê os arquivos CSV exportados do SQL Server
 * e gera comandos SQL para inserir no Supabase.
 *
 * Uso:
 *   node scripts/migrate-from-sqlserver.js
 *
 * Isso irá gerar arquivos SQL na pasta scripts/migration-output/
 * que podem ser executados no Supabase SQL Editor.
 */

const fs = require('fs');
const path = require('path');
const { v4: uuidv4 } = require('uuid');

// Diretório de saída
const OUTPUT_DIR = path.join(__dirname, 'migration-output');

// Mapeamentos de IDs antigos para novos UUIDs
const idMaps = {
  categories: {},  // oldId -> newUUID
  customers: {},   // oldId -> newUUID
  products: {},    // oldId -> newUUID
  sales: {},       // oldId -> newUUID
};

// Função para ler CSV com separador ;
function parseCSV(filePath) {
  const content = fs.readFileSync(filePath, 'utf-8');
  // Remove BOM se existir
  const cleanContent = content.replace(/^\uFEFF/, '');
  const lines = cleanContent.split('\n').filter(line => line.trim());

  return lines.map(line => {
    // Parse considerando campos entre aspas
    const values = [];
    let current = '';
    let inQuotes = false;

    for (let i = 0; i < line.length; i++) {
      const char = line[i];
      if (char === '"') {
        inQuotes = !inQuotes;
      } else if (char === ';' && !inQuotes) {
        values.push(current.trim());
        current = '';
      } else {
        current += char;
      }
    }
    values.push(current.trim());

    return values;
  });
}

// Escapa string para SQL
function escapeSQL(str) {
  if (str === null || str === undefined || str === 'NULL') return 'NULL';
  if (typeof str !== 'string') str = String(str);
  return `'${str.replace(/'/g, "''")}'`;
}

// Converte data BR para ISO
function convertDate(dateStr) {
  if (!dateStr || dateStr === 'NULL') return 'NULL';

  // Formato: DD/MM/YYYY HH:MM:SS ou YYYY-MM-DD
  if (dateStr.includes('/')) {
    const [datePart, timePart] = dateStr.split(' ');
    const [day, month, year] = datePart.split('/');
    const time = timePart || '00:00:00';
    return `'${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')} ${time}'`;
  }

  return `'${dateStr}'`;
}

// Converte valor decimal BR para centavos
function toCents(value) {
  if (!value || value === 'NULL') return 0;
  // Remove espaços e converte vírgula para ponto
  const num = parseFloat(String(value).replace(',', '.').trim());
  return isNaN(num) ? 0 : Math.round(num * 100);
}

// Mapeia forma de pagamento
function mapPaymentMethod(method) {
  if (!method || method === 'NULL') return 'cash';
  const map = {
    'Dinheiro': 'cash',
    'dinheiro': 'cash',
    'Cartão': 'credit_card',
    'cartão': 'credit_card',
    'Cartao': 'credit_card',
    'Crédito': 'credit_card',
    'Credito': 'credit_card',
    'Débito': 'debit_card',
    'Debito': 'debit_card',
    'PIX': 'pix',
    'Pix': 'pix',
    'pix': 'pix',
  };
  return map[method] || 'cash';
}

// Mapeia status da venda
function mapSaleStatus(status) {
  if (!status || status === 'NULL') return 'completed';
  const map = {
    'Pago': 'completed',
    'pago': 'completed',
    'Concluído': 'completed',
    'Concluido': 'completed',
    'Pendente': 'pending',
    'pendente': 'pending',
    'Cancelado': 'cancelled',
    'cancelado': 'cancelled',
  };
  return map[status] || 'completed';
}

// Limpa telefone
function cleanPhone(phone) {
  if (!phone || phone === 'NULL') return null;
  const digits = phone.replace(/\D/g, '');
  return digits.length >= 8 ? digits : null;
}

// Limpa CPF
function cleanDocument(doc) {
  if (!doc || doc === 'NULL') return null;
  const digits = doc.replace(/\D/g, '');
  return digits.length >= 11 ? digits : null;
}

// ============================================================================
// MIGRAÇÃO DE CATEGORIAS
// ============================================================================
function migrateCategories() {
  console.log('Migrando categorias...');
  const rows = parseCSV(path.join(__dirname, '..', 'categorias.csv'));

  let sql = '-- Migração de Categorias\n';
  sql += '-- Total: ' + rows.length + ' registros\n\n';

  const now = new Date().toISOString();

  rows.forEach(row => {
    const [oldId, name] = row;
    if (!name) return;

    const newId = uuidv4();
    idMaps.categories[oldId] = newId;

    sql += `INSERT INTO categories (id, name, description, color, is_active, created_at, updated_at) VALUES (\n`;
    sql += `  '${newId}',\n`;
    sql += `  ${escapeSQL(name)},\n`;
    sql += `  NULL,\n`;
    sql += `  '#3B82F6',\n`;
    sql += `  true,\n`;
    sql += `  '${now}',\n`;
    sql += `  '${now}'\n`;
    sql += `) ON CONFLICT (id) DO NOTHING;\n\n`;
  });

  return sql;
}

// ============================================================================
// MIGRAÇÃO DE CLIENTES
// ============================================================================
function migrateCustomers() {
  console.log('Migrando clientes...');
  const rows = parseCSV(path.join(__dirname, '..', 'clientes.csv'));

  let sql = '-- Migração de Clientes\n';
  sql += '-- Total: ' + rows.length + ' registros\n\n';

  const now = new Date().toISOString();

  rows.forEach(row => {
    // IDCLIENTE;Nome;CPF;Descricao;UF;Cidade;Rua;Bairro;Numero;Telefone
    const [oldId, nome, cpf, descricao, uf, cidade, rua, bairro, numero, telefone] = row;
    if (!nome) return;

    const newId = uuidv4();
    idMaps.customers[oldId] = newId;
    idMaps.customers[nome.trim().toLowerCase()] = newId; // Também mapeia por nome

    // Monta endereço completo
    let address = '';
    if (rua && rua !== 'NULL') address += rua;
    if (numero && numero !== 'NULL') address += (address ? ', ' : '') + 'Nº ' + numero;
    if (bairro && bairro !== 'NULL') address += (address ? ' - ' : '') + bairro;

    const phone = cleanPhone(telefone);
    const document = cleanDocument(cpf);
    const documentType = document ? (document.length <= 11 ? 'cpf' : 'cnpj') : null;

    sql += `INSERT INTO customers (id, name, email, phone, document, document_type, address, city, state, zip_code, notes, credit_limit, current_balance, total_purchases, created_at, updated_at) VALUES (\n`;
    sql += `  '${newId}',\n`;
    sql += `  ${escapeSQL(nome)},\n`;
    sql += `  NULL,\n`;
    sql += `  ${phone ? escapeSQL(phone) : 'NULL'},\n`;
    sql += `  ${document ? escapeSQL(document) : 'NULL'},\n`;
    sql += `  ${documentType ? escapeSQL(documentType) : 'NULL'},\n`;
    sql += `  ${address ? escapeSQL(address) : 'NULL'},\n`;
    sql += `  ${cidade && cidade !== 'NULL' ? escapeSQL(cidade) : 'NULL'},\n`;
    sql += `  ${uf && uf !== 'NULL' ? escapeSQL(uf) : 'NULL'},\n`;
    sql += `  NULL,\n`;
    sql += `  ${descricao && descricao !== 'NULL' ? escapeSQL(descricao) : 'NULL'},\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  '${now}',\n`;
    sql += `  '${now}'\n`;
    sql += `) ON CONFLICT (id) DO NOTHING;\n\n`;
  });

  return sql;
}

// ============================================================================
// MIGRAÇÃO DE PRODUTOS
// ============================================================================
function migrateProducts() {
  console.log('Migrando produtos...');
  const rows = parseCSV(path.join(__dirname, '..', 'produtos.csv'));

  let sql = '-- Migração de Produtos\n';
  sql += '-- Total: ' + rows.length + ' registros\n\n';

  const now = new Date().toISOString();

  rows.forEach(row => {
    // IDPRODUTO;Produto;Marca;Categoria;Fornecedor;Medida;Stock;Valor_Custo;Valor_Venda;Vencimento;Codigo_Barras
    const [oldId, nome, marca, categoria, fornecedor, medida, stock, valorCusto, valorVenda, vencimento, codigoBarras] = row;
    if (!nome) return;

    const newId = uuidv4();
    idMaps.products[oldId] = newId;

    // Busca categoria pelo nome
    let categoryId = 'NULL';
    for (const [catId, catName] of Object.entries(idMaps.categories)) {
      // Busca por nome aproximado não é possível aqui, usaremos NULL
    }

    // Converte valores para centavos
    const price = toCents(valorVenda);
    const cost = toCents(valorCusto);
    const stockQty = parseInt(stock) || 0;

    // SKU a partir do código de barras ou gerado
    const sku = codigoBarras && codigoBarras !== 'NULL' ? codigoBarras : `PROD-${oldId}`;

    // Data de vencimento
    let expirationDate = 'NULL';
    if (vencimento && vencimento !== 'NULL') {
      // Formato YYYY-MM-DD já está correto
      expirationDate = `'${vencimento}'`;
    }

    sql += `INSERT INTO products (id, name, description, sku, barcode, category_id, price, cost, unit, stock_quantity, min_stock_quantity, is_active, is_weighable, expiration_date, created_at, updated_at) VALUES (\n`;
    sql += `  '${newId}',\n`;
    sql += `  ${escapeSQL(nome)},\n`;
    sql += `  NULL,\n`;
    sql += `  ${escapeSQL(sku)},\n`;
    sql += `  ${codigoBarras && codigoBarras !== 'NULL' ? escapeSQL(codigoBarras) : 'NULL'},\n`;
    sql += `  NULL,\n`;  // category_id - pode ser atualizado depois
    sql += `  ${price},\n`;
    sql += `  ${cost},\n`;
    sql += `  ${escapeSQL(medida && medida !== 'NULL' ? medida : 'UN')},\n`;
    sql += `  ${stockQty},\n`;
    sql += `  5,\n`;
    sql += `  true,\n`;
    sql += `  false,\n`;
    sql += `  ${expirationDate},\n`;
    sql += `  '${now}',\n`;
    sql += `  '${now}'\n`;
    sql += `) ON CONFLICT (id) DO NOTHING;\n\n`;
  });

  return sql;
}

// ============================================================================
// MIGRAÇÃO DE VENDAS
// ============================================================================
function migrateSales() {
  console.log('Migrando vendas...');
  const rows = parseCSV(path.join(__dirname, '..', 'ventas.csv'));

  let sql = '-- Migração de Vendas\n';
  sql += '-- Total: ' + rows.length + ' registros\n\n';

  // Precisa de um user_id padrão - criar um usuário sistema
  const systemUserId = uuidv4();
  sql += `-- Usuário sistema para vendas migradas\n`;
  sql += `INSERT INTO users (id, email, name, role, is_active, created_at, updated_at) VALUES (\n`;
  sql += `  '${systemUserId}',\n`;
  sql += `  'sistema@migrado.local',\n`;
  sql += `  'Sistema (Migração)',\n`;
  sql += `  'admin',\n`;
  sql += `  true,\n`;
  sql += `  NOW(),\n`;
  sql += `  NOW()\n`;
  sql += `) ON CONFLICT (email) DO UPDATE SET id = EXCLUDED.id RETURNING id;\n\n`;

  rows.forEach(row => {
    // cod_venda;Nome;Endereco;Data;estado_venda;total;Forma_Pagamento
    const [oldId, nomeCliente, endereco, data, estadoVenda, total, formaPagamento] = row;
    if (!oldId) return;

    const newId = uuidv4();
    idMaps.sales[oldId] = newId;

    // Busca cliente pelo nome
    const customerKey = nomeCliente ? nomeCliente.trim().toLowerCase() : null;
    const customerId = customerKey && idMaps.customers[customerKey] ? `'${idMaps.customers[customerKey]}'` : 'NULL';

    // Converte valores
    const totalCents = toCents(total);
    const status = mapSaleStatus(estadoVenda);
    const paymentMethod = mapPaymentMethod(formaPagamento);
    const createdAt = convertDate(data);

    // Gera número de recibo baseado na data
    const receiptNumber = `MIG-${oldId.toString().padStart(6, '0')}`;

    sql += `INSERT INTO sales (id, receipt_number, customer_id, user_id, status, subtotal, discount_amount, discount_percent, tax_amount, total, payment_method, notes, completed_at, created_at, updated_at) VALUES (\n`;
    sql += `  '${newId}',\n`;
    sql += `  ${escapeSQL(receiptNumber)},\n`;
    sql += `  ${customerId},\n`;
    sql += `  '${systemUserId}',\n`;
    sql += `  '${status}',\n`;
    sql += `  ${totalCents},\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  ${totalCents},\n`;
    sql += `  '${paymentMethod}',\n`;
    sql += `  ${escapeSQL('Venda migrada do sistema anterior')},\n`;
    sql += `  ${status === 'completed' ? createdAt : 'NULL'},\n`;
    sql += `  ${createdAt},\n`;
    sql += `  ${createdAt}\n`;
    sql += `) ON CONFLICT (id) DO NOTHING;\n\n`;
  });

  return sql;
}

// ============================================================================
// MIGRAÇÃO DE ITENS DE VENDA
// ============================================================================
function migrateSaleItems() {
  console.log('Migrando itens de venda...');
  const rows = parseCSV(path.join(__dirname, '..', 'detalleventa.csv'));

  let sql = '-- Migração de Itens de Venda\n';
  sql += '-- Total: ' + rows.length + ' registros\n\n';

  const now = new Date().toISOString();

  rows.forEach(row => {
    // Id_Det;codi_venda;IDPROD;Preço;Quant;SubTotal
    const [idDet, codiVenda, idProd, preco, quant, subTotal] = row;
    if (!idDet || !codiVenda) return;

    const newId = uuidv4();
    const saleId = idMaps.sales[codiVenda];
    const productId = idMaps.products[idProd];

    if (!saleId) {
      // Venda não encontrada, pular
      return;
    }

    // Converte valores
    const unitPrice = toCents(preco);
    const quantity = parseFloat(quant) || 1;
    const total = toCents(subTotal);

    sql += `INSERT INTO sale_items (id, sale_id, product_id, product_name, product_sku, quantity, unit_price, discount_amount, discount_percent, tax_amount, total, unit, created_at, updated_at) VALUES (\n`;
    sql += `  '${newId}',\n`;
    sql += `  '${saleId}',\n`;
    sql += `  ${productId ? `'${productId}'` : 'NULL'},\n`;
    sql += `  'Produto ${idProd}',\n`;  // Nome será atualizado depois se necessário
    sql += `  'PROD-${idProd}',\n`;
    sql += `  ${quantity},\n`;
    sql += `  ${unitPrice},\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  0,\n`;
    sql += `  ${total},\n`;
    sql += `  'UN',\n`;
    sql += `  '${now}',\n`;
    sql += `  '${now}'\n`;
    sql += `) ON CONFLICT (id) DO NOTHING;\n\n`;
  });

  return sql;
}

// ============================================================================
// ATUALIZAÇÃO DE NOMES DE PRODUTOS NOS ITENS
// ============================================================================
function generateProductNameUpdates() {
  console.log('Gerando atualizações de nomes de produtos...');
  const produtos = parseCSV(path.join(__dirname, '..', 'produtos.csv'));

  let sql = '-- Atualização de nomes de produtos nos itens de venda\n\n';

  produtos.forEach(row => {
    const [oldId, nome, marca, categoria, fornecedor, medida] = row;
    if (!oldId || !nome) return;

    const productId = idMaps.products[oldId];
    if (!productId) return;

    sql += `UPDATE sale_items SET product_name = ${escapeSQL(nome)}, unit = ${escapeSQL(medida || 'UN')} WHERE product_id = '${productId}';\n`;
  });

  return sql;
}

// ============================================================================
// ATUALIZAÇÃO DE TOTAIS DE COMPRAS DOS CLIENTES
// ============================================================================
function generateCustomerTotalsUpdate() {
  let sql = '\n-- Atualização de totais de compras dos clientes\n';
  sql += `UPDATE customers SET total_purchases = COALESCE((
    SELECT SUM(s.total)
    FROM sales s
    WHERE s.customer_id = customers.id
    AND s.status = 'completed'
  ), 0);\n`;

  return sql;
}

// ============================================================================
// MAIN
// ============================================================================
async function main() {
  console.log('='.repeat(60));
  console.log('Script de Migração: SQL Server → Supabase');
  console.log('='.repeat(60));

  // Cria diretório de saída
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  }

  // Executa migrações na ordem correta
  const migrations = [
    { name: '01_categories', fn: migrateCategories },
    { name: '02_customers', fn: migrateCustomers },
    { name: '03_products', fn: migrateProducts },
    { name: '04_sales', fn: migrateSales },
    { name: '05_sale_items', fn: migrateSaleItems },
    { name: '06_update_product_names', fn: generateProductNameUpdates },
    { name: '07_update_customer_totals', fn: generateCustomerTotalsUpdate },
  ];

  let fullSQL = '-- Script de Migração Completo\n';
  fullSQL += '-- Gerado em: ' + new Date().toISOString() + '\n';
  fullSQL += '-- IMPORTANTE: Execute a migration 007_add_expiration_date_to_products.sql ANTES deste script!\n\n';
  fullSQL += 'BEGIN;\n\n';

  for (const migration of migrations) {
    console.log(`\nExecutando: ${migration.name}...`);
    const sql = migration.fn();

    // Salva arquivo individual
    fs.writeFileSync(
      path.join(OUTPUT_DIR, `${migration.name}.sql`),
      sql,
      'utf-8'
    );

    fullSQL += `-- ${'='.repeat(70)}\n`;
    fullSQL += `-- ${migration.name.toUpperCase()}\n`;
    fullSQL += `-- ${'='.repeat(70)}\n\n`;
    fullSQL += sql + '\n';
  }

  fullSQL += '\nCOMMIT;\n';

  // Salva script completo
  fs.writeFileSync(
    path.join(OUTPUT_DIR, 'full_migration.sql'),
    fullSQL,
    'utf-8'
  );

  console.log('\n' + '='.repeat(60));
  console.log('Migração concluída!');
  console.log('='.repeat(60));
  console.log(`\nArquivos gerados em: ${OUTPUT_DIR}`);
  console.log('\nPróximos passos:');
  console.log('1. Execute no Supabase: scripts/migrations/007_add_expiration_date_to_products.sql');
  console.log('2. Execute no Supabase: scripts/migration-output/full_migration.sql');
  console.log('\nOu execute os arquivos individuais na ordem numérica.');
}

main().catch(console.error);
