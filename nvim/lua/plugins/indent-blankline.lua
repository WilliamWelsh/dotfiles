return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  config = function()
    require("indent_blankline").setup({
      char = "│",
      show_trailing_blankline_indent = false,
      show_first_indent_level = true,
      show_current_context = false,
      show_current_context_start = false,
      space_char_blankline = " ",
      use_treesitter = true,
      context_patterns = { "class", "function", "method" },
      filetype_exclude = { "help", "packer", "nvimtree", "dashboard", "neo-tree" },
      buftype_exclude = { "terminal", "nofile", "quickfix" },
    })
  end,
}
