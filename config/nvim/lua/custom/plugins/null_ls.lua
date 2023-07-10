return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function ()
    local null_ls = require('null-ls')

    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.completion.spell,
      null_ls.builtins.diagnostics.cspell,
      null_ls.builtins.code_actions.cspell,
      null_ls.builtins.diagnostics.rubocop,
      null_ls.builtins.formatting.rubocop,
    })
  end
}
