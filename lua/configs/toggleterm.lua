require('toggleterm').setup {
    open_mapping = [[<c-\>]],
    on_open = function(term)
        vim.cmd('startinsert')
    end,
    direction = 'float',
    shell = 'powershell.exe',
}
