-- require('ts_context_commentstring').setup {} and set vim.g.skip_ts_context_commentstring_module = true
require('ts_context_commentstring').setup {}
vim.g.skip_ts_context_commentstring_module = true

require'nvim-treesitter.configs'.setup {}

require('Comment').setup{
    ---Add a space b/w comment and the line
    ---@type boolean|fun():boolean
    padding = true,

    ---Whether the cursor should stay at its position
    ---NOTE: This only affects NORMAL mode mappings and doesn't work with dot-repeat
    ---@type boolean
    sticky = true,

    ---Lines to be ignored while comment/uncomment.
    ---Could be a regex string or a function that returns a regex string.
    ---Example: Use '^$' to ignore empty lines
    ---@type string|fun():string
    ignore = nil,

    ---LHS of toggle mappings in NORMAL + VISUAL mode
    ---@type table
    toggler = {
        ---Line-comment toggle keymap
        line = 'gb',
        ---Block-comment toggle keymap
        block = 'gc',
    },
}
