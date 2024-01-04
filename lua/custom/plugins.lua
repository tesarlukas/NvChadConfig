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
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup {
        neovim_image_text = "kdo to čte je teplej", -- Text displayed when hovered over the Neovim image
        main_image = "neovim", -- Main image display (either "neovim" or "file")
        enable_line_number = false, -- Displays the current line number instead of the current project
        show_time = true, -- Show the timer
        -- Rich Presence text options
        editing_text = "smrdis prdis", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
        file_explorer_text = "smrdis prdis", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
        git_commit_text = "smrdis prdis", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
        plugin_manager_text = "smrdis prdis", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        reading_text = "smrdis prdis", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
        workspace_text = "smrdis prdis", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
        line_number_text = "smrdis prdis", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
      }
    end,
    lazy = false,
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
    event = "VeryLazy",
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {}
    end,
  },
}
return plugins
