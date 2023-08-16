local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-a>"] = "",
    ["<leader>X"] = "",
    ["X"] = "",
    ["<C-s>"] = "",
    -- tabufline
    ["H"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(-1)
      end,
      "move buffer backwards",
    },
    ["L"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(-1)
      end,
      "move buffer backwards",
    },
  },
}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>X"] = {
      function()
        require("nvchad_ui.tabufline").close_AllBufs()
      end,
      "close all buffers",
    },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    -- ...
  },
}

return M
