-- Taken from:
-- https://github.com/kylechui/nvim-surround
print("custom/plugins/surround")

return function(use)
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
end

