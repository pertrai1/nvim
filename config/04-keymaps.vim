" ctrl-0 = alt-back
" ctrl-i = alt-forward
nnoremap ; :

" Faster saving
nmap <leader>w :w!<CR>

nnoremap <silent> <BS> :nohlsearch<CR>


" Misc. Key Mapping
nnoremap <C-x> :q<CR>
inoremap jk <esc>

" Operate on display lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" delete a word backwards
nnoremap dw vb"_d
" select all
nmap <C-a> gg<S-v>G


" Visual mode related
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Buffers
" close all buffers
nnoremap <silent> <leader>ba :bufdo bd<CR>
nnoremap <silent> <leader>bl :bnext<CR>
nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <leader>bh :bprevious<CR>
nnoremap <silent> <S-h> :bprevious<CR>
nnoremap <silent> <leader>b :bw<CR>

" Switch CWD to the directory of current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Window Mappings
nnoremap <leader>wj <C-w><C-j>
nnoremap <leader>wk <C-w><C-k>
nnoremap <leader>wl <C-w><C-l>
nnoremap <leader>wh <C-w><C-h>

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tm :tabmove<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprevious<CR>

" Moving lines
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==

" Disable arrow movement, resize windows
nnoremap <Up> <cmd>resize +1<CR>
nnoremap <Down> <cmd>resize -1<CR>
nnoremap <Right> <cmd>vertical resize +1<CR>
nnoremap <Left> <cmd>vertical resize -1<CR>

" Easier line-wise movement
nnoremap gh g^
nnoremap gl g$

" Re-select blocks after indenting in visual/select mode
xnoremap < <gv
xnoremap > >gv|

" Use tab for indenting in visual/select mode
xnoremap <Tab> >gv|
xnoremap <S-Tab> <gv

" Repeat last f, t, F or T
nnoremap \ ;


