-- Telescope
require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = { mirror = false },
            width = 0.90,
            height = 0.90
        },
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
}

require('telescope').load_extension 'fzf'
require('telescope').load_extension 'file_browser'
