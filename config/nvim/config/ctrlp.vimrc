set wildignore+=*/node_modules
set wildignore+=.git
set wildignore+=dist
set wildignore+=client/dist
set wildignore+=*/bower_components
set wildignore+=client/bower_components
set wildignore+=*/jspm_packages
set wildignore+=tmp,/.tmp
set wildignore+=*/.png

set runtimepath^=~/.config/nvim/plugged/ctrlp.vim

"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
