vim.cmd([[
	"split navigations
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	" NERDTree mappings and settings
	nnoremap <C-b> :NvimTreeToggle<CR>
	map <leader>y "+y
    map <C-S-v> "+p

	" python
	let g:python3_host_prog = 'C:\\Users\\lucasp\\AppData\\Local\\Programs\\Python\\Python312\\python.exe'
]])
