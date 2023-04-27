-- Loading Pkgs
require("khaled.pkgs")
require("khaled.lsp")
require("general")



-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' ,'diff'},
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
require("nvim-tree").setup()


-- Loading Vim Scripts
--vim.cmd('source /home/knas/.config/nvim/conf.vim')
vim.cmd('highlight Pmenu ctermbg=gray guibg=gray')
vim.cmd('let mapleader = ","')
local builtin = require'telescope.builtin'

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>dd', builtin.lsp_references, {})
-- vim.cmd('color spacegray')

--vim.cmd('color plastic')
-- vim.cmd('color itg_flat_transparent')
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

require('nvim-terminal').setup()


require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

vim.cmd([[
" Set status line colors
hi! StatusLine  guibg=#20242b guifg=#dcdfe4
hi! StatusLineNC guibg=#20242b guifg=#768abf

" Primary colors
hi! Normal    guifg=#d5d8da guibg=#16161c
hi! CursorLine    guibg=#292b33
hi! CursorColumn  guibg=#292b33
hi! Visual    guifg=#d5d8da guibg=#4c5c77

" Normal colors
hi! Comment   guifg=#5a6b8e
hi! Constant  guifg=#26bbd9
hi! Identifier    guifg=#d5d8da
hi! Statement guifg=#e95678
hi! PreProc   guifg=#ee64ac
hi! Type  guifg=#59e1e3
hi! Special   guifg=#8499d6

" Bright colors
hi! CursorLineNr  guifg=#d5d8da guibg=#292b33
hi! Cursor       guifg=#292b33 guibg=#768abf
hi! Error        guifg=#f43753 guibg=#292b33
hi! VisualNOS    guifg=#292b33 guibg=#d5d8da
hi! MatchParen   guifg=#768abf guibg=#292b33
hi! IncSearch    guifg=#292b33 guibg=#26bbd9
hi! Search       guifg=#292b33 guibg=#768
]])
