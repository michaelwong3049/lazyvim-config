require("config.lazy")
require("config.remap")
require("config.options")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_option("clipboard", "unnamed")

