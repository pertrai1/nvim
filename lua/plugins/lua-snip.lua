local ok, luasnip = pcall(require, 'luasnip')
if not ok then
    return
end

luasnip.config.set_config {
    enable_autosnippets = true,
}
