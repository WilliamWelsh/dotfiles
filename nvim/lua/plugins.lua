local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- Package Manager
	use("wbthomason/packer.nvim")

	use("DaikyXendo/nvim-material-icon")

	-- Base 16 colors
	use("RRethy/nvim-base16")

	-- Utilities
	use("nvim-lua/plenary.nvim")

	-- Pictograms
	use("onsails/lspkind-nvim") -- vscode pictograms

	-- LSP Stuff
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("jose-elias-alvarez/null-ls.nvim")

	use("simrat39/rust-tools.nvim")

	use("mfussenegger/nvim-dap")

	use({ -- Signature help in insert mode
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup({
				bind = true,
				handler_opts = {
					border = "rounded",
				},
			})
		end,
	})

	-- Floating buffer messages
	use({
		"AckslD/messages.nvim",
		config = 'require("messages").setup()',
	})

	-- Preview live Markdown in the browser
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Color rgb and hexadecimal backgrounds
	use({
		"Akianonymus/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({})
		end,
	})

	-- Same as above but for Tailwind classes
	use({
		"mrshmllow/document-color.nvim",
		config = function()
			require("document-color").setup({
				-- Default options
				mode = "background", -- "background" | "foreground" | "single"
			})
		end,
	})

	-- Commenting Plugin
	use("tpope/vim-commentary")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Disable search highlighting when done searching
	use("romainl/vim-cool")

	-- Syntax Highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Sticky header when in functions and other nested stuff
	use({
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
	})

	-- Helps with commenting tsx stuff
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Matching rainbow parantheses
	use("p00f/nvim-ts-rainbow")

	-- Annotation Toolkit
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({})
		end,
		requires = "nvim-treesitter/nvim-treesitter",
	})

	-- File Icons
	use("kyazdani42/nvim-web-devicons")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("gbrlsnchs/telescope-lsp-handlers.nvim")

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- GitHub Copilot
	use("github/copilot.vim")

	-- Tomorrow Night Theme
	use("chriskempson/base16-vim")

	-- Find & Replace Plugin
	use("windwp/nvim-spectre")

	-- File Explorer
	use({
		"DaikyXendo/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})

	-- Add vertical lines for indents
	use("lukas-reineke/indent-blankline.nvim")

	-- Statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kRRethy/nvim-base16",
		},
	})

	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Show some stuff on the scrollbar
	use({
		"petertriho/nvim-scrollbar",
		config = function()
			require("scrollbar").setup()
		end,
	})

	use("voldikss/vim-floaterm")

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	use("kdheepak/lazygit.nvim")

	use("mbbill/undotree")

	use({
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
	})

	-- Visual Tabs for Buffers (currently cokeline)
	-- use 'akinsho/nvim-bufferline.lua'
	use({
		"noib3/nvim-cokeline",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Generate screenshots of code to clipboard
	use({ "krivahtoo/silicon.nvim", run = "./install.sh" })
end)
