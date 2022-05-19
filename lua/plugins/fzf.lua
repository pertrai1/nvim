vim.g.fzf_buffers_jump = true
vim.g.fzf_layout = { window = { width = 0.8, height = 0.8, yoffset = 0.2 } }
vim.cmd [[let $FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS . ' --reverse --ansi']]

local ok, fzf = pcall(require, 'fzf-lua')
local actions = require("fzf-lua.actions")

if not ok then
    return
end
fzf.setup {
    actions = {
        files = {
            ["ctrl-f"] = actions.file_sel_to_qf
        }
    }
}
