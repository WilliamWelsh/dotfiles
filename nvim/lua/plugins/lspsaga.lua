return {
  "glepnir/lspsaga.nvim",
  event = "BufRead",
  config = function()
    require("lspsaga").setup({
      server_filetype_map = {
        typescript = "typescript",
      },
      ui = {
        -- currently only round theme
        theme = "round",
        -- this option only work in neovim 0.9
        title = true,
        -- border type can be single,double,rounded,solid,shadow.
        border = "solid",
        winblend = 0,
        expand = "",
        collapse = "",
        preview = " ",
        code_action = "💡",
        diagnostic = "🐞",
        incoming = " ",
        outgoing = " ",
        colors = {
          --float window normal background color
          normal_bg = "#1D1F21",
          --title background color
          title_bg = "#afd700",
          red = "#e95678",
          magenta = "#b33076",
          orange = "#FF8700",
          yellow = "#f7bb3b",
          green = "#afd700",
          cyan = "#36d0e0",
          blue = "#61afef",
          purple = "#CBA6F7",
          white = "#d1d4cf",
          black = "#1c1c19",
        },
        kind = {},
      },

      symbol_in_winbar = {
        enable = false,
        separator = " ",
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
        respect_root = false,
        color_mode = true,
      },
    })

    local opts = {
      noremap = true,
      silent = true,
    }

    vim.cmd("highlight! LspSagaCodeActionBorder guibg=NONE guifg=#3F434B")
    vim.cmd("highlight! LspSagaCodeActionContent guibg=NONE guifg=#C4C8C6")
    vim.cmd("highlight! LspSagaCodeActionTitle guibg=NONE guifg=#C4C8C6")
    vim.cmd("highlight! LspSagaCodeActionTrunCateLine guibg=NONE guifg=#3F434B")

    vim.keymap.set("n", "]e", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    vim.keymap.set("n", "[e", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
    vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)

    vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
    vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
    vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
    vim.keymap.set("n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)

    -- I use CMD + . (iTerm)
    vim.keymap.set("n", "'.", "<Cmd>Lspsaga code_action<CR>", opts)
    vim.keymap.set("n", "<C-.>", "<Cmd>Lspsaga code_action<CR>", opts)

    vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  end,
}
