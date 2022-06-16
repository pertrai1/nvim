local ok, wk = pcall(require, 'which-key')
if not ok then
    return
end

wk.setup({
    window = {
        border = "rounded",
        padding = { 2, 2, 2, 2 },
    },
    layout = {
        align = "center",
    },
    ignore_missing = true
})

wk.register({
    ["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" },
    ["!"] = { "<cmd>lua require('telescope.builtin').commands()<CR>", "Commands" },
    ["?"] = { "<cmd>lua require('config.telescope').oldfiles()<CR>", "Old Files" },
    [","] = { "<cmd>lua require('telescope.builtin').git_status()<CR>", "Status" },
    ["q"] = { "<cmd>b#|bd#<CR>", "Close File" },
    ["<CR>"] = { "<cmd>lua require'lsp.diagnostics'.line_diagnostics()<CR>", "Line Diagnostics" },
    ["<C-o>"] = { "<cmd>%bd|e#|bd#<CR>", "Close Other Buffers" },
    ["<Tab>"] = { "<cmd>e#<CR>", "Switch to previous Buffer" },

    [";"] = {
        name = "General",
        b = { "<Plug>(openbrowser-smart-search)", "Browser Search" },
        c = { "<cmd>lua require 'buffers'.close()<CR>", "Close File" },
        C = { "<cmd>lua require 'buffers'.close_others()<CR>", "Close Others" },
        -- f = { "<cmd>lua require('telescope.builtin').find_files({layout_config = { horizontal = {prompt_position = 'bottom'}},previewer = false})<CR>", "Open File" },
        -- f = { "<cmd>lua require('config.telescope').find_files_no_previewer()<CR>", "Open File" },
        f = { "<cmd>lua require('config.telescope').leader_f()<CR>", "Open File - Buffers" },
        g = { "<cmd>lua require('telescope.builtin').git_files()<CR>", "Open File - Git" },
        h = { "<cmd>split<CR>", "Horizontal Split" },
        s = { "<cmd>update<CR>", "Save File" },
        v = { "<cmd>vsplit<CR>", "Vertical Split" }
    },

    a = {
        name = "Telescope",
        b = { "<cmd>lua require('config.telescope').current_buffer_fuzzy_find()<CR>", "Find - Buffer" },
        B = { "<cmd>lua require('config.telescope').my_buffers()<CR>", "My Buffers" },
        e = { "<cmd>Telescope file_browser<CR>", "File Browser" },
        f = { "<cmd>lua require('config.telescope').live_grep()<CR>", "Search - Buffer" },
        g = {
            name = "Git",
            b = { "<cmd>lua require('telescope.builtin').git_branches()<CR>", "Branches" },
            c = { "<cmd>lua require('telescope.builtin').git_commits()<CR>", "Commits" },
            f = { "<cmd>lua require('telescope.builtin').git_files()<CR>", "Files" },
            s = { "<cmd>lua require('telescope.builtin').git_status()<CR>", "Status" },
        },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<CR>", "Help Tags" },
        k = { "<cmd>lua require('telescope.builtin').keymaps()<CR>", "Keymaps" },
        o = { "<cmd>lua require('config.telescope').find_files()<CR>", "Find Files" },
        q = { "<cmd>lua require('config.telescope').find_files_quickly()<CR>", "Quick Find" },
        s = { "<cmd>lua require('telescope.builtin').grep_string()<CR>", "Grep String" },
        t = { "<cmd>lua require('telescope.builtin').tags()<CR>", "Tags" },
    },


    b = {
        name = "Buffers",
        b = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Buffers" },
        d = { "<cmd>BufferLineSortByDirectory<CR>", "Sort by Directory" },
        f = { "<cmd>lua require('config.telescope').my_buffers()<CR>", "List Buffers" },
        j = { "<cmd>BufferLinePick<CR>", "Jump to Buffer" },
        l = { "<cmd>BufferLineCloseLeft<CR>", "Close all Left" },
        m = { "<cmd>BufferLineMoveNext<CR>", "Move Right" },
        M = { "<cmd>BufferLineMovePrev<CR>", "Move Left" },
        n = { "<cmd>BufferLineCycleNext<CR>", "Next File" },
        p = { "<cmd>BufferLineCyclePrev<CR>", "Previous File" },
        P = { "<cmd>BufferLinePick<CR>", "Pick from Buffers" },
        r = { "<cmd>BufferLineCloseRight<CR>", "Close all Right" },
    },

    d = {
        name = "Diagnostics",
        f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
        F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
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

    e = {
        name = "+Errors",
        d = { "<cmd>TroubleToggle document_diagnostics<CR>", "Document Diagnostics" },
        l = { "<cmd>TroubleToggle loclist<CR>", "Location List" },
        q = { "<cmd>TroubleToggle quickfix<CR>", "Quickfix List" },
        r = { "<cmd>TroubleToggle lsp_references<CR>", "LSP References" },
        t = { "<cmd>TroubleToggle<cr>", "Problems" },
        w = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace Diagnostics" },
    },

    f = {
        name = "+File",
        a = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Add to Harpoon" },
        b = { "<cmd>Telescope file_browser<CR>", "Browse" },
        c = { "<cmd>lua require('buffers').close()<CR>", "Close" },
        n = { "<cmd>enew<CR>", "New File" },
        o = { "<cmd>lua require('config.telescope').find_files()<CR>", "Open" },
        O = { "<cmd>lua require('config.telescope').find_files_quickly()<CR>", "Open Quickly" },
        q = { "<cmd>qa<CR>", "Quit Editor" },
        r = { "<cmd>lua require('config.telescope').oldfiles()<CR>", "Open Recent" },
        s = { "<cmd>update<CR>", "Save" },
        S = { "<cmd>wa<CR>", "Save All" },
        w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Folder to Workspace" }
    },

    g = {
        name = "Git",
        b = { "<cmd>lua require('telescope.builtin').git_branches()<CR>", "Branches" },
        B = { "<cmd>Git blame<CR>", "Blame" },
        c = { "<cmd>lua require('telescope.builtin').git_commits()<CR>", "Commits" },
        d = { ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>", "Diff File" },
        h = { "<Plug>(GitGutterNextHunk)", "Next Hunk" },
        H = { "<Plug>(GitGutterPrevHunk)", "Previous Hunk" },
        s = { "<Plug>(GitGutterStageHunk)", "Stage Hunk" },
        u = { "<Plug>(GitGutterUndoHunk)", "Undo Hunk" },
    },

    j = {
        name = "Jump",
        c = { "<cmd>HopChar1<CR>", "Hop Character" },
        f = { "<Plug>Lightspeed_s", "Jump Forward" },
        k = { "<Plug>Lightspeed_S", "Jump Backwards" },
        l = { "<cmd>HopLine<CR>", "Hop Line" },
        w = { "<cmd>HopWord<CR>", "Hop Word" }, },

    l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Actions" },
        d = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration (gD)" },
        D = { "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "Definition" },
        f = { "<cmd>lua require('telescope.builtin').lsp_references()<CR>", "Find References" },
        h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Code Hover" },
        i = { "<cmd>lua require('telescope.builtin').lsp_implementations<CR>", "Implemention" },
        I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
        l = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Line Diagnostics" },
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        s = { "<cmd>lua require('lsp_signature').signature()<CR>", "Signature" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
        z = { "<cmd>LspInfo<CR>", "LSP Info" }
    },

    o = {
        name = "Open",
        c = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" },
        e = { "<cmd>Neotree position=float<CR>", "Toggle Neotree" },
        h = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Harpoon" },
        l = { "<cmd>Neotree position=left toggle<CR>", "Neotree - left" },
        m = { "<cmd>Telescope harpoon marks<CR>", "Harpoon Marks" },
        r = { "<cmd>Neotree position=right toggle<CR>", "Neotree - right" },
        s = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
        u = { "<cmd>UndotreeToggle<CR>", "Undo Tree" },
    },

    p = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    s = {
        name = "Search",
        b = { "<cmd>lua require('config.telescope').current_buffer_fuzzy_find()<CR>", "Current Buffer" },
        c = { "<cmd>lua require('telescope.builtin').grep_string()<CR>", "Current Word" },
        f = { "<cmd>lua require('config.telescope').find_files()<CR>", "Files" },
        h = { "<cmd>lua require('telescope.builtin').search_history()<CR>", "History" },
        l = { "<cmd>lua require('telescope.builtin').resume()<CR>", "Last Picks" },
        m = { "<cmd>lua require('telescope.builtin').marks()<CR>", "Marks" },
        p = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project" },
        P = { "<cmd>lua require('fzf-lua').grep_project()<CR>", "Project - Live" },
        r = { "<cmd>lua require('telescope.builtin').pickers()<CR>", "Recent Picks" },
        t = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Text" },
        v = { "<cmd>lua require('fzf-lua').grep_visual()<CR>", "Visual Selection" },
    },

    -- u = {
    --     name = "Unit Testing",
    --     f = { "<cmd>TestFile<CR>", "File" },
    --     l = { "<cmd>TestLast<CR>", "Last" },
    --     n = { "<cmd>TestNearest<CR>", "Nearest" },
    --     s = { "<cmd>TestSuite<CR>", "Suite" },
    --     v = { "<cmd>TestVisit<CR>", "Visit" }
    -- },
    --

    w = {
        name = "Window",
        c = { "<cmd>lua require('telescope.builtin').commands()<CR>", "Commands" },
        C = { "<cmd>lua require('telescope.builtin').colorscheme()<CR>", "Color Schemes" },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<CR>", "Help Tags" },
        m = { "<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages" },
        n = { "<cmd>Notifications<CR>", "Notifications" },
        k = { "<cmd>lua require('telescope.builtin').keymaps()<CR>", "Keymaps" },
        S = { "<cmd>Neotree position=right<CR>", "Sidebar Right" },
        s = { "<cmd>Neotree position=left<CR>", "Sidebar Left" },
        t = { "<cmd>Neotree position=float<CR>", "Sidebar Float" },
        T = { "<cmd>write | edit | TSBufEnable highlight<CR>", "Reload Treesitter" },
        ["-"] = { "<C-w>s<CR>", "Split Window Below" },
        ["|"] = { "<C-w>v<CR>", "Split Window Right" }
    }

}, { mode = "n", prefix = "<Space>" })

wk.register({
    ["/"] = { "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", "Comment" },
}, { mode = "v", prefix = "<Space>" })
