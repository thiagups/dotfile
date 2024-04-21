return {

	-- indent-blankline
	-- Desc: Indentation lines
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		config = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			vim.g.rainbow_delimiters = { highlight = highlight }
			require("ibl").setup({
				scope = {
					show_start = false,
					show_end = false,
					show_exact_scope = true
				},
				indent = {
					highlight = highlight,
					char = "┊",
					tab_char = "|",
					smart_indent_cap = true,
				},
				whitespace = {
					remove_blankline_trail = true,
				},
			})

			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},

	-- Delimiters Rainbow
	-- Desc: Rainbow parentheses
	{
		"hiphish/rainbow-delimiters.nvim",
	},

	-- Tabs Vs Spaces
	-- Desc: Show tabs vs spaces
	{
		"tenxsoydev/tabs-vs-spaces.nvim",
		enabled = false,
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},

	-- MiniTrailspace
	-- Desc: Show trailing whitespace
	{
		"echasnovski/mini.trailspace",
		enabled = false,
		event = { "BufReadPost", "BufNewFile" },
		-- stylua: ignore
		keys = {
			{ '<Leader>cw', '<cmd>lua MiniTrailspace.trim()<CR>', desc = 'Erase Whitespace' },
		},
		opts = {},
	},
}
