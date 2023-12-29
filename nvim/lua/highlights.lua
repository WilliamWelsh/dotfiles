vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 0
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.transparency = 0.8

vim.api.nvim_set_hl(0, "WinSeparator", {
  bg = "NONE",
  fg = "#3F434B",
})

local hl_groups = {
  -- Safe
  "Normal",
  "SignColumn",
  "CursorLineNr",
  "CursorLine",

  -- Bad bois
  "NormalNC",

  -- Unknown
  "NonText",
  "Folded",
  "SpecialKey",
  "VertSplit",
  "LineNr",
  "NonText",
  "EndOfBuffer",
  "TabLineFill",

  -- Zen Plugin
  "ZenBg",
}

for _, hl_group in ipairs(hl_groups) do
  vim.api.nvim_set_hl(0, hl_group, {
    bg = "NONE",
  })
end

vim.api.nvim_set_hl(0, "HighlightUndo", {
  bg = "red",
})

vim.api.nvim_set_hl(0, "GitSignsAdd", {
  bg = "NONE",
  fg = "#348c37",
})

vim.api.nvim_set_hl(0, "GitSignsDelete", {
  bg = "NONE",
  fg = "red",
})

vim.api.nvim_set_hl(0, "GitSignsChange", {
  bg = "NONE",
  fg = "#DE935F",
})
