import React from 'react'
import ReactDOM from 'react-dom/client'
import { MDXProvider } from '@mdx-js/react'
import App from './index.mdx'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <MDXProvider>
      <App />
    </MDXProvider>
  </React.StrictMode>
)