local status_ok, treesitter = pcall(require, 'nvim-treesitter')
if not status_ok then
  return
end

treesitter.setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'tsx', 'css', 'json' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  context_commentstring = {
    enable = true,
    config = {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
      json = "",
    },
  },
  indent = {
    enable = true
  },
}
