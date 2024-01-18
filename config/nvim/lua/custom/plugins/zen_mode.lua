return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        width = 120,
      },
      plugins = {
        gitsigns = {
          enabled = false,
        },
        alacritty = {
          enabled = true,
          font = "16",
        },
      },
    })
    local map = require 'custom.keymap'
    map('n', '<C-w>z', ':ZenMode<CR>')
    -- map('n', 'z', ':ZenMode<CR>')
  end
}
