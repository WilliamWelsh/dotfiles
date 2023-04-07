return {
	"jackMort/ChatGPT.nvim",
	cmd = { "ChatGPT", "ChatGPTActAs", "ChatGPTEditWithInstructions", "ChatGPTRun", "ChatGPTRunCustomCodeAction" },
	config = function()
		require("chatgpt").setup({
			keymaps = {
				submit = "<C-s>",
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
