return function (_)
  -- Emmet support for html
  -- See: https://github.com/aca/emmet-ls
  local lspconfig = require('lspconfig')
  -- local configs = require('lspconfig/configs')
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
      'html',
      'htmldjango',
      'typescriptreact',
      'javascriptreact',
      'css',
      'sass',
      'scss',
      'less'
    },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
  })
end
