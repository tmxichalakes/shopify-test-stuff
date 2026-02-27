import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import BundleBuilder from './BundleBuilder'

createRoot(document.getElementById('bundle-root')!).render(
  <StrictMode>
    <BundleBuilder />
  </StrictMode>,
);
