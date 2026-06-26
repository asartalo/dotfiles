-- Add the plugin to your configuration
vim.pack.add({ "https://github.com/FooSoft/vim-argwrap" })

-- Directly apply your configuration and keymaps
local map = require("custom.keymap")
map("n", "<leader>[", ":ArgWrap<CR>")
