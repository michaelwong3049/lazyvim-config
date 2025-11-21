return {
  {
    "theprimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- harpoon setup
      harpoon.setup({
        menu = {
          width = vim.api.nvim_win_get_width(0) - 20,
        },
      })

      -- keybindings
      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "add file to harpoon" })
      vim.keymap.set("n", "<c-e>", ui.toggle_quick_menu, { desc = "open harpoon menu" })

      -- navigate between harpoon files by index
      vim.keymap.set("n", "<leader>Y", function() ui.nav_file(1) end, { desc = "navigate to file 1" })
      vim.keymap.set("n", "<leader>H", function() ui.nav_file(2) end, { desc = "navigate to file 2" })
      vim.keymap.set("n", "<leader>N", function() ui.nav_file(3) end, { desc = "navigate to file 3" })
      vim.keymap.set("n", "<leader>M", function() ui.nav_file(4) end, { desc = "navigate to file 4" })

      -- navigate to the previous and next harpoon files
      vim.keymap.set("n", "<leader>P", ui.nav_prev, { desc = "navigate to previous harpoon file" })
      -- vim.keymap.set("n", "<leader>N", ui.nav_next, { desc = "navigate to next harpoon file" })
    end,
  }
}
