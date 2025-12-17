/**
 * Modal de Impressão de Recibo
 *
 * Modal que exibe preview do recibo e permite impressão.
 */

'use client';

import { useRef } from 'react';
import { useReactToPrint } from 'react-to-print';
import {
  Printer,
  X,
  Eye,
  Download,
} from 'lucide-react';

interface SaleItem {
  product_name: string;
  quantity: number;
  unit_price: number;
  unit?: string;
  total: number;
}

interface ReceiptData {
  receipt_number: string;
  created_at: string;
  customer_name?: string;
  customer_address?: string;
  customer_phone?: string;
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

interface PrintReceiptModalProps {
  isOpen: boolean;
  onClose: () => void;
  data: ReceiptData;
  company?: CompanyInfo;
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

const formatCurrency = (cents: number) => {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
  }).format(cents / 100);
};

const formatDateTime = (dateStr: string) => {
  return new Date(dateStr).toLocaleString('pt-BR');
};

export function PrintReceiptModal({ isOpen, onClose, data, company }: PrintReceiptModalProps) {
  const contentRef = useRef<HTMLDivElement>(null);

  const defaultCompany: CompanyInfo = {
    name: 'KAWAY POS',
    document: '',
    address: '',
    phone: '',
    header: '',
    footer: 'Obrigado pela preferência!',
  };

  const companyInfo = { ...defaultCompany, ...company };

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
        .receipt-print {
          width: 80mm !important;
          max-width: 80mm !important;
          padding: 5mm !important;
          margin: 0 !important;
        }
      }
    `,
    onAfterPrint: () => {
      // Optional: close modal after print
    },
  });

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
      <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-xl w-full max-w-lg max-h-[90vh] flex flex-col">
        {/* Header */}
        <div className="flex items-center justify-between p-4 border-b dark:border-gray-700">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-blue-100 dark:bg-blue-900/30 rounded-lg">
              <Eye className="w-5 h-5 text-blue-600 dark:text-blue-400" />
            </div>
            <div>
              <h3 className="font-semibold text-gray-900 dark:text-white">
                Preview do Recibo
              </h3>
              <p className="text-sm text-gray-500 dark:text-gray-400">
                {data.receipt_number}
              </p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-lg transition-colors"
          >
            <X className="w-5 h-5 text-gray-500 dark:text-gray-400" />
          </button>
        </div>

        {/* Receipt Preview */}
        <div className="flex-1 overflow-auto p-4 bg-gray-100 dark:bg-gray-900">
          <div
            ref={contentRef}
            className="receipt-print bg-white text-black p-4 font-mono text-sm mx-auto shadow-lg"
            style={{
              width: '80mm',
              maxWidth: '80mm',
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
                <>
                  <div className="flex justify-between">
                    <span>Cliente:</span>
                    <span>{data.customer_name}</span>
                  </div>
                  {data.customer_address && (
                    <div className="flex justify-between">
                      <span>Endereço:</span>
                      <span className="text-right max-w-[60%] text-[10px]">{data.customer_address}</span>
                    </div>
                  )}
                  {data.customer_phone && (
                    <div className="flex justify-between">
                      <span>Telefone:</span>
                      <span>{data.customer_phone}</span>
                    </div>
                  )}
                </>
              )}
            </div>

            <div className="border-t border-dashed border-black my-2" />

            {/* Items Header */}
            <div className="text-xs font-bold flex justify-between mb-1">
              <span className="flex-1">ITEM</span>
              <span className="w-10 text-center">QTD</span>
              <span className="w-14 text-right">UNIT</span>
              <span className="w-14 text-right">TOTAL</span>
            </div>

            <div className="border-t border-black my-1" />

            {/* Items */}
            <div className="text-xs">
              {data.items.map((item, index) => (
                <div key={index}>
                  {index > 0 && <div className="border-t border-dotted border-gray-400 my-1" />}
                  <div className="font-medium truncate text-[11px]">{item.product_name}</div>
                  <div className="flex justify-between text-[10px]">
                    <span className="flex-1">{item.quantity} {item.unit || 'un'} x {formatCurrency(item.unit_price)}</span>
                    <span className="w-16 text-right font-medium">{formatCurrency(item.total)}</span>
                  </div>
                </div>
              ))}
            </div>

            <div className="border-t border-black my-2" />

            {/* Totals */}
            <div className="text-xs space-y-1">
              <div className="flex justify-between">
                <span>Subtotal:</span>
                <span>{formatCurrency(data.subtotal)}</span>
              </div>
              {data.discount_amount > 0 && (
                <div className="flex justify-between" style={{ color: '#dc2626' }}>
                  <span>Desconto:</span>
                  <span>-{formatCurrency(data.discount_amount)}</span>
                </div>
              )}
              <div className="flex justify-between font-bold text-sm border-t border-black pt-1 mt-1">
                <span>TOTAL:</span>
                <span>{formatCurrency(data.total)}</span>
              </div>
            </div>

            <div className="border-t border-dashed border-black my-2" />

            {/* Payment */}
            <div className="text-xs space-y-1">
              <div className="flex justify-between font-medium">
                <span>Pagamento:</span>
                <span>{paymentMethodLabels[data.payment_method] || data.payment_method}</span>
              </div>
              {data.payment_details?.amount_received && (
                <>
                  <div className="flex justify-between">
                    <span>Recebido:</span>
                    <span>{formatCurrency(data.payment_details.amount_received)}</span>
                  </div>
                  <div className="flex justify-between">
                    <span>Troco:</span>
                    <span>{formatCurrency(data.payment_details.change_amount || 0)}</span>
                  </div>
                </>
              )}
            </div>

            <div className="border-t border-dashed border-black my-2" />

            {/* Footer */}
            <div className="text-center text-xs">
              {companyInfo.footer && (
                <p className="font-medium">{companyInfo.footer}</p>
              )}
              <p className="mt-2 text-[10px]" style={{ color: '#666' }}>
                DOCUMENTO SEM VALOR FISCAL
              </p>
              <p className="text-[10px] mt-1" style={{ color: '#666' }}>
                Emitido por KAWAY POS
              </p>
            </div>
          </div>
        </div>

        {/* Actions */}
        <div className="flex gap-3 p-4 border-t dark:border-gray-700">
          <button
            onClick={onClose}
            className="flex-1 px-4 py-3 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-xl hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
          >
            Fechar
          </button>
          <button
            onClick={() => handlePrint()}
            className="flex-1 px-4 py-3 bg-blue-600 text-white rounded-xl hover:bg-blue-700 transition-colors flex items-center justify-center gap-2"
          >
            <Printer className="w-5 h-5" />
            Imprimir
          </button>
        </div>
      </div>
    </div>
  );
}

// Exporta os tipos para uso externo
export type { ReceiptData, CompanyInfo, SaleItem };
