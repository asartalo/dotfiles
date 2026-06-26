vim.pack.add({ "https://github.com/windwp/nvim-autopairs" })
require("nvim-autopairs").setup({
	disable_filetype = {
		"TelescopePrompt",
		"guihua",
		"guihua_rust",
		"clap_input",
	},
})
NVIM_AUTOPAIRS_INSTALLED = true
