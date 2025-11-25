return {
  -- originally 'jose-elias-alvarez/null-ls.nvim',
  'nvimtools/none-ls.nvim',
  config = function ()
    local none_ls = require('null-ls')

    none_ls.setup({
      none_ls.builtins.formatting.stylua,
      -- none_ls.builtins.diagnostics.eslint, -- not available as of 2025-11-25
      none_ls.builtins.completion.spell,
      -- none_ls.builtins.diagnostics.cspell, -- not available as of 2025-11-25
      -- none_ls.builtins.code_actions.cspell, -- not available as of 2025-11-25
      none_ls.builtins.diagnostics.rubocop,
      none_ls.builtins.formatting.rubocop,
    })
  end
}
