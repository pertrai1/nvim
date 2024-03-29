local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

bufferline.setup {
  options = {
    diagnostics = "nvim_lsp",
    numbers = "buffer_id",
    show_tab_indicators = true,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    offsets = { { filetype = "NvimTree", text = "File Explorer" } },
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
}
