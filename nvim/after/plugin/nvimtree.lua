local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

local options = {
	filters = {
		dotfiles = false,
	},
	disable_netrw = true,
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
		side = "left",
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
}

vim.g.nvimtree_side = options.view.side

nvimtree.setup(options)

local highlights = {
	NvimTreeFolderIcon = { fg = "#90A4AE" },
	NvimTreeEmptyFolderName = { fg = "#90A4AE" },
	NvimTreeFolderName = { fg = "#90A4AE" },
	NvimTreeOpenedFolderName = { fg = "#90A4AE" },
	NvimTreeWinSeparator = { fg = "#000000" },
	NvimTreeGitDirty = { fg = "#F7CA88" },
	NvimFileGitDirty = { fg = "#F7CA88" },
	NvimTreeFileDirty = { fg = "#F7CA88" },
	NvimTreeGitNew = { fg = "#A1B56C" },
}

for group, conf in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, conf)
end
