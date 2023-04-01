require('packer').startup(function(use)
-- Lua

    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use 'tyrannicaltoucan/vim-deep-space'
    use 'catppuccin/nvim'
    use 'andersevenrud/nordic.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'rust-lang/rust.vim'
    use 'nvim-telescope/telescope.nvim'
    use 'dcampos/nvim-snippy'
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use 'vimwiki/vimwiki'
    use 'navarasu/onedark.nvim'
    use {
        's1n7ax/nvim-terminal',
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
        end,
    }
    use 'chrisdiana/itg_flat_vim'
    use { 
      'olivercederborg/poimandres.nvim',
      config = function()
      end
    }
    use 'skywind3000/asyncrun.vim'
    use 'ellisonleao/glow.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'L3MON4D3/LuaSnip'
  use 'ryanoasis/vim-devicons'
  use 'vijaymarupudi/nvim-fzf'
  use "wbthomason/packer.nvim"
  use 'tpope/vim-fugitive'
  use 'andweeb/presence.nvim'
  -- ==> Load plugins.
	use {'nvim-lua/plenary.nvim'}
	use {'ipod825/libp.nvim'}
	use { 'camspiers/snap' }
  	use {'neovim/nvim-lspconfig'}
	use { 'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = function()
	    require('lualine').setup({
	    })
	  end,
	}
	use {
	   'hrsh7th/cmp-nvim-lsp',
	   requires = {
		   'hrsh7th/cmp-buffer',
		   'hrsh7th/cmp-path',
		   'hrsh7th/cmp-cmdline',
		   'hrsh7th/nvim-cmp'
	   },
	}
  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
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
      -- { name = 'vsnip' }, -- For vsnip users.
      { name = 'luasnip' }, -- For luasnip users.
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
  -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  --[[
  require'lspconfig'.lua_ls.setup{}
  require'lspconfig'.rust_analyzer.setup{}
  require'lspconfig'.pyright.setup{}
  require'lspconfig'.java_language_server.setup{
  }
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.gopls.setup{}
  require'lspconfig'.flow.setup{}
  ]]--

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

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
-- The setup config table shows all available config options with their default values:
require("presence"):setup({
    -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

require("nvim-tree").setup()


-- Loading Vim Scripts
vim.cmd('source /home/khaled/.config/nvim/conf.vim')
vim.cmd('source /home/khaled/.config/nvim/binds.vim')
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

require("khaled.lsp")
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
