require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'html',
    'tailwindcss'
  }
})
