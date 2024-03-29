local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
  impatient.enable_profile()
end

require "utils"
require "settings"

require "mappings"
require "plugins"
require "commands"
require "autocmds"

require "plugins.telescope"
require "plugins.dressing"
require "plugins.nvim-cmp"
require "plugins.lua-snip"
require "plugins.nvim-web-devicons"
require "plugins.nvim_notify"
require "plugins.nvim-treesitter"
require "plugins.lsp-format"

require "plugins.whichkey"
require "plugins.vim-table-mode"
require "plugins.bufferline"
require "plugins.headlines"
require "plugins.virt-column"
require "plugins.indent-blankline"
require "plugins.comment"
require "plugins.auto-session"
require "plugins.vim-gitgutter"
require "plugins.navigator"
require "plugins.toggleterm"
require "plugins.ultisnips"
require "plugins.lexima"
require "plugins.incsearch"
require "plugins.vim-qf"
require "plugins.nvim-bqf"
require "plugins.nvim-pqf"
require "plugins.clever-f"
require "plugins.splitjoin"
require "plugins.vim-signature"
require "plugins.hop"

require "lsp"
require "statusline"

require("git").setup()
require("gitsigns").setup({
  current_line_blame = true
})
require("lists").setup()
