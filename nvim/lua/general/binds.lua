-- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-x>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Open FZF
vim.api.nvim_set_keymap('n', '<C-c>', ':FZF<CR>', { noremap = true, silent = true })

-- Resize vertically
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true, silent = true })

-- Resize horizontally
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -3<CR>', { noremap = true, silent = true })

-- Save file and change split orientation
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Quit without saving
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })

-- Reload Vim configuration
vim.api.nvim_set_keymap('c', '<C-r>', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-c>', ':e! ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- Switch to next tab
vim.api.nvim_set_keymap('n', '<C-r>', ':tabnext<CR>', { noremap = true, silent = true })

-- Create new tab
vim.api.nvim_set_keymap('n', '<C-t>', ':tabedit<CR>', { noremap = true, silent = true })

-- Close current tab
vim.api.nvim_set_keymap('n', '<C-a>', ':bdelete<CR>', { noremap = true, silent = true })

-- Move current split window to the top/left and open a new split window on the bottom/right
vim.api.nvim_set_keymap('n', '<Leader>th', '<C-w>t<C-w>H', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>tk', '<C-w>t<C-w>', { noremap = true })

