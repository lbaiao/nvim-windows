-- import all plugins
require("plugins")

-- file explorer
require("configs.nvim-tree")

-- settings
require("settings")

-- mappings
require("mappings")

-- language server
require("configs.lsp")
require("configs.lspsaga")
require('configs.treesitter')

-- autocompletion
require("configs.autocompletion")

-- autopairs
require("configs.autopairs")

-- autotags
require("configs.autotag")

-- indentation
require("configs.indentation")

-- comments
require("configs.comments")

-- theme
require("configs.theme")
require("configs.lualine")
require("configs.tabline")

-- telescope - fuzzy finder
require("configs.telescope")

-- impatient
require('impatient').enable_profile()
