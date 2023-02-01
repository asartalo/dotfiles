return function(use)
  use {
    "challenger-deep-theme/vim",
    as = "challenger-deep",
    config = function()
      vim.cmd [[colorscheme challenger_deep]]
    end
  }
end

