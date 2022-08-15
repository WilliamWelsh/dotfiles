local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- Base 16 colors
  use 'RRethy/nvim-base16'

  -- Utilities
  use 'nvim-lua/plenary.nvim'

  -- Pictograms
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  -- LSP Stuff
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  -- Autoformatter
  use 'sbdchd/neoformat'
  
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- File Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Tabs
  use 'akinsho/nvim-bufferline.lua'

  -- GitHub Copilot
  use 'github/copilot.vim'

  -- Commenting Plugin
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Tomorrow Night Theme
  use 'chriskempson/base16-vim'

  -- Find & Replace Plugin
  use 'windwp/nvim-spectre'

  -- File Explorer
  use {
  'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- Add vertical lines for indents
  use 'lukas-reineke/indent-blankline.nvim'

  -- Statusline
  use {
  'nvim-lualine/lualine.nvim',
    requires = {
      'kRRethy/nvim-base16',
    }
  }

  -- Discord Rich Presence
  -- use 'andweeb/presence.nvim'
  -- Custom plugin override to disable the timer
  use '~/.config/nvim/customPlugins/discord-presence.nvim'
  

end)
