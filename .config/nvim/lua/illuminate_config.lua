--[[
            jacob's neovim configuration
    -- https://git.jacob.site/jacob/jacob-nvim --
]]--

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
})
