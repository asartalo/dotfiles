" Leader key
let mapleader=","

nnoremap vv <C-w>v
nnoremap ss <C-w>s

" Yank entire buffer (all lines... all of it pls)
nnoremap <C-a> :%y<CR>

" Save/Write without au commands
nnoremap <C-s> :noau w<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

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
" nnoremap <C-N><C-N> :set invnumber<CR>

if has('macunix')
	nnoremap <leader>t :new<CR>:terminal<CR>source $HOME/.bash_profile<CR>
endif

" inoremap <C-Cr> <c-c><Esc>o
" inoremap <C-Cr> <C-O>o
" inoremap <C-o> <C-O>o

" Buffer switching
" :nnoremap <Tab> :bnext<CR>
" :nnoremap <S-Tab> :bprevious<CR>
" Tab switching
:nnoremap <Tab> :tabn<CR>
:nnoremap <S-Tab> :tabp<CR>
