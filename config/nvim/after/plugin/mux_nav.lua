-- Fix tmux navigation overrides
vim.keymap.set('<C-h>', '<cmd> TmuxNavigateLeft<CR>', 'window left')
vim.keymap.set('<C-l>', '<cmd> TmuxNavigateRight<CR>', 'window right')
vim.keymap.set('<C-j>', '<cmd> TmuxNavigateDown<CR>', 'window down')
vim.keymap.set('<C-k>', '<cmd> TmuxNavigateUp<CR>', 'window up')
