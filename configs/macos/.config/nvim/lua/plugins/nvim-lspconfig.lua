return {
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
}