autocmd TermOpen * startinsert

if has('macunix')
	nnoremap <leader>t :new<CR>:terminal<CR>source $HOME/.bash_profile<CR>
endif


