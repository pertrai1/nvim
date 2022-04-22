local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup {
  options = {
    diagnostics = "coc",
    numbers = "buffer_id",
    show_tab_indicators = true
  }
}
