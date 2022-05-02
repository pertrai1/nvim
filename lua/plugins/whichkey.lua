local wk = require("which-key")

wk.setup({
    window = {
        border = "rounded",
    },
    layout = {
        align = "center",
    },
    ignore_missing = true
})

wk.register({
    ["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" },
    ["o"] = { ":SymbolsOutline<CR>", "Symbols Outline" },

    a = {
        name = "General",
        b = { "<Plug>(openbrowser-smart-search)", "Browser Search" },
        c = { "<cmd>lua require 'buffers'.close()<CR>", "Close File" },
        C = { "<cmd>lua require 'buffers'.close_others()<CR>", "Close Others" },
        f = { "<cmd>lua require('fzf-lua').files()<CR>", "Open File" },
        q = { "<cmd>lua require('fzf-lua').files()<CR>", "Quick Open" },
        h = { ":split", "Horizontal Split" },
        s = { ":update<CR>", "Save File" },
        v = { ":vsplit<CR>", "Vertical Split" }
    },

    b = {
        name = "Buffers",
        d = { "<cmd>BufferLineSortByDirectory<CR>", "Sort by Directory" },
        f = { "<cmd>lua require('fzf-lua').buffers()<CR>", "List Buffers" },
        j = { "<cmd>BufferLinePick<CR>", "Jump to Buffer" },
        l = { "<cmd>BufferLineCloseLeft<CR>", "Close all Left" },
        m = { "<cmd>BufferLineMoveNext<CR>", "Move Right" },
        M = { "<cmd>BufferLineMovePrev<CR>", "Move Left" },
        n = { "<cmd>BufferLineCycleNext<CR>", "Next File" },
        p = { "<cmd>BufferLineCyclePrev<CR>", "Previous File" },
        r = { "<cmd>BufferLineCloseRight<CR>", "Close all Right" },
    },

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
        o = { "<cmd>lua require('fzf-lua').lsp_document_symbols<CR>", "Outline" },
        q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        R = { "<cmd>lua require('fzf-lua').lsp_references<CR>", "References" },
        s = { "<cmd>lua require('fzf-lua').lsp_document_symbols<CR>", "Document Symbols" },
        S = { "<cmd>lua require('fzf-lua').lsp_workspace_symbols()<CR>", "Workspace Symbols" },
    },

    f = {
        name = "File",
        c = { "<cmd>lua require('buffers').close()<CR>", "Close" },
        s = { ":update<CR>", "Save" }
    },

    g = {
        name = "Git",
        b = { "<cmd>lua require('fzf-lua').git_branches()<CR>", "Branches" },
        B = { ":Git blame<CR>", "Blame" },
        c = { "<cmd>lua require('fzf-lua').git_commits()<CR>", "Commits" },
        d = { ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>", "Diff File" },
        h = { "<Plug>(GitGutterNextHunk)", "Next Hunk" },
        H = { "<Plug>(GitGutterPrevHunk)", "Previous Hunk" },
        l = { ":LazyGit<CR>", "LazyGit" },
        s = { "<cmd>lua require('fzf-lua').git_status()<CR>", "Status" },
        S = { "<Plug>(GitGutterStageHunk)", "Stage Hunk" },
        u = { "<Plug>(GitGutterUndoHunk)", "Undo Hunk" },
    },

    h = {
        name = "Help",
        C = { "<cmd>lua require('fzf-lua').colorschemes()<CR>", "Color Schemes" },
        c = { "<cmd>lua require('fzf-lua').commands()<CR>", "Commands" },
        h = { "<cmd>lua require('fzf-lua').help_tags()<CR>", "Help Tags" },
        M = { "<cmd>lua require('fzf-lua').man_pages()<CR>", "Man Pages" },
        k = { "<cmd>lua require('fzf-lua').keymaps()<CR>", "Keymaps" },
    },

    j = {
        name = "Jumps",
        b = { "<Plug>Lightspeed_S", "Backward" },
        f = { "<Plug>Lightspeed_s", "Forward" }
    },

    n = {
        name = "Navigation",
        b = { "<cmd>lua require('fzf-lua').buffers()<CR>", "Buffers" },
        f = { "<cmd>lua require('fzf-lua').files()<CR>", "Files" },
        r = { ":RnvimrToggle<CR>", "Ranger" },
        s = { ":Neotree toggle float<CR>", "Sidebar Float" },
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
        b = { "<cmd>lua require('fzf-lua').oldfiles()<CR>", "Recent File" },
        g = { "<cmd>lua require('fzf-lua').git_files()<CR>", "Git Files" },
        l = { "<cmd>lua require('fzf-lua').grep_last()<CR>", "Last Search" },
        R = { "<cmd>lua require('fzf-lua').registers()<CR>", "Registers" },
        r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
        w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
        f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
        t = { "<cmd>lua require('fzf-lua').live_grep()<CR>", "Find Text" },
    },

    l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Actions" },
        d = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration (gD)" },
        D = { "<cmd>lua require('fzf-lua').lsp_definitions()<CR>", "Definition" },
        f = { "<cmd>lua require('fzf-lua').lsp_references()<CR>", "Find References" },
        h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Code Hover" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implemention" },
        l = { "<cmd>lua require'lsp.diagnostics'.line_diagnostics()<CR>", "Line Diagnostics" },
        r = { "<cmd>lua require'lsp.rename'.rename()<CR>", "Rename" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
        z = { "<cmd>LspInfo<CR>", "LSP Info" }
    },

    s = {
        name = "Search",
        c = { "<cmd>lua require('fzf-lua').grep_cword()<CR>", "Current Word" },
        f = { "<cmd>lua require('fzf-lua').live_grep_native()<CR>", "Find Text" },
        h = { "<cmd>lua require('fzf-lua').search_history()<CR>", "History" },
        l = { "<cmd>lua require('fzf-lua').grep_last()<CR>", "Last Search" },
        m = { "<cmd>lua require('fzf-lua').marks()<CR>", "Marks" },
        p = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project" },
        P = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project - Live" },
        v = { "<cmd>lua require('fzf-lua').grep_visual()<CR>", "Visual Selection" },
    },

    t = {
        name = "Testing",
        f = { ":TestFile<CR>", "File" },
        l = { ":TestLast<CR>", "Last" },
        n = { ":TestNearest<CR>", "Nearest" },
        s = { ":TestSuite<CR>", "Suite" },
        v = { ":TestVisit<CR>", "Visit" }
    },

    w = {
        name = "Window",
        S = { ":Neotree position=right<CR>", "Sidebar Right" },
        s = { ":Neotree position=left<CR>", "Sidebar Left" },
        t = { ":Neotree position=float<CR>", "Sidebar Float" }
    }

}, { mode = "n", prefix = "<Space>" })

wk.register({
    ["/"] = { "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", "Comment" },
}, { mode = "v", prefix = "<Space>" })
