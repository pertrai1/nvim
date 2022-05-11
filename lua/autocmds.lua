local group = vim.api.nvim_create_augroup("MyAutogroup", {})

vim.api.nvim_create_autocmd("CursorMoved", {
    group = group,
    pattern = "*",
    callback = "PoppyInit",
})
vim.api.nvim_create_autocmd("CursorMoved", {
    group = group,
    pattern = "*",
    callback = require("fold").close_all,
})
vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank { higroup = "HighlightedyankRegion", timeout = 150 }
    end,
})
vim.api.nvim_create_autocmd("VimEnter", {
    group = group,
    pattern = "*",
    callback = function()
        vim.cmd [[highlight QuickScopePrimary gui=bold guifg=NONE guibg=NONE]]
        vim.cmd [[highlight QuickScopeSecondary gui=bold guifg=NONE guibg=NONE]]
    end,
})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = group,
    pattern = "*",
    callback = require("buffers").write_pre,
})
vim.api.nvim_create_autocmd("BufWritePost", {
    group = group,
    pattern = "*",
    command = "GitGutter",
})
vim.api.nvim_create_autocmd("User", {
    group = group,
    pattern = "FugitiveBlob",
    callback = function()
        vim.opt.winhighlight:append "DiffAdd:DiffDeleteOld"
    end,
})
