return {
	------ LazyGit
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{
				";c",
				":LazyGit<Return>",
				silent = true,
				noremap = true,
			},
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"tpope/vim-fugitive",
	},

	-- Fubitive Bitbucket
	{
		"tommcdo/vim-fubitive",
	},

	-- Diffview
	{
		"sindrets/diffview.nvim",
	},
}
