-- This plugin adds indentation guides to Neovim. It uses Neovim's virtual text feature and no conceal
return {
	"lukas-reineke/indent-blankline.nvim",
	event = "VeryLazy",
	opts = {
		indent = {
			char = "│",
			tab_char = "│",
		},
		scope = { enabled = false },
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"Trouble",
				"trouble",
				"lazy",
				"mason",
				"toggleterm",
				"lazyterm",
			},
		},
	},
	main = "ibl",
	config = function()
		require("ibl").setup()
	end,
}
