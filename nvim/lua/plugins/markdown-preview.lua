-- Preview live Markdown in the browser
return {
	"iamcco/markdown-preview.nvim",
	-- enabled = false,
	cmd = "MarkdownPreview",
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
}
