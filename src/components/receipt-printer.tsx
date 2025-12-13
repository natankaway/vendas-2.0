/**
 * Componente de Impressão de Recibos
 *
 * Gera e imprime recibos de vendas no formato térmico (80mm).
 */

'use client';

import { forwardRef, useImperativeHandle, useRef } from 'react';
import { useReactToPrint } from 'react-to-print';

interface SaleItem {
  product_name: string;
  quantity: number;
  unit_price: number;
  total: number;
}

interface ReceiptData {
  receipt_number: string;
  created_at: string;
  customer_name?: string;
  items: SaleItem[];
  subtotal: number;
  discount_amount: number;
  total: number;
  payment_method: string;
  payment_details?: {
    amount_received?: number;
    change_amount?: number;
  };
  cashier_name?: string;
}

interface CompanyInfo {
  name: string;
  document?: string;
  address?: string;
  phone?: string;
  header?: string;
  footer?: string;
}

interface ReceiptPrinterProps {
  data: ReceiptData;
  company?: CompanyInfo;
}

export interface ReceiptPrinterRef {
  print: () => void;
}

const paymentMethodLabels: Record<string, string> = {
  cash: 'Dinheiro',
  credit_card: 'Cartão de Crédito',
  debit_card: 'Cartão de Débito',
  pix: 'PIX',
  bank_transfer: 'Transferência',
  store_credit: 'Crédito Loja',
  pay_later: 'A Receber',
  other: 'Outro',
};

// Formato moeda
const formatCurrency = (cents: number) => {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
  }).format(cents / 100);
};

// Formato data/hora
const formatDateTime = (dateStr: string) => {
  return new Date(dateStr).toLocaleString('pt-BR');
};

// Componente de conteúdo do recibo
const ReceiptContent = forwardRef<HTMLDivElement, ReceiptPrinterProps>(
  ({ data, company }, ref) => {
    const defaultCompany: CompanyInfo = {
      name: 'KAWAY POS',
      document: '',
      address: '',
      phone: '',
      header: '',
      footer: 'Obrigado pela preferência!',
    };

    const companyInfo = { ...defaultCompany, ...company };

    return (
      <div
        ref={ref}
        className="receipt-content bg-white text-black p-4 font-mono text-sm"
        style={{
          width: '80mm',
          maxWidth: '80mm',
          minHeight: 'auto',
        }}
      >
        {/* Header */}
        <div className="text-center mb-4">
          <h1 className="text-lg font-bold">{companyInfo.name}</h1>
          {companyInfo.document && (
            <p className="text-xs">{companyInfo.document}</p>
          )}
          {companyInfo.address && (
            <p className="text-xs">{companyInfo.address}</p>
          )}
          {companyInfo.phone && (
            <p className="text-xs">Tel: {companyInfo.phone}</p>
          )}
          {companyInfo.header && (
            <p className="text-xs mt-1">{companyInfo.header}</p>
          )}
        </div>

        {/* Divider */}
        <div className="border-t border-dashed border-black my-2" />

        {/* Receipt Info */}
        <div className="text-xs mb-2">
          <div className="flex justify-between">
            <span>Cupom:</span>
            <span className="font-bold">{data.receipt_number}</span>
          </div>
          <div className="flex justify-between">
            <span>Data:</span>
            <span>{formatDateTime(data.created_at)}</span>
          </div>
          {data.cashier_name && (
            <div className="flex justify-between">
              <span>Operador:</span>
              <span>{data.cashier_name}</span>
            </div>
          )}
          {data.customer_name && (
            <div className="flex justify-between">
              <span>Cliente:</span>
              <span>{data.customer_name}</span>
            </div>
          )}
        </div>

        {/* Divider */}
        <div className="border-t border-dashed border-black my-2" />

        {/* Header de Itens */}
        <div className="text-xs font-bold flex justify-between mb-1">
          <span className="flex-1">ITEM</span>
          <span className="w-12 text-center">QTD</span>
          <span className="w-16 text-right">UNIT</span>
          <span className="w-16 text-right">TOTAL</span>
        </div>

        {/* Divider */}
        <div className="border-t border-black my-1" />

        {/* Items */}
        <div className="text-xs space-y-1">
          {data.items.map((item, index) => (
            <div key={index}>
              <div className="font-medium truncate">{item.product_name}</div>
              <div className="flex justify-between text-xs">
                <span className="flex-1"></span>
                <span className="w-12 text-center">{item.quantity}</span>
                <span className="w-16 text-right">{formatCurrency(item.unit_price)}</span>
                <span className="w-16 text-right">{formatCurrency(item.total)}</span>
              </div>
            </div>
          ))}
        </div>

        {/* Divider */}
        <div className="border-t border-black my-2" />

        {/* Totals */}
        <div className="text-xs space-y-1">
          <div className="flex justify-between">
            <span>Subtotal:</span>
            <span>{formatCurrency(data.subtotal)}</span>
          </div>
          {data.discount_amount > 0 && (
            <div className="flex justify-between text-red-600">
              <span>Desconto:</span>
              <span>-{formatCurrency(data.discount_amount)}</span>
            </div>
          )}
          <div className="flex justify-between font-bold text-base border-t border-black pt-1 mt-1">
            <span>TOTAL:</span>
            <span>{formatCurrency(data.total)}</span>
          </div>
        </div>

        {/* Divider */}
        <div className="border-t border-dashed border-black my-2" />

        {/* Payment */}
        <div className="text-xs space-y-1">
          <div className="flex justify-between font-medium">
            <span>Forma de Pagamento:</span>
            <span>{paymentMethodLabels[data.payment_method] || data.payment_method}</span>
          </div>
          {data.payment_details?.amount_received && (
            <>
              <div className="flex justify-between">
                <span>Valor Recebido:</span>
                <span>{formatCurrency(data.payment_details.amount_received)}</span>
              </div>
              <div className="flex justify-between">
                <span>Troco:</span>
                <span>{formatCurrency(data.payment_details.change_amount || 0)}</span>
              </div>
            </>
          )}
        </div>

        {/* Divider */}
        <div className="border-t border-dashed border-black my-2" />

        {/* Footer */}
        <div className="text-center text-xs">
          {companyInfo.footer && (
            <p className="font-medium">{companyInfo.footer}</p>
          )}
          <p className="mt-2 text-[10px] text-gray-600">
            DOCUMENTO SEM VALOR FISCAL
          </p>
          <p className="text-[10px] text-gray-600 mt-1">
            Emitido por KAWAY POS
          </p>
        </div>
      </div>
    );
  }
);

