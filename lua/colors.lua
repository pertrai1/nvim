if vim.fn.has("termguicolors") == 1 then
  vim.go.t_8f = "[[38;2;%lu;%lu;%lum"
  vim.go.t_8b = "[[48;2;%lu;%lu;%lum"
  vim.opt.termguicolors = true
end
-- vim.cmd 'color codedark'

vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
vim.g.vscode_disable_nvimtree_bg = true
vim.cmd([[colorscheme vscode]])

-- require("github-theme").setup({
  -- theme_style = 'dimmed'
-- })
