return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local nvim_lsp = require("lspconfig")

		local protocol = require("vim.lsp.protocol")

		local ih = require("lsp-inlayhints")

		local util = require("lspconfig/util")

		-- Use an on_attach function to only map the following keys
		-- after the language server attaches to the current buffer
		local on_attach = function(client, bufnr)
			ih.on_attach(client, bufnr, false)
			-- local function buf_set_keymap(...)
			-- 	vim.api.nvim_buf_set_keymap(bufnr, ...)
			-- end

			-- local function buf_set_option(...)
			--   vim.api.nvim_buf_set_option(bufnr, ...)
			-- end

			-- Enable completion triggered by <c-x><c-o>
			-- buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

			-- Mappings.
			-- local opts = {
			-- 	noremap = true,
			-- 	silent = true,
			-- }

			-- Signature help
			-- require("lsp_signature").on_attach(signature_setup, bufnr)

			if client.server_capabilities.colorProvider then
				-- Attach document color support
				require("document-color").buf_attach(bufnr)
			end
		end

		protocol.CompletionItemKind = {
			"", -- Text
			"", -- Method
			"", -- Function
			"", -- Constructor
			"", -- Field
			"", -- Variable
			"", -- Class
			"ﰮ", -- Interface
			"", -- Module
			"", -- Property
			"", -- Unit
			"", -- Value
			"", -- Enum
			"", -- Keyword
			"﬌", -- Snippet
			"", -- Color
			"", -- File
			"", -- Reference
			"", -- Folder
			"", -- EnumMember
			"", -- Constant
			"", -- Struct
			"", -- Event
			"ﬦ", -- Operator
			"", -- TypeParameter
		}

		-- Set up completion using nvim_cmp with LSP source
		local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

		capabilities.textDocument.colorProvider = {
			dynamicRegistration = true,
		}

		-- Organize Imports command (remove unused imports)
		-- local function organize_imports()
		--   local params = {
		--     command = "_typescript.organizeImports",
		--     arguments = { vim.api.nvim_buf_get_name(0) },
		--     title = "",
		--   }
		--   vim.lsp.buf.execute_command(params)
		-- end

		-- TS Server is handled by typescript.nvim plugin
		-- nvim_lsp.tsserver.setup({
		--   on_attach = on_attach,
		--   filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
		--   capabilities = capabilities,
		--   cmd = { "typescript-language-server", "--stdio" },
		--   commands = {
		--     OrganizeImports = {
		--       organize_imports,
		--       description = "Organize Imports",
		--     },
		--   },
		--   -- Thank u MagicDuck
		--   -- https://github.com/MagicDuck/dotfiles/blob/master/.config/nvim/lua/my/plugins/lsp/tsserver.lua#L51
		--   -- Gets rid of duplicate diagnostics
		--   handlers = {
		--     ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
		--       result.diagnostics = vim.tbl_filter(function(diagnostic)
		--         return vim.tbl_contains({
		--           -- allow name not found diagnostics
		--           2304,
		--         }, diagnostic.code)
		--       end, result.diagnostics)
		--       return vim.lsp.handlers["textDocument/publishDiagnostics"](nil, result, ctx, config)
		--     end,
		--   },
		--   settings = {
		--     javascript = {
		--       inlayHints = {
		--         includeInlayEnumMemberValueHints = true,
		--         includeInlayFunctionLikeReturnTypeHints = true,
		--         includeInlayFunctionParameterTypeHints = true,
		--         includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
		--         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
		--         includeInlayPropertyDeclarationTypeHints = true,
		--         includeInlayVariableTypeHints = true,
		--       },
		--     },
		--     typescript = {
		--       inlayHints = {
		--         includeInlayEnumMemberValueHints = true,
		--         includeInlayFunctionLikeReturnTypeHints = true,
		--         includeInlayFunctionParameterTypeHints = true,
		--         includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
		--         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
		--         includeInlayPropertyDeclarationTypeHints = true,
		--         includeInlayVariableTypeHints = true,
		--       },
		--     },
		--   },
		-- })

		nvim_lsp.eslint.setup({
			on_attach = on_attach,
			filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
			capabilities = capabilities,
		})

		nvim_lsp.astro.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			configuration = {},
			typescript = {
				serverPath = "",
			},
		})

		nvim_lsp.sourcekit.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		nvim_lsp.zls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		nvim_lsp.clangd.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		nvim_lsp.pyright.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		nvim_lsp.csharp_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		nvim_lsp.lua_ls.setup({
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { "vim" },
					},

					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
				},
			},
		})

		nvim_lsp.tailwindcss.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		-- nvim_lsp.omnisharp.setup({
		-- 	on_attach = on_attach,
		-- 	capabilities = capabilities,
		-- 	handlers = {
		-- 		["textDocument/definition"] = require("omnisharp_extended").handler,
		-- 	},
		-- 	cmd = {
		-- 		"/Users/william/.local/omnisharp/run",
		-- 		"--languageserver",
		-- 		"--hostPID",
		-- 		tostring(vim.fn.getpid()),
		-- 	},
		-- })

		nvim_lsp.gopls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "gopls" },
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
			settings = {
				gopls = {
					gofumpt = true,
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						usePlaceholders = true,
					},
				},
			},
			flags = {
				debounce_text_changes = 150,
			},
			root_dir = util.root_pattern("go.mod", "go.work", ".git"),
		})

		nvim_lsp.golangci_lint_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				gopls = {
					gofumpt = true,
				},
			},
			flags = {
				debounce_text_changes = 150,
			},
		})

		nvim_lsp.prismals.setup({})

		nvim_lsp.rust_analyzer.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, ...)
			local client = vim.lsp.get_client_by_id(ctx.client_id)

			if client and client.name == "tsserver" then
				result.diagnostics = vim.tbl_filter(function(diagnostic)
					-- use whatever condition you want to filter diagnostics
					return not diagnostic.message:find("is declared but its value is never read")
				end, result.diagnostics)

				-- Apply diagnostic formatting options from the first code block
				vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
					underline = true,
					update_in_insert = false,
					virtual_text = {
						spacing = 4,
						prefix = "",
					},
					severity_sort = true,
				})(nil, result, ctx, ...)
			end

			return vim.lsp.diagnostic.on_publish_diagnostics(nil, result, ctx, ...)
		end

		-- Diagnostic symbols in the sign column (gutter)
		local signs = {
			Error = " ",
			Warn = " ",
			Hint = " ",
			Info = " ",
		}
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, {
				text = icon,
				texthl = hl,
				numhl = "",
			})
		end

		vim.diagnostic.config({
			virtual_text = {
				prefix = "",
			},
			signs = {
				active = signs,
			},
			update_in_insert = true,
			float = {
				source = "always", -- Or "if_many"
			},
		})
	end,
}
