local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'
local luasnip = require("luasnip")

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = "luasnip"},
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  },
  window = {
    completion = {
      -- border = border "CmpBorder",
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
    documentation = {
      -- border = border "CmpDocBorder",
    },
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- Add snippets
require("luasnip.loaders.from_vscode").lazy_load()   -- this will load the default paths
require("luasnip.loaders.from_vscode").lazy_load({paths = {"~/.config/nvim/snippets"}})  --this will load yours

-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
