require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'navarasu/onedark.nvim'
  use {'nvim-telescope/telescope-ui-select.nvim' }
  -- ==> Load plugins.
	use {'nvim-lua/plenary.nvim'}
	use {'ipod825/libp.nvim'}
	use {
		"ipod825/igit.nvim",
		config = function()
			require("igit").setup()
		end,
	}

	use { 'camspiers/snap' }
  	use {'neovim/nvim-lspconfig'}
	use { 'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = function()
	    require('lualine').setup({
	      options = {
		theme = "duskfox",
	      }
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





local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
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


require('onedark').setup {
    style = 'darker'
}
require('onedark').load()




-- Telescope
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")



-- Git
require("igit").setup()


-- Loading Vim Scripts
vim.cmd('source /home/knassar702/.config/nvim/conf.vim')
vim.cmd('source /home/knassar702/.config/nvim/binds.vim')

