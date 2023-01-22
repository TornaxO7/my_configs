return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind-nvim",
        "lukas-reineke/cmp-rg",
        "L3MON4D3/LuaSnip",
    },
    init = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")
        local luasnip = require("luasnip")
        local has_words_before = function()
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and
                       vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col,
                                                                                  col)
                           :match("%s") == nil
        end
        cmp.setup({
            preselect = cmp.PreselectMode.None,
            snippet = {
                expand = function(args) require('luasnip').lsp_expand(args.body) end
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = {
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-c>'] = cmp.mapping.close(),
                ['<CR>'] = cmp.mapping.confirm({select = false}),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                      luasnip.expand_or_jump()
                    elseif has_words_before() then
                      cmp.complete()
                    else
                      fallback()
                    end
                end, {"i", "s"}),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                      luasnip.jump(-1)
                    else
                      fallback()
                    end
                end, { "i", "s" }),
            },
            formatting = {
                format = lspkind.cmp_format({
                    with_text = false,
                    maxwidth = 50,
        
                    -- The function below will be called before any actual modifications from lspkind
                    -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                    before = function(entry, vim_item) return vim_item end
                })
            },
            sources = cmp.config.sources({
                -- {name = "rg",                      prority  = 8},
                {name = 'nvim_lsp',                priority = 10},
                {name = 'path',                    priority = 1},
                -- {name = 'buffer',                  priority = 2},
                {name = 'luasnip',                 priority = 3},
                -- {name = "dab",                     priority = 100}
            }),
        })
    end,
}
