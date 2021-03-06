vim.cmd [[syntax enable]]
vim.cmd [[filetype plugin indent on]]

local opt = setmetatable({}, {
  __newindex = function(_, key, value)
    vim.o[key] = value
    vim.bo[key] = value
  end,
})

--disable_distribution_plugins
vim.g.loaded_gzip              = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_getscript         = 1
vim.g.loaded_getscriptPlugin   = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_matchparen        = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_netrwSettings     = 1
vim.g.loaded_netrwFileHandlers = 1

vim.g.tokyonight_style = "night"
vim.cmd [[colorscheme tokyonight]]

-- opt.dict = "~/dotfiles/lib/10k.txt"
opt.expandtab     = true
opt.formatoptions = "crqnbj"
opt.grepprg       = "rg --vimgrep --no-heading --hidden"
opt.shiftwidth    = 2
opt.smartindent   = true
opt.softtabstop   = 2
opt.spellcapcheck = ""
opt.swapfile      = false
opt.tabstop       = 2
opt.textwidth     = 80
opt.undofile      = true
opt.undolevels    = 10000

vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menu,menuone,noinsert,noselect"
vim.o.confirm = true
vim.o.diffopt = "internal,filler,closeoff,foldcolumn:0,hiddenoff,algorithm:patience"
vim.o.emoji = false
vim.o.foldclose = "all"
vim.o.foldopen = "all"
vim.o.foldtext = "v:lua.foldtext()"
vim.o.hidden = true
vim.o.history = 10000
vim.o.ignorecase = true
vim.o.inccommand = "nosplit"
vim.o.infercase = true
vim.o.lazyredraw = true
vim.o.mouse = "a"
vim.o.pumblend = 10
vim.o.ruler = false
vim.o.scrolloff = 8
vim.o.showbreak = "↳⋅"
vim.o.showcmd = true
vim.o.showmode = true
vim.o.showtabline = 0
vim.o.sidescroll = 5
vim.o.sidescrolloff = 15
vim.o.smartcase = true
vim.o.smarttab = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.timeout = true
vim.o.ttimeout = true
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 10
vim.o.updatetime = 300
vim.o.redrawtime = 1500
vim.o.undodir = vim.fn.expand "~/.config/nvim/backups"
vim.o.viewoptions = ""
vim.o.virtualedit = "onemore"
vim.o.whichwrap = "b,h,l"
vim.o.wildmode = "longest,full"
vim.o.wildoptions = "pum"

vim.wo.foldenable = true
vim.wo.foldlevel = 2
vim.wo.foldmethod = "indent"
vim.wo.signcolumn = "yes:1"
vim.wo.conceallevel = 2
vim.wo.concealcursor = "n"
vim.wo.breakindent = true
vim.wo.linebreak = true
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.cursorline = true
vim.wo.winhighlight = "NormalNC:WinNormalNC"
vim.opt.list = true
vim.opt.listchars = {
  space = "⋅",
  eol = "↴",
  tab = "__",
  trail = "•",
  extends = "❯",
  precedes = "❮",
  nbsp = "_",
}
vim.opt.fillchars = {
  fold = " ",
  diff = "╱",
}

vim.g.floating_window_border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
vim.g.floating_window_border_dark = {
  { "╭", "FloatBorderDark" },
  { "─", "FloatBorderDark" },
  { "╮", "FloatBorderDark" },
  { "│", "FloatBorderDark" },
  { "╯", "FloatBorderDark" },
  { "─", "FloatBorderDark" },
  { "╰", "FloatBorderDark" },
  { "│", "FloatBorderDark" },
}
