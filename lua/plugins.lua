-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  -- Load plugins faster
  'lewis6991/impatient.nvim',
  'nvim-lua/plenary.nvim',
  -- LSP stuff
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  "Hoffs/omnisharp-extended-lsp.nvim",
  -- -- UI stuff
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  -- dart/flutter
  -- {
  --       'akinsho/flutter-tools.nvim',
  --       lazy = false,
  --       dependencies = {
  --           'nvim-lua/plenary.nvim',
  --           'stevearc/dressing.nvim', -- optional for vim.ui.select
  --       },
  --       config = true,
  -- },
  -- { "glepnir/lspsaga.nvim", branch = "main" }
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  "ray-x/lsp_signature.nvim",
  -- 'saadparwaiz1/cmp_luasnip', snipets
  'L3MON4D3/LuaSnip', -- snipets
  -- Autopairs
  -- 'windwp/nvim-autopairs',
  -- Autoclose html tags
  -- 'windwp/nvim-ts-autotag',
  -- Indentation
  -- 'nmac427/guess-indent.nvim',
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- Comments
  -- 'numToStr/Comment.nvim',
  -- { "JoosepAlviste/nvim-ts-context-commentstring", dependencies = {  "nvim-treesitter" } },
  -- GIT
  'tpope/vim-fugitive',
  -- Theme
  -- 'dracula/vim',
  -- { "ellisonleao/gruvbox.nvim" },
  -- "folke/tokyonight.nvim",
  -- { "embark-theme/vim" },
  -- { "slugbyte/lackluster.nvim" },
  -- { "mofiqul/vscode.nvim" },
  -- Icons
  -- 'nvim-tree/nvim-web-devicons',
  -- Status bar
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  -- },
  -- {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  { "EdenEast/nightfox.nvim" }, -- lazy
  -- File explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons' 
  },
  -- startup
  'mhinz/vim-startify',
  -- treesitter
  'nvim-treesitter/nvim-treesitter',
  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
  -- toggle terminal
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  -- github copilot
  "github/copilot.vim",
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
  },
  -- jupyter notebooks
  --   'untitled-ai/jupyter_ascending.vim'
})
