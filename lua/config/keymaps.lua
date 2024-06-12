local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>e", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Togglterm
keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
keymap.set("n", "<C-\\>", ":ToggleTerm<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

-- Move Lines
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- WhichKey
local wk = require("which-key")
-- Togglterm
wk.register({
	t = {
		name = "+Terminal",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		v = {
			name = "+Vertical",
			["1"] = { "<cmd>1Termexec cmd='' size=10 direction=vertical<cr>", "Vertical" },
			["2"] = { "<cmd>2Termexec cmd='' size=10 direction=vertical<cr>", "Vertical" },
		},
		["h"] = {
			name = "+Horizontal",
			["1"] = { "<cmd>1TermExec cmd='' size=10 direction=horizontal<cr>", "Horizontal" },
			["2"] = { "<cmd>2TermExec cmd='' size=10 direction=horizontal<cr>", "Horizontal" },
		},
		t = { "<cmd>ToggleTerm direction=tab<cr>", "Tab" },
	},
}, { prefix = "<leader>" }) -- Add closing curly brace here
