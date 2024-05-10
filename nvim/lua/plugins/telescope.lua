return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },

    keys = {
        { "<leader>f", ":Telescope find_files<CR>" },
        { "<leader>g", ":Telescope live_grep<CR>" },
    },

    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                layout_config = {
					width = 0.80,
					prompt_position = "top",
					preview_cutoff = 120,
					horizontal = { mirror = false },
					vertical = { mirror = false },
				},
                find_command = {
                    'rg',
                    '--color=never',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case'
                },


                prompt_prefix = "  ",
				selection_caret = "  ",
				entry_prefix = "  ",
				selection_strategy = "closest",
				sorting_strategy = "descending",

            },
            require("telescope").load_extension("fzf")
        })
    end,
}
