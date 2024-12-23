return {
  "preservim/nerdtree",
  'Xuyuanp/nerdtree-git-plugin',
  "sheerun/vim-polyglot",
  "dense-analysis/ale",
  "mattn/emmet-vim",
  "tpope/vim-surround",
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },
  "airblade/vim-gitgutter",
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }
}