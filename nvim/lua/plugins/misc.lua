return { -- Commenting Plugin
	"tpope/vim-commentary", -- Disable search highlighting when done searching
	{
		"romainl/vim-cool",
		event = "SearchWrapped",
	}, -- Show some stuff on the scrollbar
	{
		"petertriho/nvim-scrollbar",
		config = true,
	},
}
