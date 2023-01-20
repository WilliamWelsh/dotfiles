return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	config = function()
		local lspkind = require("lspkind")

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

		vim.cmd("highlight! CmpBorder guibg=NONE guifg=#3F434B")
		vim.cmd("highlight! CmpDocBorder guibg=NONE guifg=#3F434B")
		vim.cmd([[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]])

		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
			}),
			sources = cmp.config.sources({
				{
					name = "nvim_lsp",
				}, -- {
				--   name = "buffer",
				-- },
				{
					name = "luasnip",
				},
			}),
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = lspkind.cmp_format({
					with_text = true,
					mode = "symbol_text", -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
					maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
					menu = { -- showing type in menu
						nvim_lsp = "[LSP]",
						path = "[Path]",
						buffer = "[Buffer]",
						luasnip = "[LuaSnip]",
					},
					before = function(entry, vim_item) -- for tailwind css autocomplete
						if vim_item.kind == "Color" and entry.completion_item.documentation then
							local _, _, r, g, b =
								string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
							if r then
								local color = string.format("%02x", r)
									.. string.format("%02x", g)
									.. string.format("%02x", b)
								local group = "Tw_" .. color
								if vim.fn.hlID(group) < 1 then
									vim.api.nvim_set_hl(0, group, { fg = "#" .. color })
								end
								vim_item.kind = "■" -- or "⬤" or anything
								vim_item.kind_hl_group = group
								return vim_item
							end
						end
						-- vim_item.kind = icons[vim_item.kind] and (icons[vim_item.kind] .. vim_item.kind) or vim_item.kind
						-- or just show the icon
						vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind)
							or vim_item.kind
						return vim_item
					end,
				}),
			},
			window = {
				completion = {
					border = border("CmpBorder"),
					winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
					col_offset = -3, -- align the abbr and word on cursor (due to fields order below)
				},
				documentation = {
					border = border("CmpDocBorder"),
				},
			},
		})

		-- Add snippets
		require("luasnip.loaders.from_vscode").lazy_load() -- this will load the default paths
		require("luasnip.loaders.from_vscode").lazy_load({
			paths = { "~/.config/nvim/snippets" },
		})
	end,
}
