lua << EOF
  local wk = require("which-key")
  wk.register({
  c = {
    name = "Coc",
    d = {"<Plug>(coc-definition)", "Definition"},
    i = {"<Plug>(coc-implementation)", "Implementation"},
    r = {"<Plug>(coc-rename)", "Rename"},
    t = {"<Plug>(coc-type-definition)", "Type Definition"}
    }
  }, {
    prefix = "<leader>"
    })
EOF
