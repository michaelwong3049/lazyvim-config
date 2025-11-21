return {
    "sylvanfranklin/omni-preview.nvim",
    opts = {},
    vim.keymap.set("n", "<leader>po", ":OmniPreview start<CR>", { silent = true }),
    vim.keymap.set("n", "<leader>pc", ":OmniPreview stop<CR>", { silent = true })
}
