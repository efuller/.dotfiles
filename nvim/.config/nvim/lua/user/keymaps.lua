local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "
-- keymap("n", "<Space>", "", opts)

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w', opts)
keymap('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- Move between window
keymap('n', '<Space>', '<C-w>w', opts)
keymap('', '<C-h>', '<C-w>h', opts)
keymap('', '<C-k>', '<C-w>k', opts)
keymap('', '<C-j>', '<C-w>j', opts)
keymap('', '<C-l>', '<C-w>l', opts)

-- Buffer navigation
keymap('n', '<S-l>', ':bnext<Return>', opts)
keymap('n', '<S-h>', ':bprev<Return>', opts)

keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("", "<leader>d", ":NvimTreeToggle<cr>", opts)
