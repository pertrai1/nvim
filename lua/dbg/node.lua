-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Javascript-chrome
local dap = require "dap"

dap.adapters.chrome = {
    type = 'executable',
    command = 'node',
    args = {
        vim.fn.stdpath("data") .. "/dapinstall/jsnode_dbg/" ..
            'vscode-node-debug2/out/src/nodeDebug.js'
    }
}

dap.configurations.javascript = {
    {
        type = 'chrome',
        request = 'launch',
        program = '${workspaceFolder}/${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        port = 9222,
        webRoot = '${workspaceFolder}',
        console = 'integratedTerminal'
    }
}

dap.configurations.typescript = {
    {
        type = 'chrome',
        request = 'launch',
        program = '${workspaceFolder}/${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        port = 9222,
        webRoot = '${workspaceFolder}',
        console = 'integratedTerminal'
    }
}

-- dap.configurations.javascript = { -- change this to javascriptreact if needed
--     {
--         type = "chrome",
--         request = "attach",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         protocol = "inspector",
--         port = 9222,
--         webRoot = "${workspaceFolder}"
--     }
-- }

-- dap.configurations.typescript = { -- change to typescriptreact if needed
--     {
--         type = "chrome",
--         request = "attach",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         protocol = "inspector",
--         port = 9222,
--         webRoot = "${workspaceFolder}"
--     }
-- }
