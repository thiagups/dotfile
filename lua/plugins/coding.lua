return {
	-----------------------------------------------------------------------------
	-- Trailing whitespace highlight and remove
	{
		"echasnovski/mini.trailspace",
		event = { "BufReadPost", "BufNewFile" },
		-- stylua: ignore
		keys = {
			{ '<Leader>cw', '<cmd>lua MiniTrailspace.trim()<CR>', desc = 'Erase Whitespace' },
		},
		opts = {},
	},
}
