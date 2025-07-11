require("config.lazy")
require("config.remap")
require("config.options")

vim.opt.termguicolors = true
vim.api.nvim_set_option("clipboard", "unnamed")

-- this is for the proper clear backgrounds
vim.api.nvim_create_autocmd({"WinEnter", "WinNew"}, {
  callback = function()
    -- Set all window-related highlight groups to have transparent backgrounds
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloatNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
  end,
  group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true }),
  desc = "Ensure all windows have transparent backgrounds"
})
vim.o.scrolloff = 8

