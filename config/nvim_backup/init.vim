if exists('g:vscode')
" RUN VSCODE PLUGIN
	exec 'source' "$HOME/.config/nvim/init-vscode.vim"
else
	exec 'source' "$HOME/.config/nvim/init-default.vim"
endif

