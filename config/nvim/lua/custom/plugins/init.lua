local function loader(use)
  return function(plugin)
    require('custom.plugins.' .. plugin) (use)
  end
end

return function(use)
  -- Specify plugins here
  local plugins = {
    'argwrap',
    'autopairs',
    'emmet',
    'neotree',
    'lsp_navigator',
    'surround',
    'zen_mode',
    'whitespace',

    -- Syntax highlighting
    'markdown',
    'syntax_kdl',

    -- Themes:
    -- 'challenger_deep',
    'catppuccin',
  }

  local loadPlugin = loader(use)

  for _, plugin in ipairs(plugins) do
    loadPlugin(plugin)
  end
end
