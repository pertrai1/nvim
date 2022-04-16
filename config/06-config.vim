" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" CSS/SCSS
autocmd FileType scss setl iskeyword+=@~@

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

autocmd FileType vim setlocal foldmethod=marker
