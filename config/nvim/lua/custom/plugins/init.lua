local function loader(use)
  return function(plugin)
    require('custom.plugins.' .. plugin) (use)
  end
end

return function(use)
  -- Specify plugins here
  local plugins = {
    'neotree',
    'surround',
    'zen_mode',
    'whitespace',

    -- Syntax highlighting
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
