--[[
nvim config

Author : @iansedano

With help from:
https://github.com/josean-dev/dev-environment-files
https://www.ssp.sh/brain/neovim-setup/
https://github.com/Alexis12119/nvim-config
--]]

vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.hl = vim.highlight -- https://github.com/neovim/neovim/issues/31675

local opts = {
	ignorecase = true,
	smartcase = true,
	hlsearch = true,
	mouse = "a",
	autoindent = true,
	title = true,
	visualbell = true,
	number = true,
	ruler = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	foldenable = false,
	foldmethod = "expr",
	foldexpr = "v:lua.vim.treesitter.foldexpr()",
	foldcolumn = "1",
	foldtext = "",
	foldlevel = 99,
	foldlevelstart = 1,
	foldnestmax = 4,
}

for key, value in pairs(opts) do
	vim.opt[key] = value
end

vim.keymap.set("n", "<leader>q", ":wqa<CR>", { noremap = true, silent = true })

require("config.lazy")
require("config.commands")
