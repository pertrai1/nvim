local opt = vim.opt -- to set options
opt.autoread = true
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftround = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.smarttab = true
opt.tabstop = 2
opt.showtabline = 2
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.encoding = "utf-8"
opt.mouse = "a"

opt.hidden = true
opt.ruler = true
opt.number = true
opt.linebreak = true
opt.wrap = true
opt.history = 10000

-- opt.foldmethod = "indent"
-- opt.foldcolumn = 2
opt.foldlevelstart = 10

vim.o.lazyredraw = true
opt.showmatch = true
-- opt.nobackup = true
-- opt.nowb = true
opt.swapfile = false
opt.writebackup = false

opt.cmdheight = 2

opt.updatetime = 300

opt.showcmd = true
opt.showmode = true

opt.laststatus = 2

vim.cmd([[
autocmd FocusGained,BufEnter * checktime
]])

-- Return to last edit position when opening files (You want this!)
vim.cmd([[
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])

-- CSS/SCSS
vim.cmd([[
autocmd FileType scss setl iskeyword+=@~@
]])

-- Auto-resize splits when Vim gets resized.
vim.cmd([[
autocmd VimResized * wincmd =
]])

vim.cmd([[
autocmd FileType vim setlocal foldmethod=marker
]])
