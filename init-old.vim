" ==================================================
" Allow pre-definitions via ~/.config/nvim/before.vim
" ==================================================
if filereadable(expand("~/.config/nvim/before.vim"))
    source ~/.config/nvim/before.vim
endif

" ==================================================
" Source the files ~/.config/nvim/config/
" ==================================================
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor

" ==================================================
" Allow overrides via ~/.config/nvim/after.vim
" ==================================================
if filereadable(expand("~/.config/nvim/after.vim"))
    source ~/.config/nvim/after.vim
endif

