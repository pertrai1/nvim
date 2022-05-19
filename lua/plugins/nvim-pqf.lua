local ok, pqf = pcall(require, 'pqf')
if not ok then
    return
end

pqf.setup {
    signs = {
        error = "",
        warning = "",
        info = "",
        hint = "",
    },
}
