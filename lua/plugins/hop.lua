vim.cmd [[ hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#d1cde4 guifg=#1b192a ]]
vim.cmd [[ hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#d1cde4 guifg=#1b192a ]]
vim.cmd [[ hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#d1cde4 guifg=#1b192a ]]

require('hop').setup({
    case_insensitive = true,
    char2_fallback_key = '<CR>',
    quit_key = '<Esc>',
})
