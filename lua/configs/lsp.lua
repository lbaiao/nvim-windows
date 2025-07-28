require("mason").setup()
require("mason-lspconfig").setup()
-- LSP flags (required by lspconfig) to avoid undefined variable errors
local lsp_flags = {}
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>a', vim.diagnostic.setloclist, opts)
-- make rename available globally in case buffer-local on_attach mapping isn't set
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
--[[ vim.keymap.set('n', '<space>o', vim.lsp.buf.document_symbol, opts) ]]



-- Define a reusable on_attach function for all LSPs
local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = false, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gk', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format { async = true }
  end, bufopts)
end

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if has_cmp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

--[[ require('nvim-lsp-installer').setup {} ]]

require('lspconfig')['ts_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
}

require('lspconfig')['lua_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- local config = {
--   handlers = {
--     ["textDocument/definition"] = require('csharpls_extended').handler,
--   },
-- }
-- Pass on_attach and capabilities to Omnisharp config
require('configs.omnisharp').setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require('lspconfig')['dartls'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require('lspconfig').pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lspconfig').jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('configs.dart')

-- require'lspconfig'.sonarlint.setup{}
