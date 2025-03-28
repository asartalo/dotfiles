local opt = vim.opt
local map = require("custom.keymap")

-- Text wrapping
opt.wrap = false -- don't wrap text
opt.textwidth = 0

-- At command line, complete longest common string, then list alternatives.
opt.wildmode = "longest,list"

-- more powerful backspacing
opt.backspace = "indent,eol,start"

-- Remove trailing spaces on save
--
-- Commenting to explore using a plugin instead
-- vim.cmd [[
--   augroup trailing_spaces
--     autocmd BufWritePre * :%s/\s\+$//e
--   augroup END
-- ]]

-- The current buffer can be put to the background without writing to disk
opt.hidden = true

-- Match and search
opt.hlsearch = true -- highlight search
opt.ignorecase = true -- Do case in sensitive matching with
opt.smartcase = true -- be sensitive when there's a capital letter
opt.incsearch = true

-- Comment Mapping
-- Not quite working. Investigate https://github.com/numToStr/Comment.nvim/issues/17
map("n", "<C-_>", "gcc")

-- LSP Renaming
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)

-- Allow navigating through wrapped lines
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
-- Above is equivalent to:
-- nnoremap <expr> j v:count ? 'j' : 'gj'
-- nnoremap <expr> k v:count ? 'k' : 'gk'

-- reload autopairs?
-- require("nvim-autopairs").setup({})
