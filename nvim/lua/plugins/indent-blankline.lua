return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│",
		},
		scope = { enabled = false },
		whitespace = {
			remove_blankline_trail = true,
		},
		exclude = {
			buftypes = { "terminal", "nofile", "quickfix" },
			filetypes = { "help", "packer", "nvimtree", "dashboard", "neo-tree" },
		},
	},
}
