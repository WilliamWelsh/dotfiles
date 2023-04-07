return {
  "rmagatti/alternate-toggler",
  event = { "BufReadPost" }, -- lazy load after reading a buffer
  config = function()
    require("alternate-toggler").setup({
      alternates = {
        ["=="] = "!=",
        ["!="] = "==",
        ["&&"] = "||",
        ["||"] = "&&",
      },
    })

    vim.keymap.set(
      "n",
      "<leader><space>", -- <space><space>
      "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>"
    )
  end,
}
