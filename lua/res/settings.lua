local fn = vim.fn

vim.opt.encoding = 'UTF-8'

vim.opt.hidden = true
vim.opt.number = true
vim.opt.lazyredraw = true

vim.opt.conceallevel = 2
vim.opt.breakindentopt = 'sbr'
vim.opt.linebreak = true -- lines wrap at words rather than random characters
vim.opt.synmaxcol = 1024 -- don't syntax highlight long lines
vim.opt.ruler = false
vim.opt.cmdheight = 2 -- Set command line height to two lines
vim.opt.showbreak = [[↪ ]] -- Options include -> '…', '↳ ', '→','↪ '
vim.opt.showcmd = true
vim.opt.showmode = true

vim.opt.autoread = true
vim.opt.wrap = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.showtabline = 2
vim.opt.showmatch = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.confirm = true
vim.opt.clipboard = { 'unnamedplus' }

vim.opt.emoji = false

vim.opt.cursorlineopt = 'screenline,number'

vim.opt.formatoptions = {
  ['1'] = true,
  ['2'] = true, -- Use indent from 2nd line of a paragraph
  q = true, -- continue comments with gq"
  c = true, -- Auto-wrap comments using textwidth
  r = true, -- Continue comments when pressing Enter
  n = true, -- Recognize numbered lists
  t = false, -- autowrap lines using text width value
  j = true, -- remove a comment leader when joining lines.
  -- Only break if the line was not longer than 'textwidth' when the insert
  -- started and only at a white character that has been entered during the
  -- current insert command.
  l = true,
  v = true,
}

vim.opt.shortmess = {
  t = true, -- truncate file messages at start
  A = true, -- ignore annoying swap file messages
  o = true, -- file-read message overwrites previous
  O = true, -- file-read message overwrites previous
  T = true, -- truncate non-file messages in middle
  f = true, -- (file x of x) instead of just (x of x
  F = true, -- Don't give file info when editing a file, NOTE: this breaks autocommand messages
  s = true,
  c = true,
  W = true, -- Don't show [w] or written when writing
}

-- vim.opt.updatetime = 300
-- vim.opt.timeout = true
-- vim.opt.timeoutlen = 500
-- vim.opt.ttimeoutlen = 10

vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.readirection = 'hor'
-- exclude usetab as we do not want to jump to buffers in already open tabs
-- do not use split or vsplit to ensure we don't open any new windows
vim.o.switchbuf = 'useopen,uselast'
vim.opt.fillchars = {
  fold = ' ',
  eob = ' ', -- suppress ~ at EndOfBuffer
  diff = '╱', -- alternatives = ⣿ ░ ─
  msgsep = '‾',
  foldopen = '▾',
  foldsep = '│',
  foldclose = '▸',
}

vim.opt.list = true -- invisible chars
vim.opt.listchars = {
  eol = nil,
  tab = '  ', -- Alternatives: '▷▷',
  extends = '›', -- Alternatives: … »
  precedes = '‹', -- Alternatives: … «
  trail = '•', -- BULLET (U+2022, UTF-8: E2 80 A2)
}

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.undolevels = 1000
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true -- Searches wrap around the end of the file
vim.opt.scrolloff = 9
vim.opt.sidescrolloff = 10
vim.opt.sidescroll = 1

vim.opt.mouse = 'a'
vim.opt.mousefocus = true
