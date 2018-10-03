" Disable vi compatibility
set nocompatible

" NOTE TO SELF: A good way to debug config is to selectively remove things
" from plugin directory

" Start Plug first
let config_files = [
\'vim-plug',
\'colors',
\'ctrlp',
\'folds',
\'indentation',
\'keymaps',
\'lightline',
\'ncm2',
\'terminal',
\'therest',
\'utilsnips'
\]

for config_file in config_files
	exec 'source' "$HOME/.config/nvim/config/" . config_file . ".vimrc"
endfor


" Load config files in config directory
" let config_files = split(globpath("$HOME/.config/nvim/config", '*'), "\n")
" for config_file in config_files
" 	exec 'source' config_file
" endfor
