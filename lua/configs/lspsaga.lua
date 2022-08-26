local saga = require 'lspsaga'

-- use default config
saga.init_lsp_saga()

-- lsp finder to find the cursor word definition and reference
vim.keymap.set("n", "gh", '<cmd>Lspsaga lsp_finder<cr>', { silent = true,noremap = true })

-- code action
local action = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", '<cmd>Lspsaga code_action<CR>', { silent = true,noremap = true })
vim.keymap.set("v", "<leader>ca", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
end, { silent = true,noremap =true })

-- show hover doc and press twice will jumpto hover window
vim.keymap.set("n", "gk", require("lspsaga.hover").render_hover_doc, { silent = true })

-- show signature help
vim.keymap.set("n", "gs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})

-- rename
vim.keymap.set("n", "<leader>rn", '<cmd>Lspsaga rename<cr>', { silent = true, noremap = true })

-- preview definition
vim.keymap.set("n", "gd", require("lspsaga.definition").preview_definition, { silent = true,noremap = true })

-- show diagnostics
vim.keymap.set("n", "<leader>cd", require("lspsaga.diagnostic").show_line_diagnostics, { silent = true,noremap = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true,noremap= true })

-- jump diagnostic
vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, { silent = true, noremap =true })
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, { silent = true, noremap =true })

-- or jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })

-- toggle outline
vim.keymap.set("n", "<F8>", "<cmd>LSoutlineToggle<CR>",  { silent = true, noremap = true })
