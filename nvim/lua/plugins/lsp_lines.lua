return {
  "whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  config = function()
    vim.diagnostic.config({
      virtual_text = true,
      virtual_lines = false,
    })
    require("lsp_lines").setup()
  end,
  url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
}
