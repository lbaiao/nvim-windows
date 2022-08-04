-- Find files using Telescope command-line sugar.
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>" )
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>"   )
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- lsp picker
vim.keymap.set('n', '<space>o', builtin.lsp_document_symbols, { silent = true, noremap = true })

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "plugged" },
    no_ignore = true,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  }
}
