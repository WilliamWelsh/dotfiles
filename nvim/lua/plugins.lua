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
  use 'onsails/lspkind-nvim' -- vscode pictograms

  -- LSP Stuff
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'jose-elias-alvarez/null-ls.nvim'

  use { -- Signature help in insert mode
    'ray-x/lsp_signature.nvim',
    config = function()
        require('lsp_signature').setup({
          bind = true,
          handler_opts = {
            border = "rounded"
          }
  })
    end
  }

  -- Preview live Markdown in the browser
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Color rgb and hexadecimal backgrounds
    use({
  "Akianonymus/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup()
  end,
  })

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'


-- Disable search highlighting when done searching
  use 'romainl/vim-cool'


  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Sticky header when in functions and other nested stuff
  use {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
        require('treesitter-context').setup()
    end
  }

  -- Matching rainbow parantheses
  use 'p00f/nvim-ts-rainbow'

    -- Annotation Toolkit
  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup({})
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  }

  -- File Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

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

  -- Show some stuff on the scrollbar
  use {
    'petertriho/nvim-scrollbar',
      config = function()
      require('scrollbar').setup()
    end
  }

  use {
    "akinsho/toggleterm.nvim", tag = '*',
    config = function()
      require("toggleterm").setup({})
    end
  }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

end)
