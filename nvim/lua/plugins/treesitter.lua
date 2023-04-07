return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = true,
		lazy = false,
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring", lazy = false },
	{ "p00f/nvim-ts-rainbow", lazy = false },
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
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					disable = {},
				},
				indent = {
					enable = true,
					disable = {},
				},
				ensure_installed = { "tsx", "fish", "json", "yaml", "css", "html", "lua", "prisma" },
				autotag = {
					enable = true,
				},
				rainbow = {
					enable = true,
					extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
					max_file_lines = nil, -- Do not enable for files with more than n lines, int
					-- colors = {}, -- table of hex strings
					-- termcolors = {} -- table of colour name strings
				},
				context_commentstring = {
					enable = true,
				},
			})

			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

			-- Astro support
			local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
			ft_to_parser.astro = "tsx"
		end,
	},
}
