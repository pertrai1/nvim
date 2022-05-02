vim.g.rnvimr_ranger_cmd = 'HIGHLIGHT_STYLE=nord ranger --cmd="set draw_borders both"'

vim.cmd([[
    let g:rnvimr_layout = {
        \ 'relative': 'editor',
        \ 'width': &columns,
        \ 'height': &lines - 2,
        \ 'col': 0,
        \ 'row': 0,
        \ 'style': 'minimal'
        \ }
]])
