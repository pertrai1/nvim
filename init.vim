" https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/init.vim
" https://github.com/garybernhardt/dotfiles/blob/main/.vimrc
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
" https://github.com/moraisaugusto/another-dotfiles
" https://github.com/rafi/vim-config

" ctrl-0 = alt-back
" ctrl-i = alt-forward
"
call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
" Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'

Plug 'Mofiqul/vscode.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'projekt0n/github-nvim-theme'

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

Plug 'tpope/vim-commentary'
call plug#end()

lua << EOF
require("plugins.bufferline")
require("plugins.treesitter")
require("plugins.telescope")
require("nvim-tree").setup{
  diagnostics = { enable = true },
  tab_open = true,
  auto_close = false,
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
    enable = true,
    ignore = false,
    timeout = 500
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
require("nvim-web-devicons").setup {}
require('plugins.lualine')
require("toggleterm").setup {
  direction = 'float'
}
require("trouble").setup {}

require('settings')
require('keymaps')
require('plugins.coc-config')
EOF

filetype plugin indent on
syntax on

set wildmode=longest,list
set wildmenu
set nocompatible


" delete a word backwards
nnoremap dw vb"_d
" select all
nmap <C-a> gg<S-v>G
nmap <leader>pb :w% !pbcopy<CR>
" Colors
" let g:vscode_style="light"
" let g:vscode_italic_comment=1
" colorscheme vscode

" Example config in VimScript
" NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

colorscheme github_dark
" colorscheme codedark
set termguicolors


let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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

" More Coc
" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
          \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list', "\n")
endfunction


" Vista
nnoremap <silent> <leader>v :Vista!!<CR>

" Switch CWD to the directory of current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

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

" Git
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

let g:test#javascript#runner = 'jest'

