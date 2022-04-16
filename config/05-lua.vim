lua << EOF
require("bufferline").setup {
  options = {
    diagnostics = "coc",
    numbers = "buffer_id",
    show_tab_indicators = true
  }
}
require("nvim-web-devicons").setup {}
require("lualine").setup {}
EOF


