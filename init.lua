require("config.lazy")
require("config.remap")
require("config.options")

vim.opt.termguicolors = true
vim.o.termguicolors = true
vim.opt.guicursor = "n-v-c:block,i:blinkon1-blinkoff1-block"
vim.api.nvim_set_option("clipboard", "unnamed")

-- Use simple, reliable indent-based folding for TS/TSX
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  callback = function()
    vim.opt_local.foldmethod = "indent"
    vim.opt_local.foldexpr = ""
    vim.opt_local.foldenable = true
    vim.opt_local.foldlevel = 99
    vim.opt_local.foldlevelstart = 99
    vim.opt_local.foldminlines = 1
  end,
})

-- this is for the proper clear backgrounds
-- vim.api.nvim_create_autocmd({"WinEnter", "WinNew"}, {
--   callback = function()
--     -- Set all window-related highlight groups to have transparent backgrounds
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloatNC", { bg = "none" })
--     vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--     vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
--     vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
--     vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
--     vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
--     vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
--   end,
--   group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true }),
--   desc = "Ensure all windows have transparent backgrounds"
-- })
vim.o.scrolloff = 8

vim.api.nvim_set_hl(0, "@text.strike", { strikethrough = true })
vim.api.nvim_set_hl(0, "htmlStrike", { strikethrough = true })

-- no italic
vim.api.nvim_set_hl(0, "Comment", { italic = false })
vim.api.nvim_set_hl(0, "Identifier", { italic = false })
vim.api.nvim_set_hl(0, "Function", { italic = false }) -- optional

vim.api.nvim_set_hl(0, "Comment", { fg = "#5c6370" })

