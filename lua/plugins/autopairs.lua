return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")

      npairs.setup({
        check_ts = true
      })

      npairs.add_rules({
        Rule("$", "$", "typst")
          :with_move(function() return true end)
          :with_pair(function() return true end)
          :with_del(function() return true end)
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  }
}
