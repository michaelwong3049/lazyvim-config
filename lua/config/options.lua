vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",  -- applies to all file types
  callback = function()
    local ft = vim.bo.filetype

    if ft == "swift" or ft == "python" then
      vim.opt_local.shiftwidth = 4
      vim.opt_local.tabstop = 4
      vim.opt_local.softtabstop = 4
    else
      vim.opt_local.shiftwidth = 2
      vim.opt_local.tabstop = 2
      vim.opt_local.softtabstop = 2
    end

		vim.opt_local.expandtab = true
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true -- optional: wraps at word boundaries, not in the middle
  end,
})

-- e.g., in options.lua/init.lua
vim.opt.splitright = true   -- vertical splits open on the right
vim.opt.splitbelow = true   -- (optional) horizontal splits open below

-- how much lines to include
vim.o.scrolloff = 8

