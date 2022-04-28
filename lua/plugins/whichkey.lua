local wk = require("which-key")

wk.setup({
    ignore_missing = true
})
wk.register({
    d = {
        name = "Diagnostics",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        c = { "<cmd>TroubleToggle<cr>", "Toggle Diagnostics" },
        d = { "<cmd>TroubleToggle worspace_diagnostics<cr>", "Toggle Workspace Diagnostics" },
        e = { "<cmd>TroubleToggle document_diagnostics<cr>", "Toggle Document Diagnostics" },
        w = {
            "<cmd>Telescope lsp_workspace_diagnostics<cr>",
            "Workspace Diagnostics",
        },
        f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
        F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
        j = {
            "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
            "Next Diagnostic",
        },
        k = {
            "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
            "Prev Diagnostic",
        },
        l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        o = { "<cmd> lua require('fzf-lua').lsp_document_symbols<CR>", "Outline" },
        q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        R = { "<cmd> lua require('fzf-lua').lsp_references<CR>", "References" },
        s = { "<cmd> lua require('fzf-lua').lsp_document_symbols<CR>", "Document Symbols" },
        S = { "<cmd> lua require('fzf-lua').lsp_workspace_symbols()<CR>", "Workspace Symbols" },
    },
    f = {
        name = "Find",
        g = { "<cmd> lua require('fzf-lua').git_files()<CR>", "Git Files" },
        t = { "<cmd> lua require('fzf-lua').live_grep()<CR>", "Find Text" },
        h = { "<cmd> lua require('fzf-lua').help_tags()<CR>", "Help" },
        l = { "<cmd> lua require('fzf-lua').grep_last()<CR>", "Last Search" },
        M = { "<cmd> lua require('fzf-lua').man_pages()<CR>", "Man Pages" },
        r = { "<cmd> lua require('fzf-lua').oldfiles()<CR>", "Recent File" },
        R = { "<cmd> lua require('fzf-lua').registers()<CR>", "Registers" },
        k = { "<cmd> lua require('fzf-lua').keymaps()<CR>", "Keymaps" },
        C = { "<cmd> lua require('fzf-lua').commands()<CR>", "Commands" },
    },
    g = {
        name = "Git",
        b = { "<cmd> lua require('fzf-lua').git_branches()<CR>", "Branches" },
        B = { ":Git blame<CR>", "Blame" },
        c = { "<cmd> lua require('fzf-lua').git_commits()<CR>", "Commits" },
        d = { ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>", "Diff File" },
        h = { "<Plug>(GitGutterNextHunk)", "Next Hunk" },
        H = { "<Plug>(GitGutterPrevHunk)", "Previous Hunk" },
        l = { ":LazyGit<CR>", "LazyGit" },
        s = { "<cmd> lua require('fzf-lua').git_status()<CR>", "Status" },
        S = { "<Plug>(GitGutterStageHunk)", "Stage Hunk" },
        u = { "<Plug>(GitGutterUndoHunk)", "Undo Hunk" },
    },
    n = {
        name = "Navigation",
        b = { "<cmd> lua require('fzf-lua').buffers()<CR>", "Buffers" },
        c = { "<cmd> lua require('fzf-lua').commands()<CR>", "Commands" },
        f = { "<cmd> lua require('fzf-lua').files()<CR>", "Files" },
        h = { "<cmd> lua require('fzf-lua').help_tags()<CR>", "Help Tags" },
        m = { "<cmd> lua require('fzf-lua').marks()<CR>", "Marks" },
        r = { ":RnvimrToggle<CR>", "Ranger" },
    },
    p = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
    r = {
        name = "Find/Replace",
        r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
        w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
        f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
    },
    s = {
        name = "Search",
    },
    t = {
        name = "Testing",
        f = { ":TestFile<CR>", "File" },
        l = { ":TestLast", "Last" },
        n = { ":TestNearest<CR>", "Nearest" },
        s = { ":TestSuite", "Suite" },
        v = { ":TestVisit", "Visit" }
    }
}, { prefix = "<Space>" })
