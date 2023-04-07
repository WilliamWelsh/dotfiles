return {
  "ggandor/leap.nvim",
  keys = { "s", "S", "gs" },
  config = function()
    require("leap").add_default_mappings()
  end,
}
