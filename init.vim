" https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/init.vim
" https://github.com/garybernhardt/dotfiles/blob/main/.vimrc
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
" https://github.com/moraisaugusto/another-dotfiles
" https://github.com/rafi/vim-config

" ctrl-0 = alt-back
" ctrl-i = alt-forward
"
call plug#begin('~/.config/nvim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
" Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'

" Plug 'flazz/vim-colorschemes'

Plug 'Mofiqul/vscode.nvim'
Plug 'tomasiser/vim-code-dark'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'folke/trouble.nvim'

Plug 'akinsho/bufferline.nvim'
Plug 'akinsho/toggleterm.nvim'

Plug 'mhinz/vim-startify'

" Plug 'github/copilot.vim'

Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'

Plug 'vim-test/vim-test'

Plug 'kdheepak/lazygit.nvim'

Plug 'fedepujol/move.nvim'

Plug 'tpope/vim-commentary'
call plug#end()

" set to auto read when file is changed outside
set autoread
au FocusGained,BufEnter * checktime

set autoindent
filetype plugin indent on
set smartindent
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=2
set smarttab
set tabstop=2
set showtabline=2

set wildmode=longest,list

let mapleader=" "
nnoremap ; :

" Faster saving
nmap <leader>w :w!<CR>

" General
set hidden
set number
" set relativenumber
set encoding=utf-8
set linebreak
syntax on
set wrap
set clipboard=unnamed
set history=10000

set ruler
set backspace=eol,start,indent
set wildmenu

set ignorecase
set smartcase
set hlsearch
set incsearch

nnoremap <silent> <BS> :nohlsearch<CR>

set lazyredraw

set showmatch

set nobackup
set nowb
set noswapfile
set nowritebackup

" Misc. Key Mapping
nnoremap <C-x> :q<CR>
inoremap jk <esc>
nnoremap <leader>/ "fyiw 
nnoremap <leader>pv :Ex<CR>
" Start new line from any current position
" inoremap <S-Return> <C-o>o

" Operate on display lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" delete a word backwards
nnoremap dw vb"_d
" select all
nmap <C-a> gg<S-v>G

" Colors
" let g:vscode_style="light"
" let g:vscode_italic_comment=1
" colorscheme vscode
colorscheme codedark
set termguicolors

lua << EOF
require("bufferline").setup {
  options = {
    diagnostics = "coc",
    numbers = "buffer_id",
    show_tab_indicators = true
  }
}
require("nvim-tree").setup{
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  disable_window_picker = 0,
  view = {
    width = 50,
    side = "left"
  },
  git = {
    ignore = false
  }
}
require("nvim-web-devicons").setup {}
require("lualine").setup {}
require("toggleterm").setup {
  direction = 'float'
}
require("trouble").setup {}
EOF

" Visual mode related
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Give more space for displaying messages
set cmdheight=2

" Longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays
set updatetime=300
set nocompatible

set showcmd
set showmode

set ai
set si

set laststatus=2

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nnoremap <silent> K :call CocAction('doHover')<CR>

nmap <F2> <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <leader>d :<C-u>CocList diagnostics<CR>
nnoremap <silent> <space>s :<C-u>CocList -I symbols<CR>
nnoremap <silent> <space>o :<C-u>CocList outline<CR>
" nnoremap <silent> <leader>e :<C-u>CocList extensions<CR>

nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

nnoremap <leader>e <cmd>CocCommand explorer<CR>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<CR>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<CR>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<CR>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<CR>
nnoremap <leader>xl <cmd>TroubleToggle loclist<CR>
nnoremap gR <cmd>TroubleToggle lsp_references<CR>

" Vista
nnoremap <silent> <leader>v :Vista!!<CR>

" Buffers
" close all buffers
nnoremap <silent> <leader>ba :bufdo bd<CR>
nnoremap <silent> <leader>bl :bnext<CR>
nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <leader>bh :bprevious<CR>
nnoremap <silent> <S-h> :bprevious<CR>
nnoremap <silent> <leader>b :bw<CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Switch CWD to the directory of current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" NERDTree
" let NERDTreeShowBookmarks=1
" let NERDTreeChDirMode=0
" let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
" let NERDTreeIgnore = []
" let NERDTreeWinSize=70
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" NvimTree
" https://github.com/kyazdani42/nvim-tree.lua
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFocus<CR>
nnoremap <C-f> :NvimTreeFindFileToggle<CR>
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

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

" Window Mappings
nnoremap <leader>wj <C-w><C-j>
nnoremap <leader>wk <C-w><C-k>
nnoremap <leader>wl <C-w><C-l>
nnoremap <leader>wh <C-w><C-h>

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points <= really helpful
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

" Airline
" let g:airline#extensions#bufferline#enabled=1
" let g:airline#extensions#brance#enabled=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_theme='papercolor'

" Bufferline
nnoremap <silent> gb :BufferLinePick<CR>

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tm :tabmove<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprevious<CR>

" Moving lines
" vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z
" inoremap <C-j> <esc>:m .+1<CR>==
" inoremap <C-k> <esc>:m .-2<CR>==
" nnoremap <C-k> :m .-2<CR>==
" nnoremap <C-j> :m .+1<CR>==
nnoremap <silent> <C-j> :MoveLine(1)<CR>
nnoremap <silent> <C-k> :MoveLine(-1)<CR>
vnoremap <silent> <C-j> :MoveBlock(1)<CR>
vnoremap <silent> <C-k> :MoveBlock(-1)<CR>
nnoremap <silent> <C-l> :MoveHChar(1)<CR>
nnoremap <silent> <C-h> :MoveHChar(-1)<CR>
vnoremap <silent> <C-l> :MoveHBlock(1)<CR>
vnoremap <silent> <C-h> :MoveHBlock(-1)<CR>

" Git
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" CSS/SCSS
autocmd FileType scss setl iskeyword+=@~@

" More Coc
" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
          \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list', "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

" Disable arrow movement, resize windows
nnoremap <Up> <cmd>resize +1<CR>
nnoremap <Down> <cmd>resize -1<CR>
nnoremap <Right> <cmd>vertical resize +1<CR>
nnoremap <Left> <cmd>vertical resize -1<CR>

" Toggle fold
" nnoremap <CR> za

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

" Ranger
nmap <leader>rf :RangerWorkingDirectory<CR>
nmap <leader>rw :RangerWorkingDirectoryNewTab<CR>

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-a> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-v> :TestVisit<CR>

let g:test#javascript#runner = 'jest'

" CoPilot
" imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true

nmap <silent> lg :LazyGit<CR>

xmap / <Plug>Commentary

