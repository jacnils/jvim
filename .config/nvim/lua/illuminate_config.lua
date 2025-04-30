--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
})
