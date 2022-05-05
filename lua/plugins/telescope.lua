-- Telescope
require('telescope').setup {
    defaults = {
        layout_config = {
            vertical = { width = 0.8 },
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
