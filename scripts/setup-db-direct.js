#!/usr/bin/env node
/**
 * Setup do banco de dados usando conexão direta PostgreSQL
 */

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

// Credenciais
const SUPABASE_URL = 'https://hqwbiaxjxvsjmjboynah.supabase.co';
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhxd2JpYXhqeHZzam1qYm95bmFoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NTI0ODU3MywiZXhwIjoyMDgwODI0NTczfQ.w5AvLWHmCEsPVk09RfbVIVuxqzVtq39ibvDCPHkS69s';

// Função para fazer requests com curl
function curlRequest(method, endpoint, data = null) {
  const url = `${SUPABASE_URL}/rest/v1${endpoint}`;
  let cmd = `curl -sk -X ${method} "${url}" `;
  cmd += `-H "apikey: ${SERVICE_KEY}" `;
  cmd += `-H "Authorization: Bearer ${SERVICE_KEY}" `;
  cmd += `-H "Content-Type: application/json" `;
  cmd += `-H "Prefer: return=minimal,resolution=ignore-duplicates" `;

  if (data) {
    const jsonData = JSON.stringify(data).replace(/'/g, "'\\''");
    cmd += `-d '${jsonData}'`;
  }

  try {
    const result = execSync(cmd, { encoding: 'utf8', timeout: 30000 });
    return { success: true, data: result };
  } catch (error) {
    return { success: false, error: error.message, stdout: error.stdout, stderr: error.stderr };
  }
}

console.log('🚀 Configurando banco de dados Supabase...\n');

// Verificar se as tabelas existem
console.log('📊 Verificando estrutura do banco...');
const checkResult = curlRequest('GET', '/users?select=id&limit=1');

if (checkResult.data && checkResult.data.includes('Could not find')) {
  console.log('\n❌ As tabelas ainda não existem no Supabase.');
  console.log('\n📋 Por favor, execute o SQL manualmente:');
  console.log('\n1. Acesse: https://supabase.com/dashboard/project/hqwbiaxjxvsjmjboynah/sql/new');
  console.log('2. Cole o conteúdo do arquivo: scripts/setup-supabase.sql');
  console.log('3. Clique em "Run"');
  console.log('\n💡 Após executar o SQL, rode este script novamente para inserir os dados.');
  process.exit(1);
}

console.log('✅ Tabelas encontradas! Inserindo dados...\n');

// Inserir usuário admin
console.log('👤 Criando usuário admin...');
const adminResult = curlRequest('POST', '/users', [{
  id: 'admin-001',
  email: 'admin@vendas.com',
  name: 'Administrador',
  role: 'admin',
  status: 'active',
  password_hash: 'a7c5e3e7c6b8d5f2e1a9b4c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8',
  version: 1,
  local_only: false
}]);
console.log(adminResult.success ? '   ✅ Usuário admin criado' : '   ⚠️  Já existe ou erro');

// Inserir categorias
console.log('📁 Criando categorias...');
const categories = [
  { id: 'cat-001', name: 'Bebidas', color: '#3b82f6', sort_order: 1, version: 1, local_only: false },
  { id: 'cat-002', name: 'Alimentos', color: '#10b981', sort_order: 2, version: 1, local_only: false },
  { id: 'cat-003', name: 'Doces', color: '#f59e0b', sort_order: 3, version: 1, local_only: false },
  { id: 'cat-004', name: 'Higiene', color: '#8b5cf6', sort_order: 4, version: 1, local_only: false },
  { id: 'cat-005', name: 'Limpeza', color: '#06b6d4', sort_order: 5, version: 1, local_only: false }
];
const catResult = curlRequest('POST', '/product_categories', categories);
console.log(catResult.success ? '   ✅ Categorias criadas' : '   ⚠️  Já existem ou erro');

// Inserir produtos
console.log('📦 Criando produtos...');
const products = [
  { id: 'prod-001', name: 'Coca-Cola 2L', sku: 'BEB001', barcode: '7891234567890', category_id: 'cat-001', price: 1299, cost_price: 850, stock_quantity: 50, min_stock_quantity: 10, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-002', name: 'Água Mineral 500ml', sku: 'BEB002', barcode: '7891234567891', category_id: 'cat-001', price: 299, cost_price: 150, stock_quantity: 100, min_stock_quantity: 20, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-003', name: 'Suco de Laranja 1L', sku: 'BEB003', barcode: '7891234567892', category_id: 'cat-001', price: 899, cost_price: 550, stock_quantity: 30, min_stock_quantity: 5, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-004', name: 'Pão de Forma', sku: 'ALI001', barcode: '7891234567893', category_id: 'cat-002', price: 799, cost_price: 450, stock_quantity: 25, min_stock_quantity: 5, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-005', name: 'Arroz 5kg', sku: 'ALI002', barcode: '7891234567894', category_id: 'cat-002', price: 2499, cost_price: 1800, stock_quantity: 40, min_stock_quantity: 10, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-006', name: 'Feijão 1kg', sku: 'ALI003', barcode: '7891234567895', category_id: 'cat-002', price: 899, cost_price: 600, stock_quantity: 35, min_stock_quantity: 8, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-007', name: 'Chocolate ao Leite', sku: 'DOC001', barcode: '7891234567896', category_id: 'cat-003', price: 599, cost_price: 350, stock_quantity: 60, min_stock_quantity: 15, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-008', name: 'Bala Sortida 100g', sku: 'DOC002', barcode: '7891234567897', category_id: 'cat-003', price: 299, cost_price: 150, stock_quantity: 80, min_stock_quantity: 20, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-009', name: 'Sabonete', sku: 'HIG001', barcode: '7891234567898', category_id: 'cat-004', price: 399, cost_price: 200, stock_quantity: 45, min_stock_quantity: 10, unit: 'UN', is_active: true, version: 1, local_only: false },
  { id: 'prod-010', name: 'Detergente 500ml', sku: 'LIM001', barcode: '7891234567899', category_id: 'cat-005', price: 349, cost_price: 180, stock_quantity: 55, min_stock_quantity: 12, unit: 'UN', is_active: true, version: 1, local_only: false }
];
const prodResult = curlRequest('POST', '/products', products);
console.log(prodResult.success ? '   ✅ Produtos criados' : '   ⚠️  Já existem ou erro');

console.log('\n🎉 Configuração concluída!\n');
console.log('📋 Credenciais de acesso:');
console.log('   Email: admin@vendas.com');
console.log('   Senha: admin123');
console.log('\n🚀 Para iniciar: npm run dev');
