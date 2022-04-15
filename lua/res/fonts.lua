if vim.fn.has('unix') == 1 then
  local uname = vim.fn.system('uname')
  if uname == "Darwin\n" then
    vim.opt.guifont = 'Fira Code Regular Nerd Font Complete Mono:h14'
  else
    vim.opt.guifont = 'Fira Code Regular Nerd Font Complete Mono 14'
  end
end
