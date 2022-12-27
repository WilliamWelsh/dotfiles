return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "RRethy/nvim-base16" },
	config = function()
		require("base16-colorscheme").setup({
			base00 = "#1d1f21",
			base01 = "#282a2e",
			base02 = "#373b41",
			base03 = "#969896",
			base04 = "#b4b7b4",
			base05 = "#c5c8c6",
			base06 = "#e0e0e0",
			base07 = "#ffffff",
			base08 = "#cc6666",
			base09 = "#de935f",
			base0A = "#f0c674",
			base0B = "#b5bd68",
			base0C = "#8abeb7",
			base0D = "#81a2be",
			base0E = "#b294bb",
			base0F = "#a3685a",
		})

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				section_separators = {
					left = "",
					right = "",
				},
				component_separators = {
					left = "",
					right = "",
				},
				disabled_filetypes = {},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					{
						"filename",
						file_status = true, -- displays file status (readonly status, modified status)
						path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
					},
				},
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
					},
					"encoding",
					"filetype",
				},
				lualine_y = {},
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						"filename",
						file_status = true, -- displays file status (readonly status, modified status)
						path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
					},
				},
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
		})
	end,
}
