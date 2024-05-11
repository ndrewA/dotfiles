return {
    "nvim-lualine/lualine.nvim",
    dependecies = "lushwal",
    lazy = false,
    config = function()
        require('lualine').setup {
            options = {
                section_separators = "",
                component_separators = "",
                always_divide_middle = true,
                globalstatus = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'diagnostics'},
                lualine_c = {{'filename', path = 1}},
                lualine_x = {''},
                lualine_y = {''},
                lualine_z = {'filetype'},
            }
        }
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    event = "VimEnter",
}
