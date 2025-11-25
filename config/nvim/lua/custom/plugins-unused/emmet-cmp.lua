-- currently broken

return {
  'dcampos/cmp-emmet-vim',
  dependencies = {
    {'mattn/emmet-vim'},
  },
  config = function()
    local cmp = require'cmp'
    cmp.setup({
      sources = {
        {name = 'emmet_vim'}
      }
    })
  end
}
