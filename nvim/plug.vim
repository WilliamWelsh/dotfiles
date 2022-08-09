if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Git plugins
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'

if has("nvim")
" Base16 colorschemes (lualine)
  Plug 'RRethy/nvim-base16'
  
  " Statusline
  Plug 'hoob3rt/lualine.nvim'


  " LSP Stuff
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'

  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'

  " Snippets
  Plug 'L3MON4D3/LuaSnip'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  " Colored icons
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'

  " Comment Plugin
  Plug 'numToStr/Comment.nvim'

  " File Explorer
  Plug 'kyazdani42/nvim-tree.lua'

  " Format with prettier
  Plug 'sbdchd/neoformat'

  " Themes
  " Plug 'morhetz/gruvbox'
  Plug 'chriskempson/base16-vim'

  " Add vertical lines for indents
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Icon & filenames as tabs
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

  " Copilot
  Plug 'github/copilot.vim'

  " Find & Replace Plugin
  Plug 'windwp/nvim-spectre'
endif

call plug#end()

lua require('Comment').setup()
