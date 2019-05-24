" Large history buffer
set history=256

" Automatically track changes to buffers
set autoread

set clipboard=unnamedplus  " Yanks go on clipboard instead.
set pastetoggle=<F2> "  toggle between paste and normal: for 'safer' pasting from keyboard

" Backup
set nobackup
set noswapfile
set nowb
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)

" Display tabs and trailing spaces visually

" Buffers
set hidden " The current buffer can be put to the background without writing to disk

" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase		" be sensitive when there's a capital letter
set incsearch   "

set nowrap
set textwidth=0		" Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start	" more powerful backspacing

set relativenumber " Show line numbers relative to current line
set number         " Show current line number
set colorcolumn=81
set synmaxcol=200


autocmd BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save
" autocmd FileType ruby autocmd BufWritePre <buffer> :RuboCop -x -s
" autocmd FileType ruby autocmd BufWritePost :RuboCop -x @%

autocmd TermOpen * startinsert

" Golang stuff
" filetype off
" filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
" filetype on
let g:go_fmt_command = "gofmt"

" fix for syntastic slowdown
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:go_fmt_command = "goimports"

" PHP stuff
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Typescript
" load tsconfig
" autocmd FileType typescript call s:typescript_filetype_settings()
" function! s:typescript_filetype_settings()
"   set makeprg=tsc
" endfunction
let g:syntastic_typescript_tsc_fname = ''

autocmd FileType go setlocal shiftwidth=4 tabstop=4 noexpandtab

" NERDTREE
let NERDTreeIgnore = ['node_modules', 'tmp', '.git']

" Command T
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|log\|tmp$|\v[\/]bower_components',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" Ag
set runtimepath^=~/.config/nvim/plugged/ag.vim

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -S -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Statusline
"!!!if has('statusline')
  "!!!set laststatus=2
  " Broken down into easily includeable segments
  " set statusline=%<%f\    " Filename
  " set statusline+=%w%h%m%r " Options
  "!!!set statusline+=%{fugitive#statusline()} "  Git Hotness
  " set statusline+=\ [%{&ff}/%Y]            " filetype
  " set statusline+=\ [%{getcwd()}]          " current dir
  " set statusline+=%#warningmsg#
  " set statusline+=%{SyntasticStatuslineFlag()}
  " set statusline+=%*
  " let g:syntastic_enable_signs=1
  " set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
"!!!endif


" 80-column rule
highlight ColorColumn ctermbg=056 guibg=#5f00d7

" Neocomplete
" let g:neocomplete#enable_at_startup = 1
" " Move up and down in autocomplete with <c-j> and <c-k>
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

if has('macunix')
  "!!!let g:AutoPairsShortcutToggle     = 'π' " <m-p>
  "!!!let g:AutoPairsShortcutFastWrap   = '∑' " <m-w>
  "!!!let g:AutoPairsShortcutJump       = '∆' " <m-j>
  "!!!let g:AutoPairsShortcutBackInsert = '∫' " <m-b>
endif

syntax on
filetype on

