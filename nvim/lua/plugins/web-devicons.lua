return {
	"kyazdani42/nvim-web-devicons",
	dependencies = { "DaikyXendo/nvim-material-icon" },
	config = function()
		require("nvim-web-devicons").setup({
			-- your personnal icons can go here (to override)
			-- DevIcon will be appended to `name`
			override = require("nvim-material-icon").get_icons(),
			-- globally enable default icons (default to false)
			-- will get overriden by `get_icons` option
			default = true,
		})
	end,
}
