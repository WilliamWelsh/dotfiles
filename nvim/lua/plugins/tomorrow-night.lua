-- return {
return {
	"chriskempson/base16-vim",
	lazy = false,
	-- config = true,
	-- config = function()
	-- require("base16-vim").setup({
	-- 	comment_italics = true,
	-- })
	-- end,
}
-- 	{
-- 		"tjdevries/colorbuddy.nvim",
-- 		lazy = false,
-- 		config = function()
-- 			local Color, colors, Group, groups, styles = require("colorbuddy").setup()

-- 			Color.new("black", "#000000")
-- 			Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
-- 			Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
-- 			Group.new("Visual", colors.none, colors.base03, styles.reverse)

-- 			local cError = groups.Error.fg
-- 			local cInfo = groups.Information.fg
-- 			local cWarn = groups.Warning.fg
-- 			local cHint = groups.Hint.fg

-- 			Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- 			Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- 			Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- 			Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- 			Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- 			Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- 			Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- 			Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
-- 		end,
-- 	},
-- }
