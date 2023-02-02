-- Text wrapping
vim.opt.wrap = false -- don't wrap text
vim.opt.textwidth = 0

-- At command line, complete longest common string, then list alternatives. 
vim.opt.wildmode = "longest,list"

-- more powerful backspacing
vim.opt.backspace = "indent,eol,start"

-- Remove trailing spaces on save
--
-- Commenting to explore using a plugin instead
-- vim.cmd [[
--   augroup trailing_spaces
--     autocmd BufWritePre * :%s/\s\+$//e
--   augroup END
-- ]]
