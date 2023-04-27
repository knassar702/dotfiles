-- Set encoding
vim.o.encoding = "utf-8"

-- Display line numbers
vim.wo.number = true

-- Enable filetype plugins and indentations
vim.cmd('filetype plugin indent on')

-- Enable mouse support
vim.o.mouse = 'a'

-- Set path to search current directory recursively
vim.o.path = vim.o.path .. '**'

-- Display all matches when tab complete
vim.o.wildmenu = true

-- Enable incremental search
vim.o.incsearch = true

-- Enable hidden option to keep multiple buffers open
vim.o.hidden = true

-- Disable auto backups
vim.o.backup = false

-- Disable swap file
vim.o.swapfile = false

-- Set the terminal colors to 256
vim.o.termguicolors = true
vim.o.t_Co = 256

-- Set clipboard option to copy/paste between Neovim and other programs
--vim.cmd("set clipboard+=unnamedplus")
vim.opt.clipboard = 'unnamedplus'

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set statusline always visible
vim.o.laststatus = 2

-- Use spaces instead of tabs
vim.o.expandtab = true

-- Smart indentation using tabs
vim.o.smarttab = true

-- Set tab width to 4 spaces
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Disable cursorline highlighting
vim.o.cursorline = false

-- Set split windows to open below and to the right
vim.o.splitbelow = true
vim.o.splitright = true

-- Disable showing mode
vim.o.showmode = false
