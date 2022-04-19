-- npm install -g diagnostic-languageserver eslint_d prettier_d_slim prettier
local function on_attach(client)
  print('Attached to ' .. client.name)
end

local dlsconfig = require('diagnosticls-configs')

dlsconfig.init {
  default_config = false,
  format = true,
  on_attach = on_attach,
}

local eslint = require('diagnosticls-configs.linters.eslint')
local prettier = require('diagnosticls-configs.formatters.prettier')
local stylelint = require('diagnosticls-configs.linters.stylelint')

prettier.requiredFiles = {
    '.prettierrc',
    '.prettierrc.json',
    '.prettierrc.toml',
    '.prettierrc.json',
    '.prettierrc.yml',
    '.prettierrc.yaml',
    '.prettierrc.json5',
    '.prettierrc.js',
    '.prettierrc.cjs',
    'prettier.config.js',
    'prettier.config.cjs',
  }
dlsconfig.setup {
  ['css'] = {
    linter = stylelint,
    formatter = { prettier }
  },
  ['scss'] = {
    linter = stylelint,
    formatter = { prettier }
  },
  ['javascript'] = {
    linter = eslint,
    formatter = { prettier }
  },
  ['javascriptreact'] = {
    linter = { eslint },
    formatter = { prettier }
  },
  ['typescript'] = {
    linter = eslint,
    formatter = { prettier }
  },
  ['typescriptreact'] = {
    linter = { eslint },
    formatter = { prettier }
  },

  ['css'] = {
    formatter = prettier
  },
  ['html'] = {
    formatter = prettier
  },
}
