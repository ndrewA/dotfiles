return {
    "oncomouse/lushwal.nvim",
    name = "lushwal",
    lazy = false,
    cmd = "LushwalCompile",
    dependencies = {
        { "rktjmp/lush.nvim" },
        { "rktjmp/shipwright.nvim" },
    },

    config = function ()
        vim.cmd("colorscheme lushwal")
        vim.g.lushwal_configuration = {
            addons = {
                lualine = true,
            }
        }
    end
}
