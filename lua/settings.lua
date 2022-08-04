vim.cmd([[
	set nofoldenable
	filetype plugin indent on

	filetype plugin indent on    " required
	syntax on
	set number
	set noswapfile
	set hlsearch
	set ignorecase
	set incsearch

	" split 
	set splitbelow
	set splitright
	" do not select numbers when selecting with mouse
	set mouse=a

	set wildignore+=*/data/*,*.so,*.swp,*.zip,*/node_modules/*,*/plugged/*    " MacOSX/Linux

  set autoindent
  set cindent
]])

-- Tab set to two spaces
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.softtabstop = 2
-- vim.opt.expandtab = true
