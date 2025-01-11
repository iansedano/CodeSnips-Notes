return {
	"ibhagwan/fzf-lua",
	opts = {
		grep = {
			grep_opts = "--binary-files=without-match --line-number --recursive --color=auto --perl-regexp -e --hidden",
			rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e --hidden",
		},
	},
	keys = {
		{ "<leader>p", ":FzfLua files<CR>", "n" },
		{ "<leader>P", ":FzfLua commands<CR>", "n" },
		{ "<leader>b", ":FzfLua buffers<CR>", "n" },
		{ "<leader>z", ":FzfLua<CR>", "n" },
		{ "<leader>F", ":FzfLua live_grep<CR>", "n" },
	},
}
