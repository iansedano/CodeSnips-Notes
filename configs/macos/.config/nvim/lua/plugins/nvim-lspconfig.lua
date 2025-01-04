return {
  "neovim/nvim-lspconfig",
  init = function()
    -- vim.keymap.set("n", "<leader>lf", "<cmd>Format<cr>", { desc = "LSP | Format", silent = true })
    -- vim.keymap.set("n", "<leader>lF", "<cmd>FormatToggle<cr>", { desc = "LSP | Toggle Autoformat", silent = true })
    -- vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "LSP | Info", silent = true })
    -- vim.keymap.set("n", "<leader>lR", "<cmd>LspRestart<cr>", { desc = "LSP | Restart", silent = true })
  end,
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
}
