local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		show_buffer_close_icons = false,
		diagnostics = "nvim_lsp",
		show_close_icon = false,
		show_duplicate_prefix = true,
		separator_style = "thick",
		highlights = {
			separator_selected = {
				fg = "#ffd43b",
				bg = "#ffd43b",
			},
			separator_visible = {
				fg = "#ffd43b",
				--[[ bg = '<colour-value-here>' ]]
			},
			separator = {
				fg = "#ffd43b",
				--[[ bg = '<colour-value-here>' ]]
			},
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- vim.api.nvim_set_hl(0, "Normal", {bg="NONE"})
