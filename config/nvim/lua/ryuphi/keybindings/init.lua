vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- for moving between different splits you can use c-h c-j c-k c-l
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<Esc>', {noremap = true, silent = false})
map('i', 'kj', '<Esc>', {noremap = true, silent = false})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})
