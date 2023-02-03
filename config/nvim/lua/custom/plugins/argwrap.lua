return function(use)
  use {
    "FooSoft/vim-argwrap",
    config = function()
      local map = require "custom.keymap"
      map(
        "n",
        "<silent> <leader>a",
        "ArgWrap<CR>"
      )
    end
  }
end

