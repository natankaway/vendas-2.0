/**
 * Página Inicial
 *
 * Redireciona para o PDV ou login.
 */

import { redirect } from 'next/navigation';

export default function HomePage() {
  redirect('/pdv');
}
