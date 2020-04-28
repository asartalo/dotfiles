" If previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif

" NERDTREE
let NERDTreeIgnore = ['node_modules', 'tmp', '.git']

augroup NERDTreeSetup
  autocmd!
  autocmd VimEnter * call NERDTreeAddKeyMap({
    \ 'key': 'yy',
    \ 'callback': 'NERDTreeYankCurrentNode',
    \ 'quickhelpText': 'put full path of current node into the default register' })

augroup END

function! NERDTreeYankCurrentNode()
  echo "Yanking path"
  let n = g:NERDTreeFileNode.GetSelected()
  " echo n.path.str()
  if n != {}
    call setreg('+', n.path.str())
  endif
endfunction
