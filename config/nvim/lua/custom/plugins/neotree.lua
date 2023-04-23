return {
  "nvim-neo-tree/neo-tree.nvim",
  -- branch = "v2.x",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
    local map = require 'custom.keymap'
    map('', '<C-n>', ':NeoTreeFocusToggle<CR>')
    map('', '<C-m>', ':NeoTreeReveal<CR>')
  end
}

