vim.cmd [[
  augroup neovim_terminal
    autocmd!

    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert

    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber

    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>

    " switch to insert mode when focusing on terminal window 
    autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif
  augroup END
]]
