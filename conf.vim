set encoding=utf-8
set number
set nocompatible              " be iMproved, required
filetype plugin indent on    " required
set mouse=a
set path+=**                                    " Searches current directory recursively.
set wildmenu                                    " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  "No swap
set t_Co=256                    " Set if term supports 256 colors.
"set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
"set clipboard=unnamed
set noswapfile

syntax enable

set laststatus=2
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
set nocursorline                  " Line Highlight
set splitbelow splitright
set noshowmode


"colorscheme vim-monokai-tasty
"colorscheme onedark
"colorscheme hybrid
"colorscheme bubblegum-256-dark
" colorscheme nv-doomone
"highlight Pmenu ctermbg=gray guibg=black

