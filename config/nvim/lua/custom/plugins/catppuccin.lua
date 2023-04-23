return {
  "catppuccin/nvim",
  as = "catppuccin",
  config = function()
    vim.cmd [[colorscheme catppuccin-mocha]]

    require('lualine').setup {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    }
  end
}
