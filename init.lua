require("config.lazy")

--显示
local set = vim.o
set.number = true
set.relativenumber = true
set.clipboard = "unnamed"

-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})

--按键绑定
local opt = { noremap = true, silent = true }
vim.g.mapleader = " "
