return function(use)
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          width = 100,
        }
      }
    end
  }
end
