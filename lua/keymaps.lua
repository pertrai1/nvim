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
map("n", "<BS>", ":nohlsearch<CR>", { silent = true })
map("n", ";", ":", { silent = false })

-- Operate on display lines
map("n", "k", "gk", { silent = false })
map("n", "gk", "k", { silent = false })
map("n", "j", "gj", { silent = false })
map("n", "gj", "j", { silent = false })

-- Nvim Tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>u", ":NvimTreeFindFile<CR>", { silent = true })

-- Update Plugins
map("n", "<Leader>u", ":PackerSync<CR>")

-- Visual mode pressing * or # searches for the current selection
map("x", "*", ":<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>", { silent = true })
map("x", "#", ":<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>", { silent = true })

-- Buffers
map("n", "<leader>ba", ":bufdo bd<CR>", { silent = true })
map("n", "<leader>bl", ":bnext<CR>", { silent = true })
map("n", "<S-l>", ":bnext<CR>", { silent = true })
map("n", "<leader>bh", ":bprevious<CR>", { silent = true })
map("n", "<S-h>", ":bprevious<CR>", { silent = true })
map("n", "<leader>b", ":bw<CR>", { silent = true })

-- Window Mappings
map("n", "<leader>wj", "<C-w><C-j>", { silent = false })
map("n", "<leader>wk", "<C-w><C-k>", { silent = false })
map("n", "<leader>wl", "<C-w><C-l>", { silent = false })
map("n", "<leader>wh", "<C-w><C-h>", { silent = false })

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
map("n", "<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { silent = false })
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
map("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>", { silent = false })
map("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { silent = false })

map("n", "<F8>", ":TagbarToggle<CR>", { silent = false })

-- NVim
map("n", "<leader>nt", ":NvimTreeToggle<CR>", { silent = false })
map("n", "<leader>nr", ":NvimTreeRefresh<CR>", { silent = false })
map("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>", { silent = false })
map("n", "<leader>nf", ":NvimTreeFocus<CR>", { silent = false })
