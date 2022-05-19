local ok, navigator = pcall(require, 'Navigator')
if not ok then
    return
end

navigator.setup()
