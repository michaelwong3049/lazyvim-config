-- lua/plugins/neoscroll.lua
return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled", -- or "VeryLazy"
  config = function()
    local neoscroll = require("neoscroll")

    neoscroll.setup({
      -- Option names changed a bit in newer versions
      easing = "sine",          -- instead of `easing_function`
      stop_eof = true,
      respect_scrolloff = true,
      -- performance_mode = true, -- still available if you want it
    })

    -- Custom mappings using helper functions
    local keymap = {
      ["<C-u>"] = function()
        neoscroll.ctrl_u({ duration = 250 })
      end,
      ["<C-d>"] = function()
        neoscroll.ctrl_d({ duration = 250 })
      end,
      ["<C-b>"] = function()
        neoscroll.ctrl_b({ duration = 300 })
      end,
      ["<C-f>"] = function()
        neoscroll.ctrl_f({ duration = 300 })
      end,
      ["zz"] = function()
        neoscroll.zz({ half_win_duration = 250 })
      end,
      ["zt"] = function()
        neoscroll.zt({ half_win_duration = 250 })
      end,
      ["zb"] = function()
        neoscroll.zb({ half_win_duration = 250 })
      end,
    }

    local modes = { "n", "v", "x" } -- same as old neoscroll defaults
    for keys, func in pairs(keymap) do
      vim.keymap.set(modes, keys, func, { silent = true })
    end
  end,
}
