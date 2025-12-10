/**
 * Inicialização do Banco Local
 *
 * Esta versão simplificada não usa SQLite nativo.
 * O sistema funciona diretamente com Supabase.
 */

async function initLocalDb(): Promise<void> {
  console.log('ℹ️  Versão simplificada - usando apenas Supabase');
  console.log('✅ Pronto para uso!');
}

// Executa se chamado diretamente
initLocalDb().catch((error) => {
  console.error('Erro:', error);
  process.exit(1);
});

export { initLocalDb };
