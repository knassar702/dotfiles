set encoding=utf-8
set number
set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')

        Plug 'mhartington/oceanic-next'
        Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'joshdick/onedark.vim'
"    Plug 'bling/vim-airline'
    Plug 'itchyny/lightline.vim'
    Plug 'zah/nim.vim'
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.vim'
"    Plug 'wakatime/vim-wakatime'
    Plug 'dylanaraps/wal.vim'
    Plug 'valloric/youcompleteme'
"    Plug 'vim-airline/vim-airline'
 "   Plug 'vim-airline/vim-airline-themes'
    Plug 'skywind3000/asyncrun.vim'
call plug#end()

"tnoremap <Esc> N


filetype plugin indent on    " required
set mouse=a
set path+=**                                    " Searches current directory recursively.
set wildmenu                                    " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noshowmode                  " disable show mode option
set noswapfile                  "No swap
set t_Co=256                    " Set if term supports 256 colors.
"set number relativenumber       " Display line numbers
"set clipboard=unnamedplus       " Copy/paste between vim and other programs.
set clipboard=unnamed
set noswapfile

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
"set cursorline                  " Line Highlight

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
nmap <silent> <C-q> :q!<CR>
cmap <silent> <C-p> :Git push origin <CR>
cmap <silent> <C-s> :Git show <CR>
cmap <silent> <C-l> :Git log<CR>
cmap <silent> <C-r> :so ~/.vimrc  <CR> " reload vimrc
nmap <silent> <C-r> :tabNext<CR>
nmap <silent> <C-t> :tabedit<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>

colorscheme OceanicNext
"colorscheme wal

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

vmap <C-c> "+y
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

let g:neocomplete#enable_at_startup = 1
"colorscheme wal
colorscheme onedark
