return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },

  config = function()
    require("nvim-tree").setup({
      view = {
	width = 30,
	side = "left"
      },

      -- this is the fix to tab to the right using the "sl" or "sr" or other keybinds
      on_attach = function(bufnr)
	local api = require('nvim-tree.api')

	-- Default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- Remove the default mappings for s+any key
	local function remove_mapping(key)
	  vim.keymap.del('n', key, { buffer = bufnr })
	end

	-- Remove the default 's' mapping (if it exists)
	remove_mapping('s')

	-- Add your custom mappings within the NvimTree buffer
	local opts = { buffer = bufnr, noremap = true, silent = true }
	vim.keymap.set('n', 'sh', '<C-w>h', opts)
	vim.keymap.set('n', 'sl', '<C-w>l', opts)
	vim.keymap.set('n', 'sj', '<C-w>j', opts)
	vim.keymap.set('n', 'sk', '<C-w>k', opts)
      end,
    })
  end,
}
