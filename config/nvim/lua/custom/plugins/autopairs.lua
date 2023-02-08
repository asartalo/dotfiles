return function (use)
  use {
    "windwp/nvim-autopairs",
    config = function ()
      -- For some reason, this is not called.
      -- See: https://github.com/windwp/nvim-autopairs/issues/284
      print("nvim-autopairs config setup called")
      -- require("nvim-autopairs").setup({})
    end
  }
  NVIM_AUTOPAIRS_INSTALLED = true
end
