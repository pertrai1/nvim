local ok, telescope = pcall(require, "telescope")
local action_layout = require("telescope.actions.layout")

if not ok then
    return
end
-- Telescope
telescope.setup {
    picker = {
        hidden = false,
    },
    defaults = {
        vimgrep_arguments = {
            "rg",
            -- "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            -- "--no-ignore",
            "--smart-case",
            -- "--hidden",
        },
        selection_caret = "  ",
        entry_prefix = "  ",
        scroll_strategy = 'limit',
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = { mirror = false },
            width = 0.90,
            height = 0.90,
            preview_cutoff = 120,
        },
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        file_ignore_patterns = { "node_modules", ".git/", "dist/", "apps/web-e2e" },
        generic_sorter = require("telescope.sorters").get_fzy_sorter,
        path_display = { "absolute" },
        winblend = 0,
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" },
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        mappings = {
            i = {
                ["<Tab>"] = "move_selection_next",
                ["<S-Tab>"] = "move_selection_previous",
                ["<C-b>"] = action_layout.toggle_preview,
                ["<C-r>"] = require('telescope.actions').delete_buffer
            },
            n = {
                ["<Tab>"] = "move_selection_next",
                ["<S-Tab>"] = "move_selection_previous",
                ["<C-b>"] = action_layout.toggle_preview,
                ["<C-r>"] = require('telescope.actions').delete_buffer
            },
        },
    },
    pickers = {
        live_grep = {
            only_sort_text = true
        },
        buffers = {
            sort_lastused = true,
            -- theme = "ivy",
            -- layout_config = { height = 10 }
        },
        oldfiles = {
            sort_lastused = true,
            previewer = false,
            -- theme = "ivy",
            layout_config = {
                horizontal = {
                    prompt_position = "bottom",
                },
            },
        },
        command_history = {
            sort_lastused = true,
            theme = "ivy",
            previewer = false
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        },
    },
}

telescope.load_extension 'fzf'
telescope.load_extension 'file_browser'
