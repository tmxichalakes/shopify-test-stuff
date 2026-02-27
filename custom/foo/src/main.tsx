import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import Foo from './Foo'

createRoot(document.getElementById('foo-root')!).render(
  <StrictMode>
    <Foo fooName="My Foo" />
  </StrictMode>,
);
