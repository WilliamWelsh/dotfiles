return {
  "glepnir/lspsaga.nvim",
  config = function()
    require("lspsaga").init_lsp_saga({
      server_filetype_map = {
        typescript = "typescript",
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
    vim.keymap.set("n", ";.", "<Cmd>Lspsaga code_action<CR>", opts)
    vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  end,
}
