function loader(use)
  return function(plugin)
    require('custom.plugins.' .. plugin) (use)
  end
end

return function(use)
  -- Specify plugins here
  local plugins = {
    'neotree',
    'surround',
  }

  local loadPlugin = loader(use)

  for _, plugin in ipairs(plugins) do
    loadPlugin(plugin)
  end
end
