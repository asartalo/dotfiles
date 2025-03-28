return {
	"nvim-neo-tree/neo-tree.nvim",
	-- branch = "v2.x",
	branch = "v3.x",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({})
		local map = require("custom.keymap")
		map("", "<C-n>", ":Neotree toggle<CR>")
		map("", "<C-i>", ":Neotree reveal<CR>", { noremap = true })
		-- The following did not work
		-- map("", "<C-m>", ":Neotree reveal<CR>")
		-- we don't want what neotree binds the <cr>
		-- messes up a lot of functionality
		-- vim.keymap.del("", "<cr>")
	end,
}
