return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		"gbrlsnchs/telescope-lsp-handlers.nvim",
		"debugloop/telescope-undo.nvim",
	},
	keys = { "<leader>f", "<leader>u" },
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<Leader>ff", function()
			builtin.find_files({
				no_ignore = false,
				hidden = true,
			})
		end)

		vim.keymap.set("n", "<Leader>fr", function()
			builtin.lsp_references()
		end)

		vim.keymap.set("n", ";f", function()
			builtin.find_files({
				no_ignore = false,
				hidden = true,
			})
		end)

		vim.keymap.set("n", "<Leader>fg", function()
			builtin.live_grep()
		end)

		vim.keymap.set("n", "<Leader>fb", function()
			builtin.buffers()
		end)

		vim.keymap.set("n", "<Leader>fj", function()
			builtin.jumplist()
		end)

		vim.keymap.set("n", "<Leader>fe", function()
			builtin.diagnostics()
		end)

		vim.keymap.set("n", "<Leader>fs", function()
			builtin.lsp_document_symbols()
		end)

		require("telescope").setup({
			defaults = {
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
				prompt_prefix = "   ",
				selection_caret = "  ",
				entry_prefix = "  ",
				initial_mode = "insert",
				selection_strategy = "reset",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},
				file_sorter = require("telescope.sorters").get_fuzzy_file,
				file_ignore_patterns = { "node_modules" },
				generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
				path_display = { "truncate" },
				winblend = 0,
				border = {},
				borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				color_devicons = true,
				set_env = {
					["COLORTERM"] = "truecolor",
				}, -- default = nil,
				file_previewer = require("telescope.previewers").vim_buffer_cat.new,
				grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
				qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
				buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
				mappings = {
					n = {
						["q"] = actions.close,
					},
					i = {
						["<c-j>"] = actions.move_selection_next,
						["<c-k>"] = actions.move_selection_previous,
						["<esc>"] = actions.close,
					},
				},
			},
			extensions = {
				undo = {
					side_by_side = true,
					mappings = {
						i = {
							["<cr>"] = require("telescope-undo.actions").yank_additions,
							["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
							["<C-cr>"] = require("telescope-undo.actions").restore,
						},
					},
				},
			},
		})

		require("telescope").load_extension("undo")
		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
