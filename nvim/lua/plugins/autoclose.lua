return {
    "m4xshen/autoclose.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("autoclose").setup({
            keys = {
                ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
            },
            options = {
                disabled_filetypes = { "text", "markdown" },
                disable_when_touch = true,
                touch_regex = "[%w(%[{]",
                pair_spaces = false,
                auto_indent = true,
                disable_command_mode = false,
            },
        })
    end,
}
