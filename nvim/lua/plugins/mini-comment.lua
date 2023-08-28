return {
	"echasnovski/mini.comment",
	keys = { "<leader>/" },
	dependencies = {
		{ "JoosepAlviste/nvim-ts-context-commentstring" },
	},
	config = function()
		require("mini.comment").setup({
			hooks = {
				pre = function()
					require("ts_context_commentstring.internal").update_commentstring({})
				end,
			},
			mappings = {
				comment = "<Space>/",
				comment_line = "<Space>/",
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
