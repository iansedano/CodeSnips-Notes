return {
  'dense-analysis/ale',
  config = function()
    -- Define a custom Ruff fixer for import sorting
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
      { "python" },   -- Specify languages this fixer applies to
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
}
