let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <F2> <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

" nnoremap <silent> <leader>cl :<C-u>CocList locationlist<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" nnoremap <silent> <leader>d :<C-u>CocList diagnostics<CR>
nnoremap <silent> <leader>d :<C-u>CocFzfList diagnostics<CR>
" nnoremap <silent> <leader>cs :<C-u>CocList -I symbols<CR>
nnoremap <silent> <leader>cs :<C-u>CocFzfList -I symbols<CR>
" nnoremap <silent> <leader>co :<C-u>CocList outline<CR>
nnoremap <silent> <leader>co :<C-u>CocFzfList outline<CR>
" nnoremap <silent> <leader>e :<C-u>CocList extensions<CR>
nnoremap <silent> <leader>cl :<C-u>CocFzfList location<CR>
nnoremap <silent> <leader>cR :<C-u>CocRestart<CR>

nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-format-selected)
vmap <leader>cf <Plug>(coc-format-selected)

" Run the code lens action on the current line
" nmap <leader>cl <Plug>(coc-codelens-action)

" use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nnoremap <leader>e <cmd>CocCommand explorer<CR>

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
          \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list', "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>


