return {
    'nvim-treesitter/nvim-treesitter-context',
    init = function()
        local bg = require "gruvbox".palette.dark1 or "#111111"
        vim.cmd("hi TreesitterContext guibg=" .. bg)
    end,
}
