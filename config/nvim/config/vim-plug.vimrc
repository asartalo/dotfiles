" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

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
Plug 'ciaranm/detectindent'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Colors
Plug 'vim-scripts/xoria256.vim'
Plug 'joshdick/onedark.vim'
Plug 'tlhr/anderson.vim'
Plug 'sts10/vim-pink-moon'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Initialize plugin system
call plug#end()
