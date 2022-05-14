local map = require("utils").map
local leader = "<space>"

map("i", "jk", "<esc>", { silent = true })
-- map("n", ";", ":", { silent = false })
map("n", "<BS>", ":nohlsearch<CR>", { noremap = true, silent = true })
map("n", leader .. "fn", "<cmd>enew<CR>")

map("n", ";", "<Plug>(clever-f-repeat-forward)")
map("n", ",", "<Plug>(clever-f-repeat-back)")

map("n", leader .. leader, ":<C-u>exe v:count ? v:count . 'b' : 'b' . (bufloaded(0) ? '#' : 'n')<CR>")

map("n", leader .. "<C-o>", ":lua require 'buffers'.close_others()<CR>")

map("n", leader .. "q", ":lua require 'buffers'.close()<CR>")
map("n", leader .. "w", ":update<CR>")

map("n", leader .. "rr", ":%s/\\v()", { silent = false })
map("x", leader .. "rr", ":s/\\v%V()", { silent = false })

map("n", leader .. "N", ":e %:h/", { silent = false })

map({ "x", "n", "o" }, leader .. "j", "<Plug>Lightspeed_s", { noremap = false })
map({ "x", "n", "o" }, leader .. "k", "<Plug>Lightspeed_S", { noremap = false })

-- Packer
map("n", leader .. "pc", "<cmd>PackerCompile<cr>")
map("n", leader .. "pi", "<cmd>PackerInstall<cr>")
map("n", leader .. "ps", "<cmd>PackerSync<cr>")
map("n", leader .. "pS", "<cmd>PackerStatus<cr>")
map("n", leader .. "pu", "<cmd>PackerUpdate<cr>")

