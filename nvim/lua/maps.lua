local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Close tab (CMD + W in iTerm)
keymap.set('n', ';q', ':tabclose<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Use escape to get out of terminal mode
keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- CMD + / (iTerm) to comment lines
keymap.set('n', '<Space>/', '<Plug>(comment_toggle_linewise_current)')
keymap.set('v', '<Space>/', '<Plug>(comment_toggle_linewise_visual)')

-- CMD + B (iTerm) to toggle explorer
keymap.set('n', ';n', ':NvimTreeToggle<Return>')

-- Shift + CMD + F (iTerm)
keymap.set('n', ';h', ':lua require(\'spectre\').open_visual()<Return>')
