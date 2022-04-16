" FZF
nnoremap <C-p> :GFiles<CR>
nnoremap <silent> <leader><leader> :GFiles <C-R>=expand('%:h')<CR><CR>
nnoremap <silent> <leader>t :History<CR>
nnoremap <silent> <leader>bu :Buffers<CR>
nnoremap <silent> <leader>rg :RG<CR>
nnoremap <silent> <leader><enter> :Buffers<CR>
nnoremap <silent> <leader>l :Lines<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
