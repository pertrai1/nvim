local prettier = {
    tabWidth = 2,
    singleQuote = true,
    trailingComma = "all",
    configPrecedence = "prefer-file",
}

local ok, lsp_format = pcall(require, 'lsp-format')
if not ok then
    return
end

lsp_format.setup {
    typescript = prettier,
    javascript = prettier,
    typescriptreact = prettier,
    javascriptreact = prettier,
    json = prettier,
    css = prettier,
    scss = prettier,
    html = prettier,
    yaml = {
        tabWidth = 2,
        singleQuote = true,
        trailingComma = "all",
        configPrecedence = "prefer-file",
    },
    markdown = prettier,
    sh = {
        tabWidth = 4,
    },
}
