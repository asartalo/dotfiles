if NVIM_AUTOPAIRS_INSTALLED then
  local status, cmp_autopairs = pcall(require, 'nvim-autopairs.completion.cmp')
  if status then
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )

    -- Making it work with navigator (see lsp_navigator)
    if vim.o.ft == 'clap_input' and vim.o.ft == 'guihua' and vim.o.ft == 'guihua_rust' then
      cmp.setup.buffer {
        completion = {enable = false}
      }
    end
  end
end
