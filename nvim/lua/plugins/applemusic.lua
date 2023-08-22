return {
	dir = "/Users/william/repos/apple-music.nvim",
	cmd = {
		"AppleMusicCurrentSong",
		"AppleMusicNext",
		"AppleMusicPrevious",
		"AppleMusicPlay",
		"AppleMusicPause",
		"AppleMusicLyrics",
	},
	dev = true,
	-- config = true,
	config = function()
		require("apple-music").setup({})
		require("telescope").load_extension("apple_music")
	end,
	build = "bash install.sh",
	enabled = false,
	lazy = false,
}
