/**
 * Tipos do Banco de Dados Supabase
 *
 * Este arquivo define os tipos TypeScript para as tabelas do Supabase.
 * Em produção, esses tipos devem ser gerados automaticamente usando:
 * npx supabase gen types typescript --project-id <project-id> > src/lib/supabase/database.types.ts
 *
 * Por enquanto, definimos manualmente para match com nossos schemas.
 */

export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export interface Database {
  public: {
    Tables: {
      users: {
        Row: {
          id: string;
          email: string;
          name: string;
          password_hash: string | null;
          role: 'admin' | 'manager' | 'cashier';
          status: 'active' | 'inactive' | 'pending';
          avatar_url: string | null;
          phone: string | null;
          last_login_at: string | null;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          email: string;
          name: string;
          password_hash?: string | null;
          role?: 'admin' | 'manager' | 'cashier';
          status?: 'active' | 'inactive' | 'pending';
          avatar_url?: string | null;
          phone?: string | null;
          last_login_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          email?: string;
          name?: string;
          password_hash?: string | null;
          role?: 'admin' | 'manager' | 'cashier';
          status?: 'active' | 'inactive' | 'pending';
          avatar_url?: string | null;
          phone?: string | null;
          last_login_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      customers: {
        Row: {
          id: string;
          name: string;
          email: string | null;
          phone: string | null;
          document: string | null;
          document_type: 'cpf' | 'cnpj' | null;
          address: string | null;
          city: string | null;
          state: string | null;
          zip_code: string | null;
          notes: string | null;
          credit_limit: number;
          current_balance: number;
          total_purchases: number;
          last_purchase_at: string | null;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          name: string;
          email?: string | null;
          phone?: string | null;
          document?: string | null;
          document_type?: 'cpf' | 'cnpj' | null;
          address?: string | null;
          city?: string | null;
          state?: string | null;
          zip_code?: string | null;
          notes?: string | null;
          credit_limit?: number;
          current_balance?: number;
          total_purchases?: number;
          last_purchase_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          name?: string;
          email?: string | null;
          phone?: string | null;
          document?: string | null;
          document_type?: 'cpf' | 'cnpj' | null;
          address?: string | null;
          city?: string | null;
          state?: string | null;
          zip_code?: string | null;
          notes?: string | null;
          credit_limit?: number;
          current_balance?: number;
          total_purchases?: number;
          last_purchase_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      product_categories: {
        Row: {
          id: string;
          name: string;
          description: string | null;
          color: string | null;
          icon: string | null;
          parent_id: string | null;
          sort_order: number;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          name: string;
          description?: string | null;
          color?: string | null;
          icon?: string | null;
          parent_id?: string | null;
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          name?: string;
          description?: string | null;
          color?: string | null;
          icon?: string | null;
          parent_id?: string | null;
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      products: {
        Row: {
          id: string;
          name: string;
          description: string | null;
          sku: string;
          barcode: string | null;
          category_id: string | null;
          price: number;
          cost_price: number;
          stock_quantity: number;
          min_stock_quantity: number;
          max_stock_quantity: number | null;
          unit: string;
          is_active: boolean;
          is_weighable: boolean;
          allow_decimal_quantity: boolean;
          tax_rate: number;
          image_url: string | null;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          name: string;
          description?: string | null;
          sku: string;
          barcode?: string | null;
          category_id?: string | null;
          price: number;
          cost_price?: number;
          stock_quantity?: number;
          min_stock_quantity?: number;
          max_stock_quantity?: number | null;
          unit?: string;
          is_active?: boolean;
          is_weighable?: boolean;
          allow_decimal_quantity?: boolean;
          tax_rate?: number;
          image_url?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          name?: string;
          description?: string | null;
          sku?: string;
          barcode?: string | null;
          category_id?: string | null;
          price?: number;
          cost_price?: number;
          stock_quantity?: number;
          min_stock_quantity?: number;
          max_stock_quantity?: number | null;
          unit?: string;
          is_active?: boolean;
          is_weighable?: boolean;
          allow_decimal_quantity?: boolean;
          tax_rate?: number;
          image_url?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      stock_movements: {
        Row: {
          id: string;
          product_id: string;
          quantity: number;
          type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
          reason: string | null;
          reference_id: string | null;
          unit_cost: number | null;
          user_id: string;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          product_id: string;
          quantity: number;
          type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
          reason?: string | null;
          reference_id?: string | null;
          unit_cost?: number | null;
          user_id: string;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          product_id?: string;
          quantity?: number;
          type?: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
          reason?: string | null;
          reference_id?: string | null;
          unit_cost?: number | null;
          user_id?: string;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      sales: {
        Row: {
          id: string;
          customer_id: string | null;
          user_id: string;
          status: 'pending' | 'completed' | 'cancelled' | 'refunded';
          subtotal: number;
          discount_amount: number;
          discount_percent: number;
          tax_amount: number;
          total: number;
          payment_method: 'cash' | 'credit_card' | 'debit_card' | 'pix' | 'bank_transfer' | 'store_credit' | 'other' | null;
          payment_details: Json | null;
          notes: string | null;
          receipt_number: string;
          completed_at: string | null;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          customer_id?: string | null;
          user_id: string;
          status?: 'pending' | 'completed' | 'cancelled' | 'refunded';
          subtotal?: number;
          discount_amount?: number;
          discount_percent?: number;
          tax_amount?: number;
          total?: number;
          payment_method?: 'cash' | 'credit_card' | 'debit_card' | 'pix' | 'bank_transfer' | 'store_credit' | 'other' | null;
          payment_details?: Json | null;
          notes?: string | null;
          receipt_number: string;
          completed_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          customer_id?: string | null;
          user_id?: string;
          status?: 'pending' | 'completed' | 'cancelled' | 'refunded';
          subtotal?: number;
          discount_amount?: number;
          discount_percent?: number;
          tax_amount?: number;
          total?: number;
          payment_method?: 'cash' | 'credit_card' | 'debit_card' | 'pix' | 'bank_transfer' | 'store_credit' | 'other' | null;
          payment_details?: Json | null;
          notes?: string | null;
          receipt_number?: string;
          completed_at?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
      sale_items: {
        Row: {
          id: string;
          sale_id: string;
          product_id: string;
          product_name: string;
          product_sku: string;
          quantity: number;
          unit_price: number;
          discount_amount: number;
          discount_percent: number;
          tax_amount: number;
          total: number;
          notes: string | null;
          created_at: string;
          updated_at: string;
          deleted_at: string | null;
          version: number;
          synced_at: string | null;
          local_only: boolean;
        };
        Insert: {
          id: string;
          sale_id: string;
          product_id: string;
          product_name: string;
          product_sku: string;
          quantity: number;
          unit_price: number;
          discount_amount?: number;
          discount_percent?: number;
          tax_amount?: number;
          total: number;
          notes?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
        Update: {
          id?: string;
          sale_id?: string;
          product_id?: string;
          product_name?: string;
          product_sku?: string;
          quantity?: number;
          unit_price?: number;
          discount_amount?: number;
          discount_percent?: number;
          tax_amount?: number;
          total?: number;
          notes?: string | null;
          created_at?: string;
          updated_at?: string;
          deleted_at?: string | null;
          version?: number;
          synced_at?: string | null;
          local_only?: boolean;
        };
      };
    };
    Views: {};
    Functions: {};
    Enums: {
      user_role: 'admin' | 'manager' | 'cashier';
      user_status: 'active' | 'inactive' | 'pending';
      document_type: 'cpf' | 'cnpj';
      stock_movement_type: 'purchase' | 'sale' | 'adjustment' | 'return' | 'loss';
      sale_status: 'pending' | 'completed' | 'cancelled' | 'refunded';
      payment_method: 'cash' | 'credit_card' | 'debit_card' | 'pix' | 'bank_transfer' | 'store_credit' | 'other';
    };
  };
}
