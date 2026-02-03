return {
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
  { "catppuccin/nvim", name = "catppuccin" },
	{ "folke/tokyonight.nvim", name = "tokyonight" },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  { "EdenEast/nightfox.nvim", name = "nightfox" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,

    config = function()
      require("rose-pine").setup({
        disable_background = false,
        styles = {
          italic = false,
        },
      })

      vim.cmd.colorscheme("rose-pine")
      -- vim.cmd.colorscheme("catppuccin-mocha")
      -- vim.cmd.colorscheme("gruvbox")
      -- vim.cmd.colorscheme("oxocarbon")
      -- vim.cmd.colorscheme("nightfox")
    end,
  }
}
