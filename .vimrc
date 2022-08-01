set encoding=utf-8
set number
set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'weilbith/nvim-code-action-menu'
    Plug 'folke/tokyonight.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'ellisonleao/glow.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'github/copilot.vim'
    Plug 'andweeb/presence.nvim'
	Plug 'skywind3000/asyncrun.vim'
    Plug 'joshdick/onedark.vim'
	Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'aquach/vim-http-client'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'chrisdiana/itg_flat_vim'

call plug#end()


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
let g:rehash256 = 1
set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
set nocursorline                  " Line Highlight

map <C-c> :NERDTreeToggle<CR>
map <C-x> :FZF<CR>
map <C-z> :split term://bash<CR>
map <C-e> :!bash run_test.sh <CR>
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
cmap <silent> <C-r> :so ~/.config/nvim/init.vim  <CR> " reload vimrc
cmap <silent> <C-c> :e! ~/.config/nvim/init.vim  <CR> " reload vimrc
cmap <silent> <C-t> :e! ~/.to_do  <CR> " reload vimrc
nmap <silent> <C-r> :tabNext<CR>
nmap <silent> <C-t> :tabedit<CR>
nmap <silent> <C-a> :bdelete<CR>
"nmap <silent> <C-r> :bprevious<CR>
"nmap <silent> <C-t> :bnext<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>
set showmode
"set paste
"colorscheme wal

"colorscheme deus
"colorscheme onedark
set noshowmode
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

cmap <silent> <F2> :split term://bash<CR>
cmap <silent> <F1> :FZF <CR>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
autocmd TermOpen * startinsert


"
packadd termdebug
" General options
let g:airline#extensions#tabline#show_splits = 0
set background=dark
if has('termguicolors')
  set termguicolors
endif

set completeopt=menu,menuone,noselect


lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require'lspconfig'.rust_analyzer.setup{}
  require'lspconfig'.pyright.setup{}
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.gopls.setup{}
  require'lspconfig'.flow.setup{}


  require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '> ', right = '<'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode','hostname','tabs'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat','filesize', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require("nvim-tree").setup()




EOF


" shusia
"colorscheme ayu
" source ~/.vim/plugged/minetheme/init.vim


let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:tokyonight_style = "night"
colorscheme gruvbox
"colorscheme itg_flat_transparent
"

