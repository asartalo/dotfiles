" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

function! NotVsCode(...)
  let opts = get(a:000, 0, {})
  return exists('g:vscode') ? extend(opts, { 'on': [], 'for': [] }) : opts
endfunction

Plug 'roryokane/detectindent' " automatically detecting indent settings
Plug 'scrooloose/nerdtree', NotVsCode() " file/tree explorer
Plug 'Xuyuanp/nerdtree-git-plugin', NotVsCode()
Plug 'rking/ag.vim', NotVsCode() " use silver searcher
Plug 'ctrlpvim/ctrlp.vim', NotVsCode() " full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair.
Plug 'FooSoft/vim-argwrap'
Plug 'tpope/vim-repeat' " remaps . in a way that plugins can tap into it.
Plug 'tpope/vim-surround' " provides mappings to easily delete, change and add surroundings (parens, brackets, quotes, tags, etc.) in pairs
Plug 'itchyny/lightline.vim' " light and configurable statusline/tabline

" Plug 'scrooloose/syntastic'
Plug 'guns/vim-clojure-static', NotVsCode()
Plug 'kchmck/vim-coffee-script', NotVsCode()
Plug 'fatih/vim-go', NotVsCode()
Plug 'groenewege/vim-less', NotVsCode()
Plug 'slim-template/vim-slim', NotVsCode()
Plug 'digitaltoad/vim-pug', NotVsCode()
Plug 'junegunn/vim-easy-align', NotVsCode()
Plug 'othree/html5.vim', NotVsCode()
Plug 'pangloss/vim-javascript', NotVsCode()
Plug 'mxw/vim-jsx', NotVsCode()

" Plug 'ncm2/ncm2'
" ncm2 requires nvim-yarp
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }

" some completion sources
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-go'
" Plug 'ncm2/ncm2-html-subscope'
" Plug 'ncm2/ncm2-markdown-subscope'
" Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" Plug 'ncm2/ncm2-cssomni'
" Plug 'ncm2/ncm2-jedi' "for python

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" To install ruby completions, run `:CocInstall coc-solargraph`
" See https://github.com/neoclide/coc-solargraph

" Snippets
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'SirVer/ultisnips', NotVsCode()
Plug 'asartalo/vim-snippets', NotVsCode()
" Jasmine language support
Plug 'joaohkfaria/vim-jest-snippets', NotVsCode()
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets', NotVsCode()
" React code snippets
Plug 'asartalo/vim-react-snippets', NotVsCode()
" Vue
Plug 'posva/vim-vue', NotVsCode()

" Nix
Plug 'LnL7/vim-nix', NotVsCode()

" Colors
Plug 'vim-scripts/xoria256.vim', NotVsCode()
Plug 'joshdick/onedark.vim', NotVsCode()
Plug 'tlhr/anderson.vim', NotVsCode()
Plug 'sts10/vim-pink-moon', NotVsCode()
Plug 'challenger-deep-theme/vim', NotVsCode({ 'as': 'challenger-deep' })

" TypeScript
Plug 'pangloss/vim-javascript', NotVsCode()
Plug 'leafgarland/typescript-vim', NotVsCode()
Plug 'peitalin/vim-jsx-typescript', NotVsCode()
" Plug 'HerringtonDarkholme/yats.vim', NotVsCode()
" Plug 'mhartington/nvim-typescript', NotVsCode({'do': './install.sh'})

" Context
Plug 'Shougo/context_filetype.vim', NotVsCode()
Plug 'kana/vim-textobj-user', NotVsCode()
Plug 'thinca/vim-quickrun', NotVsCode()
" Plug 'osyo-manga/vim-precious'

" Per-project vimrc
Plug 'LucHermitte/lh-vim-lib', NotVsCode()
Plug 'LucHermitte/local_vimrc', NotVsCode()

" Focus mode
Plug 'junegunn/goyo.vim', NotVsCode()

" Rubocop
" Plug 'ngmy/vim-rubocop'
" Plug 'Chiel92/vim-autoformat'

" PHP
Plug 'StanAngeloff/php.vim', NotVsCode()

" Svelte
Plug 'burner/vim-svelte', NotVsCode()

" Initialize plugin system
call plug#end()
