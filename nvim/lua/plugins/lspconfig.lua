return {
    "neovim/nvim-lspconfig",

	event = { "BufReadPre", "BufNewFile" },

    config = function()
        require'lspconfig'.clangd.setup{
            cmd = {
                "clangd",
                "--background-index",
                "--log=error",
            },

            init_options = {
                clangdFileStatus = true,
                clangTidy = true,
                clangTidyChecks = "-*,modernize-*",
                fallbackFlags = { "-std=c++20" }
            },
        }

        require'lspconfig'.lua_ls.setup {
            on_init = function(client)
            local path = client.workspace_folders[1].name
            if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
                client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        workspace = {
                            checkThirdParty = false,
                            library = {
                              vim.env.VIMRUNTIME,
                            }
                        },
                    }
                })
                client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })

                end
                return true
            end,
        }

        -- custom diagnostic symbols
        local signs = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
            { name = "DiagnosticSignHint", text = "" },
        }

        for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { text = sign.text, texthl = sign.name })
        end

        vim.diagnostic.config({
            virtual_text = false,
            signs = true,

            float = {
                    source = "always",
                    border = "rounded",
                    focusable = false,
                    style = "minimal",
                    header = "",
                    prefix = "",
            },
        })

        vim.o.updatetime = 250

        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap

        -- Key mappings for LSP
        keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts) -- go to definition
        keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts) -- go to declaration
        keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts) -- find references
        keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts) -- go to implementation
        keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts) -- show hover
        keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts) -- rename symbol
        keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- code action
    end,
}
