--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

require('translate').setup({
    default = {
        output = "insert",
    },
    preset = {
        output = {
            split = {
                append = true,
            },
        },
    },
})
