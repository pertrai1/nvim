vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})

vim.api.nvim_set_keymap("n", "<F2>", "<Plug>(coc-rename)", { noremap = true })

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", {silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>do", "<Plug>(coc-codeaction)", {silent = false, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {silent = false, noremap = true })


vim.api.nvim_set_keymap("n", "<leader>ca", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>cr", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>cf", "<Plug>(coc-format-selected)", {})

vim.api.nvim_set_keymap("n", "<leader>cd", ":<C-u>CocList diagnostic<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cs", ":<C-u>CocList -I symbols<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>co", ":<C-u>CocList -I outline<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "[g", "<Plug>(coc-diagnostic-pre)", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>cl", ":CocCommand eslint.executeAutofix<CR>", {})


vim.api.nvim_set_keymap("n", "<leader>cf", ":exe 'CocList -I --input='.expand('<cword>').' grep'<CR>", { silent = true })

vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
