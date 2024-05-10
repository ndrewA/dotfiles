return {
    "folke/trouble.nvim",

	event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("trouble").setup{
            height = 10,
            icons = true,
            mode = "workspace_diagnostics",
            fold_open = "",
            fold_closed = "",
            action_keys = {
                close = "q",
                cancel = "<esc>",
                refresh = "r",
                jump = {"<cr>", "<tab>"},
                jump_close = {"o"},
                toggle_mode = "m",
                toggle_preview = "P",
                hover = "K",
                preview = "p",
                close_folds = {"zM", "zm"},
                open_folds = {"zR", "zr"},
                toggle_fold = {"zA", "za"},
                previous = "k",
                next = "j"
            },
            indent_lines = true,
            auto_open = false,
            auto_close = true,
            auto_preview = true,
            auto_fold = false,
            use_diagnostic_signs = true
        }

        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap
        keymap('n', '<C-s>e', ':Trouble<CR>', opts)
        keymap('n', '<C-c>e', ':TroubleClose<CR>', opts)
    end,
    cmd = {"Trouble", "TroubleClose"},
    requires = "kyazdani42/nvim-web-devicons"
}
