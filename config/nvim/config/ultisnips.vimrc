let g:UltiSnipsUsePythonVersion = 3
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<c-k>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
inoremap <silent> <expr> <Tab> ncm2_ultisnips#expand_or("\<Tab>", 'n')

" c-j c-k for moving in snippet
" imap <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
" smap <c-u> <Plug>(ultisnips_expand)
" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
" let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

