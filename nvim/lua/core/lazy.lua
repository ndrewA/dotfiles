local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--depth=1",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local installed, lazy = pcall(require, "lazy")
if not installed then
    return
end

lazy.setup(
    {
        { import = "plugins" },
    },

    {
        checker = {
            enabled = true,
            notify = false,
        },
        change_detection = {
            notify = false,
        },

        ui = {
            border = "rounded",
        },
    }
)
