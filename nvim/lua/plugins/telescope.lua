return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-telescope/telescope-file-browser.nvim", "gbrlsnchs/telescope-lsp-handlers.nvim" },
	keys = {
		{
			"<Leader>ff",
			function()
				require("telescope.builtin").find_files({
					no_ignore = false,
					hidden = true,
				})
			end,
		},
		{
			"<Leader>fr",
			function()
				require("telescope.builtin").find_references()
			end,
		},
		{
			"<Leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
		},
		{
			"<Leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
		},
		{
			"<Leader>fj",
			function()
				require("telescope.builtin").jumplist()
			end,
		},
		{
			"<Leader>fs",
			function()
				require("telescope.builtin").lsp_document_symbols()
			end,
		},
		{
			"<Leader>fe",
			function()
				require("telescope.builtin").diagnostics()
			end,
		},
	},
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		local function telescope_buffer_dir()
			return vim.fn.expand("%:p:h")
		end

		local fb_actions = require("telescope").extensions.file_browser.actions

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
				-- Developer configurations: Not meant for general override
				buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
				mappings = {
					n = {
						["q"] = actions.close,
					},
				},
			},
		})
	end,
}
