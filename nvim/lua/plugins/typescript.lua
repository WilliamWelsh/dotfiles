return {
	"jose-elias-alvarez/typescript.nvim",
	ft = { "typescript", "typescriptreact" },
	config = function()
		-- Organize Imports command (remove unused imports)
		-- The plugin one kinda sux
		local function organize_imports()
			local params = {
				command = "_typescript.organizeImports",
				arguments = { vim.api.nvim_buf_get_name(0) },
				title = "",
			}
			vim.lsp.buf.execute_command(params)
		end

		require("typescript").setup({
			disable_commands = false,
			debug = false, -- enable debug logging for commands
			go_to_source_definition = {
				fallback = true,
			},
			server = { -- pass options to lspconfig's setup method
				on_attach = function(client, bufnr)
					local ih = require("lsp-inlayhints")

					ih.on_attach(client, bufnr, false)

					if client.server_capabilities.colorProvider then
						-- Attach document color support
						require("document-color").buf_attach(bufnr)
					end
				end,
				filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
				capabilities = require("cmp_nvim_lsp").default_capabilities(
					vim.lsp.protocol.make_client_capabilities()
				),
				commands = {
					OrganizeImports = {
						organize_imports,
						description = "Organize Imports",
					},
				},
				cmd = { "typescript-language-server", "--stdio" },
				-- Thank u MagicDuck
				-- https://github.com/MagicDuck/dotfiles/blob/master/.config/nvim/lua/my/plugins/lsp/tsserver.lua#L51
				-- Gets rid of duplicate diagnostics
				-- handlers = {
				-- 	["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
				-- 		result.diagnostics = vim.tbl_filter(function(diagnostic)
				-- 			return vim.tbl_contains({
				-- 			}, diagnostic.code)
				-- 		end, result.diagnostics)
				-- 		return vim.lsp.handlers["textDocument/publishDiagnostics"](nil, result, ctx, config)
				-- 	end,
				-- },
				settings = {
					javascript = {
						inlayHints = {
							includeInlayEnumMemberValueHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
							includeInlayParameterNameHintsWhenArgumentMatchesName = true,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayVariableTypeHints = true,
						},
					},
					typescript = {
						inlayHints = {
							includeInlayEnumMemberValueHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
							includeInlayParameterNameHintsWhenArgumentMatchesName = true,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayVariableTypeHints = true,
						},
					},
				},
			},
		})
	end,
}
