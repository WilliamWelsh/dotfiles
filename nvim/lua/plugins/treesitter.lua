return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = true,
		lazy = false,
	},
	-- { "hiphish/rainbow-delimiters.nvim", lazy = false },
	{
		"windwp/nvim-ts-autotag",
		config = true,
		lazy = false,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufReadPost",
		config = function()
			vim.g.skip_ts_context_commentstring_module = true
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					use_languagetree = true,
					disable = {},
				},
				indent = {
					enable = true,
					disable = {},
				},
				ensure_installed = { "typescript", "tsx", "fish", "json", "yaml", "css", "html", "lua" },
				autotag = {
					enable = true,
				},
			})
		end,
	},
}
