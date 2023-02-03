return function(use)
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local map = require 'custom.keymap'
      map('', '<C-n>', ':NeoTreeFocusToggle<CR>')
      map('', '<C-m>', ':NeoTreeReveal<CR>')
    end
  }
end

