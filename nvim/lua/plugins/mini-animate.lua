return {
  "echasnovski/mini.animate",
  config = function()
    vim.cmd("highlight! MiniAnimateCursor guibg=#FFFFFF guifg=#FFFFFF")
    local animate = require("mini.animate")

    animate.setup({
      scroll = {
        enable = false,
        timing = animate.gen_timing.linear({ duration = 1, unit = "total" }),
        path = animate.gen_path.line({
          predicate = function()
            return true
          end,
        }),
      },
      open = {
        enable = false,
      },
      close = { enable = false },
    })
  end,
  lazy = false,
}