ReceiptContent.displayName = 'ReceiptContent';

// Componente principal com função de impressão
export const ReceiptPrinter = forwardRef<ReceiptPrinterRef, ReceiptPrinterProps>(
  ({ data, company }, ref) => {
    const contentRef = useRef<HTMLDivElement>(null);

    const handlePrint = useReactToPrint({
      contentRef,
      documentTitle: `Recibo-${data.receipt_number}`,
      pageStyle: `
        @page {
          size: 80mm auto;
          margin: 0;
        }
        @media print {
          body {
            -webkit-print-color-adjust: exact;
            print-color-adjust: exact;
          }
          .receipt-content {
            width: 80mm !important;
            max-width: 80mm !important;
            padding: 5mm !important;
            margin: 0 !important;
          }
        }
      `,
    });

    useImperativeHandle(ref, () => ({
      print: handlePrint,
    }));

    return (
      <div className="hidden print:block">
        <ReceiptContent ref={contentRef} data={data} company={company} />
      </div>
    );
  }
);

ReceiptPrinter.displayName = 'ReceiptPrinter';

// Preview do recibo (visível na tela)
export function ReceiptPreview({ data, company }: ReceiptPrinterProps) {
  return (
    <div className="bg-gray-100 dark:bg-gray-900 p-4 rounded-xl overflow-auto max-h-[500px]">
      <div className="mx-auto" style={{ width: '80mm' }}>
        <ReceiptContent data={data} company={company} />
      </div>
    </div>
  );
}

// Hook para impressão
export function usePrintReceipt() {
  const printerRef = useRef<ReceiptPrinterRef>(null);

  const print = () => {
    printerRef.current?.print();
  };

  return { printerRef, print };
}
