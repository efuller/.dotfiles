vim.cmd("autocmd!")

local wo = vim.wo


-- Indention Options
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftround = true
vim.opt.shiftwidth= 2
vim.opt.smarttab = true
vim.opt.tabstop= 2
vim.opt.expandtab = true
vim.opt.confirm = true
vim.opt.cindent = true
vim.opt.wrap = true
--vim.opt.splitbelow = 'splitright'
wo.number = true

-- Yank and Paste
vim.opt.clipboard:append { 'unnamedplus' }
