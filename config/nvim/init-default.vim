" Disable vi compatibility
set nocompatible

" Figure out the system Python for Neovim.
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

" NOTE TO SELF: A good way to debug config is to selectively remove things
" from plugin directory

" Start Plug first
let config_files = [
\'vim-plug',
\'vim-autoformat',
\'colors',
\'ctrlp',
\'folds',
\'indentation',
\'lightline',
\'terminal',
\'rubocop',
\'syntastic',
\'php',
\'nerdtree',
\'therest',
\'argwrap',
\'keymaps',
\'goyo',
\]
" Removed configs:
"\'ncm2',
"\'utilsnips'

for config_file in config_files
	exec 'source' "$HOME/.config/nvim/config/" . config_file . ".vimrc"
endfor


" Load config files in config directory
" let config_files = split(globpath("$HOME/.config/nvim/config", '*'), "\n")
" for config_file in config_files
" 	exec 'source' config_file
" endfor

