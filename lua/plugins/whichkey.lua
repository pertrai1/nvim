local wk = require("which-key")

wk.setup()
wk.register({
    d = {
        name = "Diagnostics",
        s = { "<cmd> lua require('fzf-lua').lsp_document_symbols()<CR>", "Symbols" },
    },
    n = {
        name = "Navigation",
        b = { "<cmd> lua require('fzf-lua').buffers()<CR>", "Buffers" },
        c = { "<cmd> lua require('fzf-lua').buffers()<CR>", "Commands" },
        f = { "<cmd> lua require('fzf-lua').files()<CR>", "Files" },
        h = { "<cmd> lua require('fzf-lua').help_tags()<CR>", "Help Tags" },
        m = { "<cmd> lua require('fzf-lua').marks()<CR>", "Marks" },
    }
})
