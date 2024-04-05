return {
	{
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.9.1",
		config = function(_, opts)
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.jinja = {
				install_info = {
					url = "https://github.com/theHamsta/tree-sitter-jinja2",
					files = { "src/parser.c" },
				},
				filetype = "jinja",
				used_by = { "htmldjango, twig, php, html, htmljinja" },
			}
		end,
		opts = {
			ensure_installed = {
				"javascript",
				"typescript",
				"css",
				"gitignore",
				"graphql",
				"http",
				"json",
				"scss",
				"sql",
				"vim",
				"lua",
				"scss",
				"twig",
				"php",
				"regex",
			},
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},
			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "" }, -- list of language that will be disabled
				additional_vim_regex_highlighting = true,
			},
			indent = { enable = true, disable = { "yaml" } },
			rainbow = {
				enable = true,
				max_file_lines = 3000,
			},
		},
	},
	{
		"theHamsta/tree-sitter-jinja2",
	},
}
