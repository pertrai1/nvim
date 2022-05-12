local wk = require("which-key")

wk.setup({
    window = {
        border = "single",
    },
    layout = {
        align = "center",
    },
    ignore_missing = true
})

wk.register({
    ["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" },
    ["o"] = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
    ["q"] = { "<cmd>lua require 'buffers'.close()<CR>", "Close File" },

    a = {
        name = "General",
        b = { "<Plug>(openbrowser-smart-search)", "Browser Search" },
        c = { "<cmd>lua require 'buffers'.close()<CR>", "Close File" },
        C = { "<cmd>lua require 'buffers'.close_others()<CR>", "Close Others" },
        f = { "<cmd>lua require('fzf-lua').files()<CR>", "Open File" },
        q = { "<cmd>lua require('fzf-lua').files()<CR>", "Quick Open" },
        h = { "<cmd>split", "Horizontal Split" },
        s = { "<cmd>update<CR>", "Save File" },
        v = { "<cmd>vsplit<CR>", "Vertical Split" }
    },

    b = {
        name = "Buffers",
        d = { "<cmd>BufferLineSortByDirectory<CR>", "Sort by Directory" },
        f = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "List Buffers" },
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
        o = { "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Outline" },
        q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        R = { "<cmd>lua require('telescope.builtin').lsp_references()<CR>", "References" },
        s = { "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Document Symbols" },
        S = { "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>", "Workspace Symbols" },
    },

    f = {
        name = "File",
        b = { "<cmd>Telescope file_browser<CR>", "Browser" },
        c = { "<cmd>lua require('buffers').close()<CR>", "Close" },
        f = { "<cmd>RnvimrToggle<CR>", "Ranger" },
        n = { "<cmd>enew<CR>", "New File" },
        o = { "<cmd>Neotree position=float<CR>", "Open" },
        r = { "<cmd>lua require('telescope.builtin').oldfiles()<CR>", "Open Recent" },
        s = { "<cmd>update<CR>", "Save" }
    },

    g = {
        name = "Git",
        b = { "<cmd>lua require('telescope.builtin').git_branches()<CR>", "Branches" },
        B = { "<cmd>Git blame<CR>", "Blame" },
        c = { "<cmd>lua require('telescope.builtin').git_commits()<CR>", "Commits" },
        d = { ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>", "Diff File" },
        h = { "<Plug>(GitGutterNextHunk)", "Next Hunk" },
        H = { "<Plug>(GitGutterPrevHunk)", "Previous Hunk" },
        l = { "<cmd>LazyGit<CR>", "LazyGit" },
        s = { "<cmd>lua require('telescope.builtin').git_status()<CR>", "Status" },
        S = { "<Plug>(GitGutterStageHunk)", "Stage Hunk" },
        u = { "<Plug>(GitGutterUndoHunk)", "Undo Hunk" },
    },

    h = {
        name = "Help",
        C = { "<cmd>lua require('telescope.builtin').colorscheme()<CR>", "Color Schemes" },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<CR>", "Help Tags" },
        m = { "<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages" },
        k = { "<cmd>lua require('telescope.builtin').keymaps()<CR>", "Keymaps" },
    },

    m = {
        name = "Go",
        b = { "<Plug>Lightspeed_S", "Jump Backward" },
        B = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Buffers" },
        F = { "<cmd>lua require('telescope.builtin').find_files()<CR>", "Files" },
        f = { "<Plug>Lightspeed_s", "Jump Forward" }
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
        b = { "<cmd>lua require('telescope.builtin').oldfiles()<CR>", "Recent File" },
        g = { "<cmd>lua require('telescope.builtin').git_files()<CR>", "Git Files" },
        l = { "<cmd>lua require('fzf-lua').grep_last()<CR>", "Last Search" },
        R = { "<cmd>lua require('telescope.builtin').registers()<CR>", "Registers" },
        r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
        w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
        f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
        F = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Find in Files" },
        t = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Find Text" },
    },

    l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Actions" },
        d = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration (gD)" },
        D = { "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "Definition" },
        f = { "<cmd>lua require('telescope.builtin').lsp_references()<CR>", "Find References" },
        h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Code Hover" },
        i = { "<cmd>lua require('telescope.builtin').lsp_implementations<CR>", "Implemention" },
        l = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Line Diagnostics" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        s = { "<cmd>lua require('lsp_signature').signature()<CR>", "Signature" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
        z = { "<cmd>LspInfo<CR>", "LSP Info" }
    },

    s = {
        name = "Search",
        b = { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", "Current Buffer" },
        c = { "<cmd>lua require('telescope.builtin').grep_string()<CR>", "Current Word" },
        f = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Find Text" },
        h = { "<cmd>lua require('telescope.builtin').search_history()<CR>", "History" },
        l = { "<cmd>lua require('telescope.builtin').resume()<CR>", "Last Picks" },
        m = { "<cmd>lua require('telescope.builtin').marks()<CR>", "Marks" },
        p = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project" },
        P = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project - Live" },
        r = { "<cmd>lua require('telescope.builtin').pickers()<CR>", "Recent Picks" },
        v = { "<cmd>lua require('fzf-lua').grep_visual()<CR>", "Visual Selection" },
    },

    t = {
        name = "Testing",
        f = { "<cmd>TestFile<CR>", "File" },
        l = { "<cmd>TestLast<CR>", "Last" },
        n = { "<cmd>TestNearest<CR>", "Nearest" },
        s = { "<cmd>TestSuite<CR>", "Suite" },
        v = { "<cmd>TestVisit<CR>", "Visit" }
    },

    v = {
        name = "View",
        c = { "<cmd>lua require('telescope.builtin').commands()<CR>", "Commands" },
        d = { "<cmd>TroubleToggle<cr>", "Problems" },
        e = { "<cmd>Neotree position=left toggle<CR>", "Explorer" },
        f = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Search" },
        n = { "<cmd>Neotree toggle float<CR>", "Sidebar Float" },
        s = { "<cmd>LazyGit<CR>", "SCM" },
    },

    w = {
        name = "Window",
        S = { "<cmd>Neotree position=right<CR>", "Sidebar Right" },
        s = { "<cmd>Neotree position=left<CR>", "Sidebar Left" },
        t = { "<cmd>Neotree position=float<CR>", "Sidebar Float" }
    }

}, { mode = "n", prefix = "<Space>" })

wk.register({
    ["/"] = { "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", "Comment" },
}, { mode = "v", prefix = "<Space>" })
