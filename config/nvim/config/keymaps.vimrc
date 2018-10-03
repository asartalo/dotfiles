" Leader key
let mapleader=","

nnoremap vv <C-w>v
nnoremap ss <C-w>s
" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

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
inoremap <C-o> <C-O>o

" Buffer switching
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
