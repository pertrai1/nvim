local ok, bqf = pcall(require, 'bqf')
if not ok then
    return
end

bqf.setup {
    preview = {
        delay_syntax = 0,
    },
}
