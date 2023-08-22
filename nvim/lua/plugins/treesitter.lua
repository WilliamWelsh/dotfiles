return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = true,
    lazy = false,
  },
  -- { "hiphish/rainbow-delimiters.nvim", lazy = false },
  {
    "windwp/nvim-ts-autotag",
    config = true,
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPost",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          use_languagetree = true,
          disable = {},
        },
        indent = {
          enable = true,
          disable = {},
        },
        ensure_installed = { "typescript", "tsx", "fish", "json", "yaml", "css", "html", "lua", "prisma" },
        autotag = {
          enable = true,
        },
        context_commentstring = {
          enable = true,
        },
      })

      -- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      -- vim.treesitter.language.register("javascript", "tsx")
      -- parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

      -- Astro support
      -- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
      -- ft_to_parser.astro = "tsx"
    end,
  },
}
