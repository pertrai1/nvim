call plug#begin('~/.config/nvim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'

Plug 'akinsho/bufferline.nvim'

Plug 'mhinz/vim-startify'

Plug 'francoiscabrol/ranger.vim'

Plug 'vim-test/vim-test'
Plug 'tpope/vim-commentary'

Plug 'tomasiser/vim-code-dark'

call plug#end()

