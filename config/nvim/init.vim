" Disable vi compatibility
set nocompatible

" Start Plug first
source $HOME/.config/nvim/vim-plug.vimrc

" Load config files in config directory
let config_files = split(globpath("$HOME/.config/nvim/config", '*'), "\n")
for config_file in config_files
	exec 'source' config_file
endfor
