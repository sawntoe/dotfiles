require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"arduino_language_server", "bashls", "clangd", "gopls", "texlab", "pyright", "yamlls"},
  automatic_installation = true
})

require("eagle").setup({
  mouse_mode = false,
  keyboard_mode = true
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('lspconfig')['pyright'].setup({
  single_file_support = true,
  capabilities = capabilities,
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      signs = false,
      underline = false,
    })
  },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
        diagnosticSeverityOverrides = {
          reportWildcardImportFromLibrary = "none",
        },
      },
    },
  },
})

require('lspconfig').clangd.setup {
	capabilities = capabilities
}
require('lspconfig').texlab.setup {
	capabilities = capabilities
}
