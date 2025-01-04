local vim = vim

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").pyright.setup {
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
      }
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
        preselect = cmp.PreselectMode.Item,
        mapping = {
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ['<C-p>'] = cmp.mapping.complete(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
        },
        sources = {
          { name = "nvim_lsp" },
          -- { name = "buffer" },
        },
        window = {
          documentation = {
              border = "rounded",
          }
      }
      })
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
      })
    end,
  },
  "sheerun/vim-polyglot",
  {
    'dense-analysis/ale',
    config = function()
      vim.cmd([[
        function! FormatRuffImports(buffer) abort
            return {
                \ 'command': 'ruff',
                \ 'args': ['--select', 'I', '--fix'],
                \ }
        endfunction
        ]])

      -- Register the custom Ruff fixer
      vim.fn["ale#fix#registry#Add"](
          "ruff_imports",
          "FormatRuffImports",
          { "python" }, -- Specify languages this fixer applies to
          "Ruff fixer for import sorting"
      )

      vim.g.ale_linters = {
        python = { 'ruff' },
        lua = { 'lua_language_server' }
      }
      vim.g.ale_fixers = {
        python = { 'ruff', 'ruff_format', 'ruff_imports' },
      }
      vim.g.ale_fix_on_save = 1
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
