local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<F8>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<F2>', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', ';.', '<Cmd>Lspsaga code_action<CR>', opts)

-- Floating terminal commands
vim.keymap.set("n", "<C-`>", "<cmd>Lspsaga open_floaterm fish<CR>", { silent = true })
vim.keymap.set("t", "<C-`>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })
