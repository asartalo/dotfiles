" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'roryokane/detectindent'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'guns/vim-clojure-static'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'jiangmiao/auto-pairs'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-pug'
Plug 'junegunn/vim-easy-align'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

Plug 'ncm2/ncm2'
" ncm2 requires nvim-yarp
Plug 'roxma/nvim-yarp'

" some completion sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ncm2/ncm2-cssomni'
" Plug 'ncm2/ncm2-jedi' "for python

" Snippets
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'
Plug 'asartalo/vim-snippets'
" Jasmine language support
Plug 'joaohkfaria/vim-jest-snippets'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'asartalo/vim-react-snippets'

" Colors
Plug 'vim-scripts/xoria256.vim'
Plug 'joshdick/onedark.vim'
Plug 'tlhr/anderson.vim'
Plug 'sts10/vim-pink-moon'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Initialize plugin system
call plug#end()
