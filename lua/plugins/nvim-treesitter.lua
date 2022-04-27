require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "tsx",
        "json",
        "yaml",
        "html",
        "scss",
        "bash",
        "css",
        "go",
        "javascript",
        "jsdoc",
        "lua",
        "markdown",
        "vim"
    },
    ignore_install = { "php" },
    highlight = {
        enable = true,
        language_tree = true,
        additional_vim_regex_highlighting = { "org" },
    },
    indent = {
        enable = true,
    },
    refactor = {
        highlight_definitions = {
            enable = true,
        },
        highlight_current_scope = {
            enable = false,
        },
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr"
            }
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>",
            },
        },
    },
    autotag = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
    },
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@comment.outer",
                ["ic"] = "@comment.inner",
            },
        },
    },
    textsubjects = {
        enable = true,
        keymaps = {
            ["<CR>"] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
        },
    },
}
