return {
	{
		"rmagatti/auto-session", -- auto save session
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = {
					"~/",
					"~/Downloads",
					"~/Documents",
				},
				auto_session_use_git_branch = true,
				auto_save_enabled = true,
			})
		end,
	},
	-- {
	-- 	"goolord/alpha-nvim", -- Dashboard
	-- 	-- dependencies = {"nvim-tree/nvim-web-devicons"}, -- i'm not sure if i want this
	-- 	dependencies = {
	-- 		{ "rmagatti/auto-session" },
	-- 	},
	-- 	config = function()
	-- 		local alpha = require("alpha")
	-- 		local dashboard = require("alpha.themes.dashboard")
	-- 		dashboard.section.header.val = {
	-- 			[[                                                                       ]],
	-- 			[[  ██████   █████                   █████   █████  ███                  ]],
	-- 			[[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
	-- 			[[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
	-- 			[[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
	-- 			[[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
	-- 			[[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
	-- 			[[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
	-- 			[[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
	-- 			[[                                                                       ]],
	-- 			[[                     λ it be like that sometimes λ                     ]],
	-- 		}
	--
	-- 		dashboard.section.buttons.val = {
	-- 			dashboard.button("f", "  Find file", ":Telescope find_files hidden=true no_ignore=true<CR>"),
	-- 			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	-- 			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	-- 			dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
	-- 			dashboard.button("r", "  Recently opened files", "<cmd>Telescope oldfiles<CR>"),
	-- 			dashboard.button("l", "  Open last session", "<cmd>SessionRestore<CR>"),
	-- 			dashboard.button("q", "  Quit", ":qa<CR>"),
	-- 		}
	--
	-- 		local handle, err = io.popen("fortune -s")
	-- 		if err or handle == nil then
	-- 			dashboard.section.footer.val = "May the truth be found."
	-- 			alpha.setup(dashboard.opts)
	-- 			return
	-- 		end
	-- 		local fortune = handle:read("*a")
	-- 		handle:close()
	-- 		dashboard.section.footer.val = fortune
	-- 		alpha.setup(dashboard.opts)
	-- 	end,
	-- },
}