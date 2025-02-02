-- local set = vim.opt_local
--
-- set.shiftwidth = 2
-- set.number = true
-- set.relativenumber = true

-- autocmd to apply options for every file
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",  -- applies to all file types
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})


