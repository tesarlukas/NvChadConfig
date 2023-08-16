local plugins = {
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "custom-elements-languageserver",
        "css-lsp",
        "eslint_d",
        "prettier",
        "prettierd",
        "emmet-ls",
        "gitlint",
      },
    },
  },
  {
    "nvim-treesitter/playground",
    event = "VeryLazy",
    config = function()
      require("nvim-treesitter.configs").setup {}
    end,
  },
  {
    "sindrets/vim-fugitive",
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require "plugins.configs.treesitter"
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    lazy = false,
  },
}
return plugins
