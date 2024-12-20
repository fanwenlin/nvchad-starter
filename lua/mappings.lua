require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local opts = { noremap = true, silent = true }

map('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
map('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<leader>qa', ':qa<CR>', { noremap = true, silent = true })
map('n', '<leader>f', ':Telescope find_files<CR>', opts)

map('n', '<leader>c', require('osc52').copy_operator, { expr = true })
map('n', '<leader>cc', '<leader>c_', { remap = true })
map('v', '<leader>c', require('osc52').copy_visual)
