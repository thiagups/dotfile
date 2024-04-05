return {
	-- {
	-- 	"sainnhe/sonokai",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.sonokai_transparent_background = "1"
	-- 		vim.g.sonokai_enable_italic = "1"
	-- 		vim.g.sonokai_style = "andromeda"
	-- 		vim.cmd.colorscheme("sonokai")
	-- 	end,
	-- },
	{
		"navarasu/onedark.nvim",
		enabled = false,
		opts = {
			style = "deep",
			transparent = true,
		},
	},
	{
		'uloco/bluloco.nvim',
		enabled = false,
		lazy = false,
		priority = 1000,
		dependencies = { 'rktjmp/lush.nvim' },
		opts = {
			style = 'dark',
			transparent = true,
			italics = true,
		}
	},
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		opts = {
			style = 'night',
			transparent = true,
			italics = true,
		}
	}
}
