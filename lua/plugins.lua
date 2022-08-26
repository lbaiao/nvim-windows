-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- speed up loading lua modules; improve startup time
  use 'lewis6991/impatient.nvim'
  use { 'nvim-lua/plenary.nvim' }
  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig' 
  use 'williamboman/nvim-lsp-installer'
  use { "glepnir/lspsaga.nvim", branch = "main" }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  -- Autocompletion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use "ray-x/lsp_signature.nvim"
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- Autopairs
  use 'windwp/nvim-autopairs'
  -- Autoclose html tags
  use 'windwp/nvim-ts-autotag'
  -- Indentation
  use 'nmac427/guess-indent.nvim'
  use { 'lukas-reineke/indent-blankline.nvim' }
  -- Comments
  use 'numToStr/Comment.nvim'
  use { "JoosepAlviste/nvim-ts-context-commentstring", requires = {  "nvim-treesitter" } }
  -- GIT
  use 'tpope/vim-fugitive' 
  -- Theme
  use 'dracula/vim'
  -- Status bar
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kdheepak/tabline.nvim'
  -- CTRLP
  -- use 'kien/ctrlp.vim' -- now implemented by telescope
  -- File explorer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      }
  }
  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'
  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  
end)

