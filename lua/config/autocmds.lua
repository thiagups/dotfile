-- This file is automatically loaded by lazyvim.config.init.

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Adiciona autocmd para ajustar o tipo de arquivo Jinja em arquivos HTML
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	group = augroup("adjust_jinja_filetype"),
	pattern = "*.html",
	callback = function()
		vim.cmd("call jinja#AdjustFiletype()")
	end,
})
