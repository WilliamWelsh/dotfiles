return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        local status, blankline = pcall(require, "indent-blankline")
        if not status then
            return
        end

        blankline.setup({
            indentLine_enabled = 1,
            filetype_exclude = {"help", "terminal", "alpha", "packer", "lspinfo", "TelescopePrompt", "TelescopeResults",
                                "mason", ""},
            buftype_exclude = {"terminal"},
            show_trailing_blankline_indent = false,
            show_first_indent_level = false,
            show_current_context = true,
            show_current_context_start = true,
            space_char_blankline = " "
        })

        vim.cmd("highlight IndentBlanklineContextStart guisp=#F5C2E7 gui=underline")

    end
}
