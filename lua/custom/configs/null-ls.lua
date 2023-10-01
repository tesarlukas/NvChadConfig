local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettierd,
  formatting.stylua,
  formatting.black,

  lint.shellcheck,
  lint.eslint_d,
  lint.mypy,
  lint.ruff
  -- lint.eslint
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- on_attach = function()
  --   vim.api.nvim_create_autocmd("BufWritePost", {
  --     callback = function()
  --       vim.lsp.buf.format()
  --     end,
  --   })
  -- end,
}
