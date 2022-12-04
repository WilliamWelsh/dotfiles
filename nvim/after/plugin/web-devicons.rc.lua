local status, icons = pcall(require, "nvim-web-devicons")
if not status then
	return
end

local material_icon_ok, material_icon = pcall(require, "nvim-material-icon")
if not material_icon_ok then
	return
end

icons.setup({
	-- your personnal icons can go here (to override)
	-- DevIcon will be appended to `name`
	override = material_icon.get_icons(),
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true,
})
