vim.cmd([[
	"split navigations
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	" NERDTree mappings and settings
	nnoremap <C-b> :NvimTreeToggle<CR>
	map <leader>y "+y

	" python
	let g:python3_host_prog = 'C:\\Users\\lucas\\AppData\\Local\\Programs\\Python\\Python310\\python.exe'
]])
