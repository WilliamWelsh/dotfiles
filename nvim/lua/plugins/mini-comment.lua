return {
	"echasnovski/mini.comment",
	keys = { "<Space>/" },
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
		})
	end,
	lazy = false,
}
