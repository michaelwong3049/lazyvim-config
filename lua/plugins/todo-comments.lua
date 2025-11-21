return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- optional: customize keywords/colors
    keywords = {
      TODO = { icon = " ", color = "info" },
      FIX  = { icon = " ", color = "error" },
      HACK = { icon = " ", color = "warning" },
    },
  },
}
