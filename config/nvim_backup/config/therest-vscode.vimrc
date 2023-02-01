" Large history buffer
set history=256

set clipboard=unnamedplus  " Yanks go on clipboard instead.
set pastetoggle=<F2> "  toggle between paste and normal: for 'safer' pasting from keyboard

" Clipboard
if system('uname -r') =~ "Microsoft"
  augroup Yank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe ',@")
  augroup END
endif

" Backup
set nobackup
set noswapfile
set nowb

" Display tabs and trailing spaces visually

" Buffers
set hidden " The current buffer can be put to the background without writing to disk

" Match and search
set ignorecase  " Do case in sensitive matching with
set smartcase		" be sensitive when there's a capital letter
set incsearch   "

set nowrap
set textwidth=0		" Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start	" more powerful backspacing

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save

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

