return {
    "hrsh7th/nvim-cmp",

    event = "InsertEnter",

    dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-cmdline",
        "neovim/nvim-lspconfig",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
	},

    config = function()
        local cmp = require('cmp')
        cmp.setup({

            snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
            },

            formatting = {
				format = require('lspkind').cmp_format({ with_text = true, maxwidth = 50 }),
			},

            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ['<C-d>'] = cmp.mapping.confirm({ select = true }),
                ['<C-e>'] = cmp.mapping.close(),
                ['<C-q>'] = cmp.mapping.close(),
            },


            window = {
              completion = cmp.config.window.bordered(),
              documentation = cmp.config.window.bordered(),
            },
        })
    end,
}
