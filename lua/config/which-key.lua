local wk = require("which-key")

wk.register({
	t = {
		name = "Terminal",
		j = {
			"<Cmd>2TermExec cmd='gulp js' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Gulp JS",
		},
		s = {
			"<Cmd>2TermExec cmd='gulp sass' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Gulp SCSS",
		},
		c = {
			"<Cmd>2TermExec cmd='gulp css' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Gulp CSS",
		},
		p = {
			"<cmd>2TermExec cmd='gulp settings' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Gulp Settings",
		},
		w = {
			"<Cmd>1TermExec cmd='tray watch' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Tray Watch",
		},
		o = {
			"<Cmd>1TermExec cmd'gulp test' size=4 close_on_exit=1 direction=horizontal<CR>",
			"Gulp Test",
		},
	},
}, { prefix = "<leader>" })
