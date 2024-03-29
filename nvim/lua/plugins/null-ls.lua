return {
	"nvimtools/none-ls.nvim",
	event = "VeryLazy",
	config = function()
		local augroup_format = vim.api.nvim_create_augroup("Format", {
			clear = true,
		})

		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.prettierd.with({
					filetypes = {
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"tsx",
						"vue",
						"css",
						"scss",
						"less",
						"html",
						"json",
						"jsonc",
						"yaml",
						"markdown",
						"markdown.mdx",
						"graphql",
						"prisma",
						"astro",
					},
				}),
				null_ls.builtins.formatting.rustfmt,
				-- null_ls.builtins.diagnostics.fish,
				null_ls.builtins.formatting.stylua,

				null_ls.builtins.formatting.csharpier,

				null_ls.builtins.formatting.zigfmt,

				-- Python
				null_ls.builtins.formatting.black,

				-- Gradle
				-- null_ls.builtins.formatting.npm_groovy_lint,
				-- null_ls.builtins.diagnostics.npm_groovy_lint,

				-- Go
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,

				-- Swift
				null_ls.builtins.formatting.swiftlint.with({ filetypes = { "swift" } }),
			},
			on_attach = function(client, bufnr)
				if client.server_capabilities.documentFormattingProvider then
					vim.api.nvim_clear_autocmds({
						buffer = 0,
						group = augroup_format,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup_format,
						buffer = 0,
						callback = function()
							vim.lsp.buf.format()
						end,
					})
				end
			end,
		})
	end,
}
