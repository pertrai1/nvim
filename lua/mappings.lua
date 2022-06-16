local map = require("utils").map
local leader = "<space>"

map("i", "jk", "<esc>", { silent = true })
map("n", "<BS>", ":nohlsearch<CR>", { noremap = true, silent = true })
map("n", leader .. "fn", "<cmd>enew<CR>")
map("n", "<C-d>", "<Del>")
map("n", "<C-s>", "<cmd>lua require('session-lens').search_session()<CR>")

map("n", ";", "<Plug>(clever-f-repeat-forward)")
map("n", ",", "<Plug>(clever-f-repeat-back)")

map("n", leader .. "<C-o>", "<cmd>%bd|e#|bd#<CR>")

map("n", leader .. "q", ":b#|bd#<CR>")
map("n", leader .. "w", ":update<CR>")

-- Buffers
map("n", leader .. "bb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true })
map("n", leader .. "bd", "<cmd>BufferLineSortByDirectory<CR>", { noremap = true, silent = true })
map("n", leader .. "bf", "<cmd>lua require('config.telescope').my_buffers()<CR>", { noremap = true, silent = true })
map("n", leader .. "bj", "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
map("n", leader .. "bl", "<cmd>BufferLineCloseLeft<CR>", { noremap = true, silent = true })
map("n", leader .. "bm", "<cmd>BufferLineMoveNext<CR>", { noremap = true, silent = true })
map("n", leader .. "bM", "<cmd>BufferLineMovePrev<CR>", { noremap = true, silent = true })
map("n", leader .. "bn", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
map("n", leader .. "bp", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
map("n", leader .. "bP", "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
map("n", leader .. "br", "<cmd>BufferLineCloseRight<CR>", { noremap = true, silent = true })


-- Git
map("n", "gj", "<Plug>(GitGutterNextHunk)", { noremap = false })
map("n", "gk", "<Plug>(GitGutterPrevHunk)", { noremap = false })
map("n", leader .. "lg", "<cmd>lua require('git').lazygit_toggle()<CR>")
map("n", leader .. "gb", "<cmd>lua require('telescope.builtin').git_branches()<CR>")
map("n", leader .. "gB", "<cmd>Git blame<CR>")
map("n", leader .. "gc", "<cmd>lua require('telescope.builtin').git_commits()<CR>")
map("n", leader .. "gd", ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>")
map(
  "n",
  leader .. "gg",
  ":lua require('lists').change_active('Quickfix')<CR>:execute 'Git difftool ' .. g:git_base<CR>"
)
map("n", leader .. "gh", "<Plug>(GitGutterNextHunk)")
map("n", leader .. "gH", "<Plug>(GitGutterPrevHunk)")
map("n", leader .. "gn", ":lua require('lists').change_active('Quickfix')<CR>:Git mergetool<CR>")
map("n", leader .. "gu", "<Plug>(GitGutterUndoHunk)", { noremap = false })
map("n", leader .. "gs", "<Plug>(GitGutterStageHunk)", { noremap = false })

-- Jumps
map("n", leader .. "jc", "<cmd>HopChar1<CR>", { noremap = false })
map({ "x", "n", "o" }, leader .. "jf", "<Plug>Lightspeed_s", { noremap = false })
map({ "x", "n", "o" }, leader .. "jk", "<Plug>Lightspeed_S", { noremap = false })
map("n", leader .. "jl", "<cmd>HopLine<CR>", { noremap = false })
map("n", leader .. "jw", "<cmd>HopWord<CR>", { noremap = false })

-- Open
map("n", leader .. "oc", "<cmd>ToggleTerm<CR>")
map("n", leader .. "oe", "<cmd>Neotree position=float<CR>")
map("n", leader .. "oh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
map("n", leader .. "ol", "<cmd>Neotree position=left toggle<CR>")
map("n", leader .. "om", "<cmd>Telescope harpoon marks<CR>")
map("n", leader .. "or", "<cmd>Neotree position=right toggle<CR>")
map("n", leader .. "os", "<cmd>SymbolsOutline<CR>")
map("n", leader .. "ou", "<cmd>UndotreeToggle<CR>")

-- Packer
map("n", leader .. "pc", "<cmd>PackerCompile<cr>")
map("n", leader .. "pi", "<cmd>PackerInstall<cr>")
map("n", leader .. "ps", "<cmd>PackerSync<cr>")
map("n", leader .. "pS", "<cmd>PackerStatus<cr>")
map("n", leader .. "pu", "<cmd>PackerUpdate<cr>")

--Telescope
map("n", "<C-p>",
  ":lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{layout_config = {height = 0.7}, previewer = false})<CR>")
map('n', leader .. '?', ":lua require('config.telescope').oldfiles()<CR>", { noremap = true })
map('n', leader .. '<space>', ":lua require('config.telescope').my_buffers()<CR>", { noremap = true })
map('n', leader .. 'tb', ":lua require('config.telescope').current_buffer_fuzzy_find()<CR>", { noremap = true })
map('n', leader .. 'tg', ":lua require('config.telescope').live_grep()<CR>", { noremap = true })
map('n', leader .. 'th', ":lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
map('n', leader .. 'tk', ":lua require('telescope.builtin').keymaps()<CR>", { noremap = true })
map("n", leader .. "tm", ":lua require('telescope.builtin').marks()<CR>")
map('n', leader .. 'to', ":lua require('config.telescope').find_files()<CR>", { noremap = true })
map('n', leader .. 'tq', ":lua require('config.telescope').find_files_quickly()<CR>", { noremap = true })
map('n', leader .. 'ts', ":lua require('telescope.builtin').grep_string()<CR>", { noremap = true })
map('n', leader .. 'tt', ":lua require('telescope.builtin').tags()<CR>", { noremap = true })
map("n", leader .. "tf", ":Telescope file_browser<CR>", { noremap = true })

map("n", "<UP>", ":lua require('lists').move('up')<CR>")
map("n", "<DOWN>", ":lua require('lists').move('down')<CR>")
map("n", "<LEFT>", ":lua require('lists').move('left')<CR>")
map("n", "<RIGHT>", ":lua require('lists').move('right')<CR>")
map(
  "n",
  leader .. "c",
  "<Plug>(qf_qf_toggle_stay):lua require('lists').change_active('Quickfix')<CR>",
  { noremap = false }
)
map(
  "n",
  leader .. "v",
  "<Plug>(qf_loc_toggle_stay):lua require('lists').change_active('Location')<CR>",
  { noremap = false }
)
map("n", leader .. "b", ":lua require('lists').toggle_active()<CR>")

map("n", "Y", "y$", { noremap = false })
map("n", "x", '"_x')

map("x", "iu", ':lua require"treesitter-unit".select()<CR>', { noremap = true })
map("x", "au", ':lua require"treesitter-unit".select(true)<CR>', { noremap = true })
map("o", "iu", ':<c-u>lua require"treesitter-unit".select()<CR>', { noremap = true })
map("o", "au", ':<c-u>lua require"treesitter-unit".select(true)<CR>', { noremap = true })

map("n", "<C-h>", "<CMD>lua require('Navigator').left()<CR>")
map("n", "<C-j>", "<CMD>lua require('Navigator').down()<CR>")
map("n", "<C-k>", "<CMD>lua require('Navigator').up()<CR>")
map("n", "<C-l>", "<CMD>lua require('Navigator').right()<CR>")

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward]", { expr = true })
map("x", "n", "'Nn'[v:searchforward]", { expr = true })
map("o", "n", "'Nn'[v:searchforward]", { expr = true })
map("n", "N", "'nN'[v:searchforward]", { expr = true })
map("x", "N", "'nN'[v:searchforward]", { expr = true })
map("o", "N", "'nN'[v:searchforward]", { expr = true })

map("x", "<C-j>", ":m'>+<cr>`<my`>mzgv`yo`z", { silent = false })
map("x", "<C-k>", ":m'<-2<cr>`>my`<mzgv`yo`z", { silent = false })

-- Quickly move current line
-- These mappings also take a count, so 2]e moves the current line 2 lines below.
map("n", "[e", ":<c-u>execute 'move -1-'. v:count1<CR>", { noremap = true })
map("n", "]e", ":<c-u>execute 'move +'. v:count1<CR>", { noremap = true })

-- Move lines up and down
-- up
map("i", "˚", "<esc>:m .-2<CR>==gi")
map("v", "˚", ":m '<-2<CR>gv=gv")
-- down
map("i", "∆", "<esc>:m .+1<CR>==gi")
map("v", "∆", ":m '>+1<CR>gv=gv")

-- special way to handle option key + jklh in mac
map("n", "¬", "<c-w>5>")
map("n", "˙", "<c-w>5<")
map("n", "˚", "<c-w>5+")
map("n", "∆", "<c-w>5-")


map({ "n", "v" }, "J", "5j")
map({ "n", "v" }, "K", "5k")
map("n", "L", ":bnext<CR>", { silent = true, noremap = true })
map("n", "<Tab>", ":bnext<CR>", { silent = true, noremap = true })
map("n", "H", ":bprevious<CR>", { silent = true, noremap = true })
map("n", "<S-Tab>", ":bprevious<CR>", { silent = true, noremap = true })

map({ "n", "v" }, "j", "v:count ? (v:count > 5 ? \"m'\" . v:count : '') . 'j' : 'gj'", { expr = true })
map({ "n", "v" }, "k", "v:count ? (v:count > 5 ? \"m'\" . v:count : '') . 'k' : 'gk'", { expr = true })

map("", "w", "<Plug>CamelCaseMotion_w", { noremap = false })
map("", "b", "<Plug>CamelCaseMotion_b", { noremap = false })
map("", "e", "<Plug>CamelCaseMotion_e", { noremap = false })
map("", "ge", "<Plug>CamelCaseMotion_ge", { noremap = false })

map(
  "i",
  "<CR>",
  [[pumvisible() ? complete_info()["selected"] != "-1" ? "\<Plug>(completion_confirm_completion)" : "\<c-e>" : lexima#expand('<LT>CR>', 'i')]]
  ,
  { expr = true, noremap = false }
)

map({ "n", "x" }, "s", "<Nope>", { noremap = false })

map({ "n", "v" }, "gx", "<Plug>(openbrowser-smart-search)", { noremap = false })

map("v", "<", "<gv")
map("v", ">", ">gv")
map("v", "*", '"vygv:<C-U>/\\<<C-R>v\\><CR>')
map("v", "#", '"vygv:<C-U>?\\<<C-R>v\\><CR>')

map("v", "I", "<Plug>(niceblock-I)", { noremap = false })
map("v", "gI", "<Plug>(niceblock-gI)", { noremap = false })
map("v", "A", "<Plug>(niceblock-A)", { noremap = false })

map("x", "P", [['"_d"'.v:register.'P']], { expr = true })

map({ "i", "s" }, "<C-j>", "<cmd>lua require'luasnip'.expand_or_jump()<Cr>")
map({ "i", "s" }, "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<Cr>")

map("c", "<C-J>", "<DOWN>")
map("c", "<C-K>", "<UP>")

-- Testing
map("n", "t<C-n>", ":TestNearest<CR>", { silent = true })
map("n", "t<C-f>", ":TestFile<CR>", { silent = true })
map("n", "t<C-a>", ":TestSuite<CR>", { silent = true })
map("n", "t<C-l>", ":TestLast<CR>", { silent = true })
map("n", "t<C-v>", ":TestVisit<CR>", { silent = true })

-- Trouble
map("n", leader .. "et", "<cmd>TroubleToggle<CR>", { silent = true, noremap = true })
map("n", leader .. "ew", "<cmd>TroubleToggle workspace_diagnostics<CR>", { silent = true, noremap = true })
map("n", leader .. "ed", "<cmd>TroubleToggle document_diagnostics<CR>", { silent = true, noremap = true })
map("n", leader .. "el", "<cmd>TroubleToggle loclist<CR>", { silent = true, noremap = true })
map("n", leader .. "eq", "<cmd>TroubleToggle quickfix<CR>", { silent = true, noremap = true })
map("n", "er", "<cmd>TroubleToggle lsp_references<CR>", { silent = true, noremap = true })

vim.cmd [[cabbrev nw noautocmd write]]
