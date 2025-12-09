/**
 * Script para gerar ícones PWA
 *
 * Execute: node scripts/generate-icons.js
 *
 * Este script cria ícones SVG simples que podem ser convertidos para PNG
 * usando ferramentas online ou bibliotecas como sharp.
 */

const fs = require('fs');
const path = require('path');

const ICONS_DIR = path.join(__dirname, '../public/icons');

// Tamanhos de ícones necessários para PWA
const sizes = [72, 96, 128, 144, 152, 192, 384, 512];

// Template SVG do ícone
const createSvgIcon = (size) => {
  const fontSize = Math.round(size * 0.35);
  const radius = Math.round(size * 0.15);

  return `<?xml version="1.0" encoding="UTF-8"?>
<svg width="${size}" height="${size}" viewBox="0 0 ${size} ${size}" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#3b82f6"/>
      <stop offset="100%" style="stop-color:#1d4ed8"/>
    </linearGradient>
  </defs>
  <rect width="${size}" height="${size}" rx="${radius}" fill="url(#bg)"/>
  <text x="50%" y="55%" font-family="Arial, sans-serif" font-size="${fontSize}" font-weight="bold" fill="white" text-anchor="middle" dominant-baseline="middle">PDV</text>
</svg>`;
};

// Criar diretório se não existir
if (!fs.existsSync(ICONS_DIR)) {
  fs.mkdirSync(ICONS_DIR, { recursive: true });
}

// Gerar ícones SVG
console.log('Gerando ícones PWA...');

sizes.forEach(size => {
  const svg = createSvgIcon(size);
  const filename = `icon-${size}x${size}.svg`;
  const filepath = path.join(ICONS_DIR, filename);

  fs.writeFileSync(filepath, svg);
  console.log(`  Criado: ${filename}`);
});

// Criar ícones de atalho
const shortcuts = ['pdv', 'products', 'reports'];
shortcuts.forEach(name => {
  const svg = createSvgIcon(96);
  const filename = `shortcut-${name}.svg`;
  const filepath = path.join(ICONS_DIR, filename);

  fs.writeFileSync(filepath, svg);
  console.log(`  Criado: ${filename}`);
});

console.log('\\nÍcones gerados com sucesso!');
console.log('\\nNota: Os ícones foram gerados como SVG.');
console.log('Para converter para PNG, você pode usar:');
console.log('  - https://svgtopng.com/');
console.log('  - npm install sharp');
console.log('  - Figma/Illustrator');
