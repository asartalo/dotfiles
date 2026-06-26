
local function loader()
  return function(plugin)
    require('custom.plugins.' .. plugin)
  end
end

return function()
  -- Specify plugins here
  local plugins = {
    'argwrap',
    'autopairs',
    'fugitive',
    'guess-indent',
    'lsp_navigator',
    'lualine',
    'null_ls',
    'nvim-web-devicons',
    'rails',
    'rust_tools',
    'slim',
    'surround',
    'telescope_live_grep',
    'trouble',
    'vim_tmux_navigator',
    'whitespace',
    'zen_mode',

    -- Syntax highlighting
    -- 'markdown',
    'syntax_kdl',

    -- Themes:
    -- 'challenger_deep',
    'catppuccin',
  }

  local loadPlugin = loader()

  for _, plugin in ipairs(plugins) do
    loadPlugin(plugin)
  end
end
