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

    local telescope_mappings = {
      { "<Leader>fg", builtin.live_grep },
      { "<Leader>fb", builtin.buffers },
      { "<Leader>fj", builtin.jumplist },
      { "<Leader>fe", builtin.diagnostics },
      { "<Leader>fs", builtin.lsp_document_symbols },
      {
        "<Leader>ff",
        function()
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
      },
      { "<Leader>fr", builtin.lsp_references },
    }

    for _, mapping in ipairs(telescope_mappings) do
      local key, func = mapping[1], mapping[2]
      vim.keymap.set("n", key, func)
    end

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
    require("telescope").load_extension("emoji")
    -- require("telescope").load_extension("apple_music")
    vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
  end,
}
