return {
	-- Guess-indent
	-- Automatic indentation style detection
	{ "nmac427/guess-indent.nvim", lazy = false, priority = 50, config = true },
	-- Hihglight colors
	-- Color code in the editor
	{
		"echasnovski/mini.hipatterns",
		event = "BufReadPre",
		opts = {},
	},
	-- Super powerful color picker/colorizer plugin
	-- Desc: Color-picker RGB HEX
	{
		"uga-rosa/ccc.nvim",
		event = "FileType",
		keys = {
			{ "<Leader>mc", "<cmd>CccPick<CR>", desc = "Color-picker" },
		},
		opts = {
			highlighter = {
				auto_enable = true,
				lsp = true,
				excludes = { "lazy", "mason", "help", "neo-tree" },
			},
		},
	},
}
