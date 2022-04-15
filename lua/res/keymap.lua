vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>w', ':w!', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'gk', 'k', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'gj', 'j', {noremap = true, silent = false})
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = false, silent = false})
