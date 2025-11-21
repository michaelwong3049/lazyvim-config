return {
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
  { "catppuccin/nvim", name = "catppuccin" },
	{ "folke/tokyonight.nvim", name = "tokyonight" },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
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
    end,
  }
}
