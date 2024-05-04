-- au BufRead,BufNewFile *.md set wrap
-- au BufRead,BufNewFile *.md set linebreak
-- au BufRead,BufNewFile *.md set nolist " list disables linebreak

vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false
