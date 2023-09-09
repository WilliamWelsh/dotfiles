return {
	"vuki656/package-info.nvim",

	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("package-info").setup({
			colors = {
				up_to_date = "#969896", -- Text color for up to date dependency virtual text
				outdated = "#969896", -- Text color for outdated dependency virtual text
			},
			hide_up_to_date = true,
		})
	end,
}
