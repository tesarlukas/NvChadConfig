local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>X"] = "",
    ["X"] = "",
    ["<C-s>"] = "",

    -- reserver for codeium
    ["<A-G>"] = "",
    ["<A-a>"] = "",
    ["<A-d>"] = "",
    ["<A-x>"] = "",
  },
}

-- Your custom mappings
M.abc = {
  n = {
    -- tabufline
    ["<leader>X"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "close all buffers",
    },
    ["H"] = {
      function()
        require("nvchad.tabufline").move_buf(-1)
      end,
      "move buffer backwards",
    },
    ["L"] = {
      function()
        require("nvchad.tabufline").move_buf(1)
      end,
      "move buffer backwards",
    },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    -- ...
  },
}

return M
