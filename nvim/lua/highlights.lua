vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 0
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.g.neovide_transparency = 0.8
vim.g.transparency = 0.8

vim.api.nvim_set_hl(0, "WinSeparator", {
	bg = "NONE",
	fg = "#3F434B",
})

vim.api.nvim_set_hl(0, "Normal", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "NonText", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "Folded", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "SpecialKey", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "VertSplit", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "LineNr", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "NonText", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "SignColumn", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "EndOfBuffer", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "NormalNC", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "TabLineFill", {
	bg = "NONE",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
	bg = "NONE",
})
vim.api.nvim_set_hl(0, "CursorLine", {
	bg = "NONE",
})

-- 			Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
-- 			Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
