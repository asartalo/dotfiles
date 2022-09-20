" Leader key
let mapleader=","

nnoremap vv <C-w>v
nnoremap ss <C-w>s

" Yank entire buffer (all lines... all of it pls)
nnoremap <C-a> :%y<CR>

" End line with semicolon and enter new line
imap <C-l> <Esc>$a;<CR>

" Toggle between no numbers → absolute → relative with absolute on cursor line:
" nnoremap rr :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>

" Toggle relative with absolute on cursor line:
nnoremap rr :let [&nu, &rnu] = [!&nu, !&rnu]<CR>

nnoremap gr :grep <cword> *<CR>
nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap gR :grep '\b<cword>\b' *<CR>
nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>

if has('macunix')
	nnoremap <leader>t :new<CR>:terminal<CR>source $HOME/.bash_profile<CR>
endif

:nnoremap <Tab> :tabn<CR>
:nnoremap <S-Tab> :tabp<CR>

