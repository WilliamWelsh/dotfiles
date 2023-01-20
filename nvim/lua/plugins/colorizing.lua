return {
	-- Color rgb and hexadecimal backgrounds and tailwind
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				user_default_options = {
					names = true,
					tailwind = true,
				},
			})
		end,
	},
	-- Same as above but for Tailwind classes
	{
		"mrshmllow/document-color.nvim",
		config = function()
			require("document-color").setup({
				-- Default options
				mode = "background",
			})
		end,
	},
}
