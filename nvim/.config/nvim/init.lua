local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<Space>", "", opts)

require('user.keymaps')
require('user.settings')
require('user.highlights');
require('user.plugins')

