let mapleader=" "

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

set lazyredraw

set showmatch

set nobackup
set nowb
set noswapfile
set nowritebackup

" Give more space for displaying messages
set cmdheight=2

" Longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays
set updatetime=500
set nocompatible

set showcmd
set showmode

set laststatus=2


