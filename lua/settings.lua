vim.cmd([[
	set nofoldenable
	filetype plugin indent on

	filetype plugin indent on    " required
	syntax on


	" hybrid line numbers
	set number
	augroup numbertoggle
	  autocmd!
	  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
	augroup END

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
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
