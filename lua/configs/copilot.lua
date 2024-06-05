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

function my_ask_func(question)
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
        require('CopilotChat').ask(input, { selection = require("CopilotChat.select").buffer })
    end
end

local chat = require('CopilotChat')
vim.keymap.set({ 'n', 'v' }, '<leader>it', chat.toggle, { desc = 'AI Toggle' })
-- Quick chat with Copilot
vim.keymap.set({ 'n', 'v' }, '<leader>ia', my_ask_func, { desc = 'AI Toggle' })

require("CopilotChat").setup {
  -- debug = true, -- Enable debugging
  -- See Configuration section for rest
}
