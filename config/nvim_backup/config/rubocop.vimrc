let g:formatters_ruby = ['rubocop']
let g:formatdef_rubocop = "'rubocop -x -o /dev/null -s '.bufname('%').' \| sed -n 2,\\$p'"
