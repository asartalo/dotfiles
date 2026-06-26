vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/catppuccin/nvim"
})
vim.cmd([[colorscheme catppuccin-mocha]])

require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = "catppuccin-mocha",
		component_separators = "|",
		section_separators = "",
	},
})

vim.cmd.colorscheme("catppuccin-mocha")
