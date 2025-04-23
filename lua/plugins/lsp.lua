vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
	ui = {
	  icons = {
	    package_installed = "✓",
	    package_pending = "->",
	    package_uninstalled = "x"
	  }
	}
      })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
	ensure_installed = {
	  "lua_ls",
	  "rust_analyzer",
	  "ts_ls",
	  "java_language_server",
	  "jdtls",
	  "html",
	  "tailwindcss",
	  "cssls",
	}
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp'
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup{ capabilities = capabilities }
      require("lspconfig").html.setup{ capabilities = capabilities }
      require("lspconfig").ts_ls.setup{ capabilities = capabilities }
      require("lspconfig").jdtls.setup{ capabilities = capabilities }
      require("lspconfig").pyright.setup{ capabilities = capabilities }
      require("lspconfig").gopls.setup{}
      require("lspconfig").sourcekit.setup{
	capabilities = {
	  textDocument = {
	    diagnostic = {
	      dynamicRegistration = true,
	      relatedDocumentSupport = true
	    }
	  },
	  workspace = {
	    didChangeWatchedFiles = {
	      dynamicRegistration = true,
	    },
	  },
	},
      }

      -- swift binds
      vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP Actions',
	callback = function(args)
	  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {noremap = true, silent = true})
	  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true, silent = true})
	end,
      })
    end
  }
}

