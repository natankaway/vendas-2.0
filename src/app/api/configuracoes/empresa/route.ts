/**
 * API de Configurações da Empresa
 *
 * GET - Retorna as configurações da empresa
 * PUT - Atualiza as configurações da empresa
 */

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

export const dynamic = 'force-dynamic';

function getSupabase() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Supabase não configurado');
  }

  return createClient(supabaseUrl, supabaseKey);
}

export async function GET() {
  try {
    const supabase = getSupabase();

    const { data, error } = await supabase
      .from('company_settings')
      .select('*')
      .eq('id', 'default')
      .single();

    if (error) {
      // Se a tabela não existe ou não há dados, retorna valores padrão
      if (error.code === 'PGRST116' || error.code === '42P01') {
        return NextResponse.json({
          success: true,
          data: {
            name: '',
            logo: null,
            address: '',
            phone: '',
            document: '',
          },
        });
      }

      console.error('Erro ao buscar configurações:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao buscar configurações' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data: {
        name: data?.name || '',
        logo: data?.logo || null,
        address: data?.address || '',
        phone: data?.phone || '',
        document: data?.document || '',
      },
    });
  } catch (error) {
    console.error('Erro na API de configurações:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}

export async function PUT(request: NextRequest) {
  try {
    const supabase = getSupabase();
    const body = await request.json();

    const { name, logo, address, phone, document } = body;

    // Tenta fazer upsert - se não existe, cria; se existe, atualiza
    const { data, error } = await supabase
      .from('company_settings')
      .upsert({
        id: 'default',
        name: name || '',
        logo: logo || null,
        address: address || '',
        phone: phone || '',
        document: document || '',
        updated_at: new Date().toISOString(),
      })
      .select()
      .single();

    if (error) {
      console.error('Erro ao salvar configurações:', error);
      return NextResponse.json(
        { success: false, error: 'Erro ao salvar configurações' },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      data: {
        name: data?.name || '',
        logo: data?.logo || null,
        address: data?.address || '',
        phone: data?.phone || '',
        document: data?.document || '',
      },
    });
  } catch (error) {
    console.error('Erro na API de configurações:', error);
    return NextResponse.json(
      { success: false, error: 'Erro interno do servidor' },
      { status: 500 }
    );
  }
}
