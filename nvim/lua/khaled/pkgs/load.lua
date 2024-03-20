local packer = require("packer")


packer.startup(
    function(use)
        -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
        use 'robbles/logstash.vim'
        use 'github/copilot.vim'
        use 'cseelus/vim-colors-lucid'
        use 'bluz71/vim-moonfly-colors'
        use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
        use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
        use 'romgrk/barbar.nvim'
        use "williamboman/mason.nvim" -- simple to use language server installer
        use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
        use 'tyrannicaltoucan/vim-deep-space'
        use 'catppuccin/nvim'
        use 'andersevenrud/nordic.nvim'
        use 'xiyaowong/nvim-transparent'
        use 'rust-lang/rust.vim'
        use 'nvim-telescope/telescope.nvim'
        use 'dcampos/nvim-snippy'
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
local snippy = require('snippy')




snippy.setup({
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

