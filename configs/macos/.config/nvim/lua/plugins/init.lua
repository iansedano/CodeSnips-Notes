local vim = vim

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      settings = {
        pyright = {
          disableOrganizeImports = true,
        },
        python = {
          analysis = {
            useLibraryCodeForTypes = true,
            typeCheckingMode = "basic",
          },
        },
      },
    },
    
    config = function ()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = {
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
        },
      })
    end,
  },
  "sheerun/vim-polyglot",
  {
    'dense-analysis/ale',
    config = function()
      -- Configuration goes here.
      local g = vim.g

      g.ale_linters = {
        python = { 'ruff', 'pyright' },
        lua = { 'lua_language_server' }
      }
    end
  },
  "mattn/emmet-vim",
  "tpope/vim-surround",
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  "airblade/vim-gitgutter",
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    cmd = {
      'NvimTreeOpen',
      'NvimTreeClose',
      'NvimTreeToggle',
      'NvimTreeFocus',
      'NvimTreeRefresh',
      'NvimTreeFindFile',
      'NvimTreeFindFileToggle',
      'NvimTreeClipboard',
      'NvimTreeResize',
      'NvimTreeCollapse',
      'NvimTreeCollapseKeepBuffers',
      'NvimTreeHiTest',
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "python", "lua", "vim", "vimdoc", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    'tanvirtin/monokai.nvim',
    config = function()
      vim.cmd('colorscheme monokai')
    end
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/dev', '~/Dropbox', '/' },
      -- log_level = 'debug',
    }
  },
  {
    'mg979/vim-visual-multi'
  },
}
