return {
	"echasnovski/mini.comment",
	keys = { "<leader>/" },
	dependencies = {
		{
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	config = function()
		vim.g.skip_ts_context_commentstring_module = true

		require("ts_context_commentstring").setup({
			enable_autocmd = false,
			languages = {
				typescript = "// %s",
			},
		})

		require("mini.comment").setup({
			mappings = {
				comment = "<Space>/",
				comment_line = "<Space>/",
				comment_visual = "<Space>/",
			},
			options = {
				custom_commentstring = function()
					return require("ts_context_commentstring.internal").calculate_commentstring()
						or vim.bo.commentstring
				end,
			},
		})
	end,
	lazy = false,
}
