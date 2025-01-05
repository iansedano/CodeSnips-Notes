--[[
nvim config

Author : @iansedano

With help from:
https://github.com/josean-dev/dev-environment-files
https://www.ssp.sh/brain/neovim-setup/
https://github.com/Alexis12119/nvim-config
--]]

vim.g.mapleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.mouse = "a"
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.visualbell = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldenable = false
vim.wo.relativenumber = true


vim.keymap.set("n", "<leader>p", ":FzfLua files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>P", ":FzfLua commands<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>b", ":FzfLua buffers<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>z", ":FzfLua<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>F", ":FzfLua live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":wqa<CR>", { noremap = true, silent = true })


require('config.lazy')
