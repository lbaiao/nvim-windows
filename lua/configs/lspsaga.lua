require("lspsaga").setup({})

-- lsp finder to find the cursor word definition and reference
vim.keymap.set("n", "gh", '<cmd>Lspsaga lsp_finder<cr>', { silent = true,noremap = true })

-- code action
local action = require("lspsaga.codeaction")
vim.keymap.set({"n", "v"}, "<leader>ca", '<cmd>Lspsaga code_action<CR>', { silent = true, noremap = true })

-- show hover doc and press twice will jumpto hover window
-- vim.keymap.set("n", "gk", require("lspsaga.hover").render_hover_doc, { silent = true })

-- show signature help
-- vim.keymap.set("n", "gs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})

-- rename
-- vim.keymap.set("n", "<leader>rn", '<cmd>Lspsaga rename<cr>', { silent = true, noremap = true })

-- preview definition
-- vim.keymap.set("n", "gd", '<cmd>Lspsaga preview_definition<cr>', { silent = true,noremap = true })

-- show line diagnostics
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true,noremap= true })
-- Show buffer diagnostics
vim.keymap.set("n", "<leader>cD", "<cmd>Lspsaga show_buf_diagnostics<CR>")
-- Show workspace diagnostics
vim.keymap.set("n", "<leader>cw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

-- jump diagnostic
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true, noremap =true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true, noremap =true })

-- or jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })

-- toggle outline
vim.keymap.set("n", "<F8>", "<cmd>LSoutlineToggle<CR>",  { silent = true, noremap = true })
