local status, silicon = pcall(require, "silicon")
if not status then
	return
end

silicon.setup({
	font = "JetBrainsMono Nerd Font Mono=16",
	theme = "base16-tomorrow.dark",
	background = "#949FA9",
	shadow = {
		blur_radius = 20.0,
		offset_x = 0,
		offset_y = 0,
		color = "#000000",
	},
	pad_horiz = 50,
	pad_vert = 40,
})
