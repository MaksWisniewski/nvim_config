return {
    'lervag/vimtex',
    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            -- {
            --    'rafamadriz/friendly-snippets',
            --    config = function()
            --       require("luasnip.loaders.from_vscode").lazy_load()
            --    end
            -- },
            'nvim-cmp',
        },
        lazy = true,
        opts = {
            history = true,
            delete_check_events = "TextChanged",
        },
    }
}