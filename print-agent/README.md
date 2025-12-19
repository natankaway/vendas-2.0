# KAWAY POS - Agente de Impressão

Este programa conecta o sistema KAWAY POS à sua impressora térmica.
Ele roda no computador onde a impressora está conectada e imprime automaticamente os recibos.

## Requisitos

- **Node.js 18+** instalado no computador
- **Impressora térmica** (Elgin i7 Plus, Epson, Bematech, etc.)
- **Conexão com a internet** (para buscar os trabalhos de impressão)

## Instalação

### 1. Instalar Node.js

Se ainda não tem o Node.js instalado:
- Baixe em: https://nodejs.org/
- Escolha a versão LTS (recomendada)
- Instale seguindo o assistente

### 2. Configurar o Agente

1. Abra o terminal/prompt de comando na pasta `print-agent`
2. Execute:
   ```bash
   npm install
   ```

3. Copie o arquivo `.env.example` para `.env`:
   ```bash
   copy .env.example .env
   ```
   (No Linux/Mac use `cp` em vez de `copy`)

4. Edite o arquivo `.env` com suas configurações

### 3. Configurar a Impressora

#### Para impressora de REDE (recomendado para Elgin i7 Plus):

1. Configure um IP fixo na impressora (ex: 192.168.1.200)
2. No arquivo `.env`, configure:
   ```
   PRINTER_TYPE=network
   PRINTER_IP=192.168.1.200
   PRINTER_PORT=9100
   ```

#### Para impressora USB:

1. Conecte a impressora via USB
2. No arquivo `.env`, configure:
   ```
   PRINTER_TYPE=usb
   ```

### 4. Configurar URL do Sistema

No arquivo `.env`, configure a URL do seu sistema:

```
# Se o sistema roda localmente:
API_URL=http://192.168.1.100:3000

# Se o sistema está na nuvem:
API_URL=https://seu-sistema.vercel.app
```

## Executar

```bash
npm start
```

Você verá algo como:
```
╔════════════════════════════════════════════╗
║     KAWAY POS - Agente de Impressão        ║
╚════════════════════════════════════════════╝

[10:30:45] [INFO] API URL: http://192.168.1.100:3000
[10:30:45] [INFO] Tipo de impressora: network
[10:30:45] [INFO] ID da impressora: default
[10:30:45] [INFO] Intervalo de verificação: 3000ms

[10:30:45] [INFO] Conectando à impressora de rede: 192.168.1.200:9100
[10:30:45] [OK] Impressora configurada com sucesso!
[10:30:45] [OK] Aguardando trabalhos de impressão...
```

## Executar Automaticamente ao Ligar o PC

### Windows

1. Crie um arquivo `iniciar-impressora.bat` com:
   ```batch
   @echo off
   cd /d "C:\caminho\para\print-agent"
   node index.js
   ```

2. Pressione `Win + R`, digite `shell:startup` e pressione Enter
3. Copie o arquivo `.bat` para esta pasta

### Linux

1. Adicione ao crontab:
   ```bash
   crontab -e
   ```

2. Adicione a linha:
   ```
   @reboot cd /caminho/para/print-agent && node index.js
   ```

## Solução de Problemas

### "Erro ao conectar à impressora"
- Verifique se a impressora está ligada
- Verifique o IP da impressora (para rede)
- Verifique se o cabo USB está conectado (para USB)

### "Erro ao buscar jobs"
- Verifique a URL do sistema no arquivo `.env`
- Verifique sua conexão com a internet

### Impressora USB não detectada (Windows)
- Instale o driver da impressora
- Pode ser necessário executar como Administrador

## Configuração da Elgin i7 Plus

### Configurar IP Fixo na Elgin:

1. Desligue a impressora
2. Segure o botão FEED e ligue a impressora
3. A impressora imprimirá as configurações de rede
4. Use o utilitário da Elgin para configurar IP fixo
5. Anote o IP e configure no `.env`

### Porta padrão: 9100

A maioria das impressoras térmicas usa a porta 9100 para comunicação de rede.
