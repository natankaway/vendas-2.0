/**
 * Página de Erro customizada para compatibilidade com next-pwa
 */

import { NextPage } from 'next';

interface ErrorProps {
  statusCode?: number;
}

const Error: NextPage<ErrorProps> = ({ statusCode }) => {
  return (
    <div style={{
      minHeight: '100vh',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      backgroundColor: '#f9fafb',
      padding: '1rem'
    }}>
      <div style={{ textAlign: 'center' }}>
        <h1 style={{
          fontSize: '4rem',
          fontWeight: 'bold',
          color: '#111827',
          marginBottom: '1rem'
        }}>
          {statusCode || 'Erro'}
        </h1>
        <p style={{
          color: '#6b7280',
          marginBottom: '2rem'
        }}>
          {statusCode === 404
            ? 'Página não encontrada'
            : 'Ocorreu um erro inesperado'}
        </p>
        <a
          href="/"
          style={{
            display: 'inline-block',
            padding: '0.75rem 1.5rem',
            backgroundColor: '#2563eb',
            color: 'white',
            fontWeight: 500,
            borderRadius: '0.5rem',
            textDecoration: 'none'
          }}
        >
          Voltar ao início
        </a>
      </div>
    </div>
  );
};

Error.getInitialProps = ({ res, err }) => {
  const statusCode = res ? res.statusCode : err ? err.statusCode : 404;
  return { statusCode };
};

export default Error;
