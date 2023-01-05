local keymap = vim.keymap

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Close tab (CMD + W in iTerm)
keymap.set("n", ";q", ":bdelete<Return>")

-- Split window
keymap.set("n", "gws", ":split<Return><C-w>w")
keymap.set("n", "gwv", ":vsplit<Return><C-w>w")

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "gwh", "<C-w>h")
keymap.set("", "gwk", "<C-w>k")
keymap.set("", "gwj", "<C-w>j")
keymap.set("", "gwl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Use escape to get out of terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- CMD + / (iTerm) to comment lines
-- keymap.set("n", "<Space>/", "<Plug>CommentaryLine")
-- keymap.set("v", "<Space>/", "<Plug>Commentary")

-- CMD + B (iTerm) to toggle explorer
keymap.set("n", ";n", ":NvimTreeToggle<Return>")

-- Shift + CMD + F (iTerm)
keymap.set("n", ";h", ":lua require('spectre').open_visual()<Return>")

-- Greatest remap ever (lol)
keymap.set("v", "<leader>p", '"_dP')

vim.g.mapleader = " "

-- 1 trillion iq remaps to stay centered @theprimeagen
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "{", "{zz", opts)
vim.keymap.set("n", "}", "}zz", opts)
vim.keymap.set("n", "]]", "]]zzzv", opts)

-- Command as meta in apps that support it
vim.g.neovide_input_macos_alt_is_meta = true
keymap.set("n", "<D-s>", "<Esc>:w<Return>")
keymap.set("i", "<D-s>", "<Esc>:w<Return>")
keymap.set("n", "<D-w>", ":bdelete<Return>")
keymap.set("n", "<D-b>", ":NvimTreeToggle<Return>")
keymap.set("n", "<D-.>", "<Cmd>Lspsaga code_action<CR>", opts)
