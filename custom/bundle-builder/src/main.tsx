import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import BundleBuilder from './BundleBuilder'

createRoot(document.getElementById('bundle-root')!).render(
  <StrictMode>
    <BundleBuilder />
  </StrictMode>,
);
