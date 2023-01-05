return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	config = function()
		local lspkind = require("lspkind")
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
				},
				{
					name = "buffer",
				},
				{
					name = "luasnip",
				},
			}),
			formatting = {
				format = lspkind.cmp_format({
					with_text = false,
					maxwidth = 50,
				}),
			},
			window = {
				completion = {
					-- border = border "CmpBorder",
					winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
				},
				documentation = {
					-- border = border "CmpDocBorder",
				},
			},
		})

		vim.cmd([[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]])

		-- Add snippets
		require("luasnip.loaders.from_vscode").lazy_load() -- this will load the default paths
		require("luasnip.loaders.from_vscode").lazy_load({
			paths = { "~/.config/nvim/snippets" },
		}) -- this will load yours
	end,
}