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

-- Enable telescope fzf native
require('telescope').load_extension 'fzf'
