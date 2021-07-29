set encoding=utf-8
set number
set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')

	Plug 'mhartington/oceanic-next'
	Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on    " required
set mouse=a
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  "No swap
set t_Co=256                    " Set if term supports 256 colors.
"set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1
"imap ii <Esc>
set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

set splitbelow splitright

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
" Change 2 split windows from vert to horiz or horiz to vert
nmap <silent> <C-s> :w<CR>
nmap <silent> <C-q> :q<CR>
nmap <silent> <C-r> :tabNext<CR>
nmap <silent> <C-t> :tabedit<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>
colorscheme onedark


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>
