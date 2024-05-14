local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- Find files using Telescope command-line sugar.
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- lsp picker
vim.keymap.set('n', '<space>o', builtin.lsp_document_symbols, { silent = true, noremap = true })
--[[ vim.keymap.set('n', '<leader>cd', builtin.diagnostics, { silent = true, noremap = true }) ]]
vim.keymap.set('n', '<leader>cD', builtin.diagnostics, { silent = true, noremap = true })
vim.keymap.set('n', 'gr', builtin.lsp_references, { silent = true, noremap = true })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { silent = true, noremap = true })
-- vim.keymap.set('n', 'gd', builtin.lsp_definitions, { silent = true, noremap = true })
vim.keymap.set('n', 'gy', builtin.lsp_type_definitions, { silent = true, noremap = true })

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "plugged", "bundle.js" },
    no_ignore = true,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
    packers = {
      find_files = {
        hidden = true
      }
    }
  }
}
