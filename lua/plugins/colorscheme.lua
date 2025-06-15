-- lua/plugins/colorscheme.lua
return {
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
  { "catppuccin/nvim", name = "catppuccin" },
	{ "folke/tokyonight.nvim", name = "tokyonight" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        disable_background = false,
      })
      vim.cmd.colorscheme("rose-pine")
    end,
  }
}
