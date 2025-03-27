local opts = { noremap = true, silent = true }

-- assign keybind to go to file explore; kebyind for :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allow for whole word deletion
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word backward" })

-- telescope binds
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- bind moving lines of code using shift block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- splitting and moving windows
vim.keymap.set("n", "ss", ":vsplit<CR>", opts)
vim.keymap.set("n", "sv", ":split<Return>", opts)

vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

