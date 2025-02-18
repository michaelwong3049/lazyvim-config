require("config.lazy")
require("config.remap")
require("config.options")

vim.opt.termguicolors=true

-- THIS IS FOR CLEAR BACKGROUNDS
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_option("clipboard", "unnamed")

vim.o.scrolloff = 8

