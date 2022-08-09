if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
  code_action_prompt = {
    enable = false
  }
}

local highlights = {
  LspSagaDiagnosticBorder = { fg = '#CC6666' },
}

for group, conf in pairs(highlights) do vim.api.nvim_set_hl(0, group, conf) end

EOF

" F8 To jump to errors
nnoremap <silent> <F8> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
"nnoremap <silent> K <Cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

" Shift + F12 to find references
" nnoremap <silent> <S-F12> <Cmd>Lspsaga lsp_finder<CR>

" I use CMD + . for this (iTerm remap)
nnoremap <silent> ;. <Cmd>Lspsaga code_action<CR>

nnoremap <silent> <F12> <Cmd>lua vim.lsp.buf.definition()<CR>

nnoremap <silent> gp <Cmd>Lspsaga preview_definition<CR>

" F2 to rename
nnoremap <silent> <F2> <Cmd>Lspsaga rename<CR>
