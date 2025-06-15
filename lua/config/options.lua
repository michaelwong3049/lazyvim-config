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


