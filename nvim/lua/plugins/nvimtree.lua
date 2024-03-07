return {
	"DaikyXendo/nvim-tree.lua",
	cmd = "NvimTreeToggle",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	config = function()
		vim.cmd("highlight! NvimTreeVertSplit guibg=NONE guifg=#3F434B")

		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
			disable_netrw = false,
			hijack_netrw = true,
			open_on_setup = false,
			ignore_ft_on_setup = { "alpha" },
			hijack_cursor = true,
			hijack_unnamed_buffer_when_opening = false,
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = false,
			},
			view = {
				adaptive_size = true,
				side = "right",
				width = 25,
				hide_root_folder = true,
			},
			git = {
				enable = true,
				ignore = true,
			},
			filesystem_watchers = {
				enable = true,
			},
			actions = {
				open_file = {
					resize_window = true,
				},
			},
			renderer = {
				highlight_git = true,
				highlight_opened_files = "none",

				indent_markers = {
					enable = false,
				},

				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},

					glyphs = {
						default = "",
						symlink = "",
						bookmark = "",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "●",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "U",
							deleted = "✗",
							ignored = "◌",
						},
					},
				},

				special_files = {},
			},
		})
	end,
}
