return { -- Color rgb and hexadecimal backgrounds
	{
		"Akianonymus/nvim-colorizer.lua",
		config = true,
	}, -- Same as above but for Tailwind slasses
	{
		"mrshmllow/document-color.nvim",
		config = function()
			require("document-color").setup({
				-- Default options
				mode = "background", -- "background" | "foreground" | "single"
			})
		end,
	},
}
