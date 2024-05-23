vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- vim.g.copilot_filetypes = {
--     ["*"] = false,
--     ["javascript"] = true,
--     ["typescript"] = true,
--     ["lua"] = false,
--     ["rust"] = true,
--     ["c"] = true,
--     ["c#"] = true,
--     ["c++"] = true,
--     ["go"] = true,
--     ["python"] = true,
-- }
--


local chat = require('CopilotChat')
vim.keymap.set({ 'n', 'v' }, '<leader>i', chat.toggle, { desc = 'AI Toggle' })

require("CopilotChat").setup {
  -- debug = true, -- Enable debugging
  -- See Configuration section for rest
}
