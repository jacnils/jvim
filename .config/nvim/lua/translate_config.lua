--[[
            jacob's neovim configuration
    -- https://git.jacob.site/jacob/jacob-nvim --
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
