au BufWritePre <buffer> :Rubocop -x
augroup aformat
  autocmd!
  au BufWrite * :Autoformat
augroup END

