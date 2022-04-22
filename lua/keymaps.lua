local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

-- General
map("i", "jk", "<esc>", { silent = true })
map("n", "<BS>", ":nohlsearch<CR>", { silent = true, noremap = true })
map("n", ";", ":", { silent = false })
map("n", "<leader>w", ":w!", { silent = false, noremap = true })

-- Operate on display lines
map("n", "k", "gk", { silent = false })
map("n", "gk", "k", { silent = false })
map("n", "j", "gj", { silent = false })
map("n", "gj", "j", { silent = false })

-- Nvim Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
map("n", "<C-f>", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
-- NVim
-- map("n", "<leader>nt", ":NvimTreeToggle<CR>", { silent = false })
map("n", "<leader>nr", ":NvimTreeRefresh<CR>", { silent = false })
-- map("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>", { silent = false })
map("n", "<leader>nf", ":NvimTreeFocus<CR>", { silent = false })


-- Update Plugins
-- map("n", "<Leader>u", ":PackerSync<CR>")

-- Visual mode pressing * or # searches for the current selection
map("x", "*", ":<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>", { silent = true })
map("x", "#", ":<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>", { silent = true })

-- Buffers
map("n", "<leader>ba", ":bufdo bd<CR>", { silent = true, noremap = true })
map("n", "<leader>bl", ":bnext<CR>", { silent = true, noremap = true })
map("n", "<S-l>", ":bnext<CR>", { silent = true, noremap = true })
map("n", "<leader>bh", ":bprevious<CR>", { silent = true, noremap = true })
map("n", "<S-h>", ":bprevious<CR>", { silent = true, noremap = true })
map("n", "<leader>b", ":bw<CR>", { silent = true, noremap = true })

-- Window Mappings
map("n", "<leader>wj", "<C-w><C-j>", { silent = false })
map("n", "<leader>wk", "<C-w><C-k>", { silent = false })
map("n", "<leader>wl", "<C-w><C-l>", { silent = false })
map("n", "<leader>wh", "<C-w><C-h>", { silent = false })

-- Bufferline
map("n", "gb", ":BufferLinePick<CR", { silent = true, noremap = true })

-- Keeping it centered
map("n", "n", "nzzzv", { silent = false })
map("n", "N", "Nzzzv", { silent = false })
map("n", "J", "mzJ`z", { silent = false })

-- Tabs
map("n", "<leader>tn", ":tabnew<CR>", { silent = false })
map("n", "<leader>to", ":tabonly<CR>", { silent = false })
map("n", "<leader>tc", ":tabclose<CR>", { silent = false })
map("n", "<leader>tm", ":tabmove<CR>", { silent = false })
map("n", "<leader>tl", ":tabnext<CR>", { silent = false })
map("n", "<leader>th", ":tabprevious<CR>", { silent = false })

-- Moving lines
map("x", "<C-j>", ":m'>+<cr>`<my`>mzgv`yo`z", { silent = false })
map("x", "<C-k>", ":m'<-2<cr>`>my`<mzgv`yo`z", { silent = false })
map("i", "<C-j>", "<esc>:m .+1<CR>==", { silent = false })
map("i", "<C-k>", "<esc>:m .-2<CR>==", { silent = false })
map("n", "<C-k>", ":m .-2<CR>==", { silent = false })
map("n", "<C-j>", ":m .+1<CR>==", { silent = false })

-- Disable arrow movement, resize windows
map("n", "<Up>", "<cmd>resize +1<CR>", { silent = false })
map("n", "<Down>", "<cmd>resize -1<CR>", { silent = false })
map("n", "<Right>", "<cmd>vertical resize +1<CR>", { silent = false })
map("n", "<Left>", "<cmd>vertical resize -1<CR>", { silent = false })

-- Easier line-wise movement
map("n", "gh", "g^", { silent = false })
map("n", "gl", "g$", { silent = false })

-- Re-select blocks after indenting in visual/select mode
map("x", "<", "<gv", { silent = false })
map("x", ">", ">gv|", { silent = false })

-- Use tab for indenting in visual/select mode
map("x", "<Tab>", ">gv|", { silent = false })
map("x", "<S-Tab>", "<gv", { silent = false })

-- Repeat last f, t, F or T
map("n", "\\", ";", { silent = false })

-- Telescope
map("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", { silent = false })
map("n", "<leader>gs", "<cmd>lua require('telescope.builtin').grep_string()<cr>", { silent = false })
map("n", "<C-f>", "<cmd>lua require('telescope.builtin').live_grep({ file_ignore_patterns = { '**/*.spec.js', '**/*.spec.ts' })<cr>", { silent = false })
map("n", "<C-b>", "<cmd>lua require('telescope.builtin').buffers()<cr>", { silent = false })
map("n", "<leader>fr", "<cmd>lua require('telescope.builtin').git_files()<cr>", { silent = false })
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { silent = false })
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { silent = false })
map("n", "<leader>fs", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser( { path = vim.fn.expand('%:p:h') } )<CR>", { silent = false })

map("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", { silent = false })
map("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", { silent = false })
map("n", "gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", { silent = false })
map("n", "gy", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>", { silent = false })
-- map("n", "ca", "<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>", { silent = false })

map("n", "vs", "<cmd>lua require('telescope.builtin').git_status()<cr>", { silent = false })
map("n", "vb", "<cmd>lua require('telescope.builtin').git_branches()<cr>", { silent = false })

map("n", "<F8>", ":TagbarToggle<CR>", { silent = false })

-- Trouble
map("n", "<leader>tt", ":TroubleToggle<CR>", { silent = true })
-- nnoremap <leader>xx <cmd>TroubleToggle<CR>
-- nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<CR>
-- nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<CR>
-- nnoremap <leader>xq <cmd>TroubleToggle quickfix<CR>
-- nnoremap <leader>xl <cmd>TroubleToggle loclist<CR>
-- nnoremap gR <cmd>TroubleToggle lsp_references<CR>
map("n", "gL", "<cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>Trouble loclist<CR>", { silent = true, noremap = true })


-- Bufferline
map("n", "gb", ":BufferLinePick<CR>", { silent = true })

-- Ranger
map("n", "<leader>rf", ":RangerWorkingDirectory<CR>", { silent = false, noremap = true })
map("n", "<leader>rw", ":RangerWorkingDirectoryNewTab<CR>", { silent = false, noremap = true })

-- Testing
map("n", "t<C-n>", ":TestNearest<CR>", { silent = true, noremap = true })
map("n", "t<C-f>", ":TestFile<CR>", { silent = true, noremap = true })
map("n", "t<C-a>", ":TestSuite<CR>", { silent = true, noremap = true })
map("n", "t<C-l>", ":TestLast<CR>", { silent = true, noremap = true })
map("n", "t<C-v>", ":TestVisit<CR>", { silent = true, noremap = true })

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", { silent = true, noremap = true })

-- Commentary
map("x", "/", "<Plug>Commentary", { silent = false })


