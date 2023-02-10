return function(use)
  use {
    "FooSoft/vim-argwrap",
    config = function()
      local map = require "custom.keymap"
      map(
        "n",
        "<leader>[",
        ":ArgWrap<CR>"
      )
    end
  }
end

