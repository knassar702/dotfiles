map <C-x> :Telescope file_browser<CR>
map <C-c> :Telescope find_files<CR>
map <C-v> :split term://bash<CR>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
" Change 2 split windows from vert to horiz or horiz to vert
nmap <silent> <C-s> :w<CR>
nmap <silent> <C-q> :q!<CR>
cmap <silent> <C-r> :lua ~/.config/nvim/init.lua  <CR> " reload vimrc
cmap <silent> <C-c> :e! ~/.config/nvim/init.lua  <CR> " reload vimrc
nmap <silent> <C-r> :tabNext<CR>
nmap <silent> <C-t> :tabedit<CR>
nmap <silent> <C-a> :bdelete<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>