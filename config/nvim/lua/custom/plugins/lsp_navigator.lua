vim.pack.add({
	{ src = "https://github.com/ray-x/guihua.lua" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/ray-x/navigator.lua" },
})



vim.api.nvim_create_autocmd("User", {
	pattern = "PackChanged",
	callback = function(ev)
		-- Check if the updated or newly installed plugin is 'guihua.lua'
		if ev.data.spec.name == "guihua.lua" then
			local plugin_path = ev.data.path
			print("Building guihua.lua...")
			-- Execute the compilation command within the plugin's root directory
			vim.fn.jobstart("cd " .. vim.fn.shellescape(plugin_path) .. "/lua/fzy && make", {
				on_exit = function(_, code)
					if code == 0 then
						print("guihua.lua built successfully!")
					else
						print("Failed to build guihua.lua")
					end
				end,
			})
		end
	end,
})
