-- local configs = require "lspconfig/configs"
-- local util = require "lspconfig/util"
--
-- local custom_attach = function(_client)
--   print("Dart LSP stared.")
-- end
--
-- if not configs.dart then
--   configs.dart = {
--     default_config = {
--       cmd = {
--         "dart",
--         "language-server"
--       },
--       filetypes = { "dart" },
--       root_dir = util.root_pattern("pubspec.yaml"),
--       settings = {}
--     }
--   }
-- end

-- require('lspconfig').dart.setup {
--   on_attach = custom_attach
-- }

require('lspconfig').dartls.setup {}
