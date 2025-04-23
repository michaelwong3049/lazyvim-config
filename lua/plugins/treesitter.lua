return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
	ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "typescript", "javascript", "html", "tsx", "wgsl", "swift", "objc", "cpp", "go"},
	highlight = { enable = true },
	indent = { enable = true },
      })
    end
  }
}