--Add leader shortcuts
map('n', leader .. '<space>', ":lua require('telescope.builtin').buffers()<CR>", { noremap = true })
map('n', leader .. 'tf', ":lua require('config.telescope').find_files()<CR>", { noremap = true })
map('n', leader .. 'tb', ":lua require('config.telescope').current_buffer_fuzzy_find()<CR>", { noremap = true })
map('n', leader .. 'th', ":lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
map('n', leader .. 'tt', ":lua require('telescope.builtin').tags()<CR>", { noremap = true })
map('n', leader .. 'ts', ":lua require('telescope.builtin').grep_string()<CR>", { noremap = true })
map('n', leader .. 'tg', ":lua require('config.telescope').live_grep()<CR>", { noremap = true })
map('n', leader .. '?', ":lua require('telescope.builtin').oldfiles()<CR>", { noremap = true })
map("n", leader .. "fb", ":Telescope file_browser<CR>", { noremap = true })

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
map("n", leader .. "a", ":lua require('lists').change_active('Quickfix')<CR>:Ack<space>", { silent = false })

map("n", "Y", "y$", { noremap = false })
map("n", "x", '"_x')
-- map("n", leader .. "oo", "o<esc>k")
-- map("n", leader .. "O", "O<esc>j")

map("x", "iu", ':lua require"treesitter-unit".select()<CR>', { noremap = true })
map("x", "au", ':lua require"treesitter-unit".select(true)<CR>', { noremap = true })
map("o", "iu", ':<c-u>lua require"treesitter-unit".select()<CR>', { noremap = true })
map("o", "au", ':<c-u>lua require"treesitter-unit".select(true)<CR>', { noremap = true })

map("n", "<C-h>", "<CMD>lua require('Navigator').left()<CR>")
map("n", "<C-j>", "<CMD>lua require('Navigator').down()<CR>")
map("n", "<C-k>", "<CMD>lua require('Navigator').up()<CR>")
map("n", "<C-l>", "<CMD>lua require('Navigator').right()<CR>")

map("x", "<C-j>", ":m'>+<cr>`<my`>mzgv`yo`z", { silent = false })
map("x", "<C-k>", ":m'<-2<cr>`>my`<mzgv`yo`z", { silent = false })

-- special way to handle option key + jklh in mac
map("n", "¬", "<c-w>5>")
map("n", "˙", "<c-w>5<")
map("n", "˚", "<c-w>5+")
map("n", "∆", "<c-w>5-")

map({ "n", "o", "v" }, "H", "^")
map({ "n", "o", "v" }, "L", "$")

map({ "n", "v" }, "J", "5j")
map({ "n", "v" }, "K", "5k")
map("n", "L", ":bnext<CR>", { silent = true, noremap = true })
map("n", "H", ":bprevious<CR>", { silent = true, noremap = true })

map({ "n", "v" }, "j", "v:count ? (v:count > 5 ? \"m'\" . v:count : '') . 'j' : 'gj'", { expr = true })
map({ "n", "v" }, "k", "v:count ? (v:count > 5 ? \"m'\" . v:count : '') . 'k' : 'gk'", { expr = true })

map("", "w", "<Plug>CamelCaseMotion_w", { noremap = false })
map("", "b", "<Plug>CamelCaseMotion_b", { noremap = false })
map("", "e", "<Plug>CamelCaseMotion_e", { noremap = false })
map("", "ge", "<Plug>CamelCaseMotion_ge", { noremap = false })

map("n", "<C-p>", ":lua require('config.telescope').find_files()<CR>")
map("n", leader .. "gf", ":lua require('telescope.builtin').git_files()<CR>")
map("n", leader .. "p", ":lua require('telescope.builtin').buffers()<CR>")
map("n", leader .. "<C-p>", ":lua require('telescope.builtin').commands()<CR>")
map("n", leader .. "<C-h>", ":lua require('telescope.builtin').help_tags()<CR>")
map("n", leader .. "m", ":lua require('telescope.builtin').marks()<CR>")
map("n", leader .. "f", ":lua require('telescope.builtin').lsp_document_symbols()<CR>")
map("n", leader .. "ld", ":lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>")
map("n", leader .. "g", ":lua require('config.telescope').live_grep()<CR>")
map("n", leader .. "bp", ":BufferLinePick<CR>", { noremap = true, silent = true })

map("n", "-", ":execute 'Neotree reveal git_base=' .. g:git_base<CR>")
-- map("n", "g-", ":execute 'Neotree current git_status git_base=' .. g:git_base<CR>")
map("n", leader .. "e", ":Neotree position=float<CR>")
map("n", leader .. "t", ":Neotree position=left toggle<CR>")

-- map("n", "<S-l>", ":bnext<CR>", { silent = true, noremap = true })
-- map("n", "<S-h>", ":bprevious<CR>", { silent = true, noremap = true })

map(
    "i",
    "<CR>",
    [[pumvisible() ? complete_info()["selected"] != "-1" ? "\<Plug>(completion_confirm_completion)" : "\<c-e>" : lexima#expand('<LT>CR>', 'i')]],
    { expr = true, noremap = false }
)

-- map("n", "grr", "<Plug>ReplaceWithSamrIndentRegisterLine", { noremap = false })
-- map("n", "grR", "<Plug>ReplaceWithRegisterLine", { noremap = false })
-- map("n", "gr", "<Plug>ReplaceWithRegisterOperator", { noremap = false })

-- map("n", "glp", "<Plug>UnconditionalPasteIndentedAfter", { noremap = false })
-- map("n", "glP", "<Plug>UnconditionalPasteIndentedBefore", { noremap = false })

-- map("n", "gck", "m'yypgcc`'", { noremap = false })

-- VERSION CONTROL
map("n", "gj", "<Plug>(GitGutterNextHunk)", { noremap = false })
map("n", "gk", "<Plug>(GitGutterPrevHunk)", { noremap = false })
map("n", leader .. "gd", ":set nosplitright<CR>:execute 'Gvdiff ' .. g:git_base<CR>:set splitright<CR>")
-- map("n", leader .. "gr", ":Gread<CR>")
map("n", leader .. "gb", ":Git blame<CR>")
-- map("n", leader .. "gs", ":Git<CR>")
map("n", leader .. "gs", ":LazyGit<CR>")
-- map("n", leader .. "gm", "<Plug>(git-messenger)", { noremap = false })
map("n", leader .. "gu", "<Plug>(GitGutterUndoHunk)", { noremap = false })
map("n", leader .. "ga", "<Plug>(GitGutterStageHunk)", { noremap = false })
map("n", leader .. "gc", ":0Gclog<CR>", { noremap = false })
map(
    "n",
    leader .. "gg",
    ":lua require('lists').change_active('Quickfix')<CR>:execute 'Git difftool ' .. g:git_base<CR>"
)
map("n", leader .. "gn", ":lua require('lists').change_active('Quickfix')<CR>:Git mergetool<CR>")
map("n", leader .. "gh", ":diffget //2<CR> :diffupdate<CR>")
-- map("n", leader .. "gl", ":diffget //3<CR> :diffupdate<CR>")

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

-- Spectre
map("n", leader .. "sp", "<cmd>lua require('spectre').open()<CR>", { noremap = true })
map("n", leader .. "sv", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { noremap = true })
map("n", leader .. "sf", "<cmd>lua require('spectre').open_file_search()<CR>", { noremap = true })

-- Trouble
map("n", leader .. "xx", "<cmd>TroubleToggle<CR>", { silent = true, noremap = true })
map("n", leader .. "xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { silent = true, noremap = true })
map("n", leader .. "xd", "<cmd>TroubleToggle document_diagnostics<CR>", { silent = true, noremap = true })
map("n", leader .. "xl", "<cmd>TroubleToggle loclist<CR>", { silent = true, noremap = true })
map("n", leader .. "xq", "<cmd>TroubleToggle quickfix<CR>", { silent = true, noremap = true })
map("n", "gR", "<cmd>TroubleToggle lsp_references<CR>", { silent = true, noremap = true })

vim.cmd [[cabbrev nw noautocmd write]]
