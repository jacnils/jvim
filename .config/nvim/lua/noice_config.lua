--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

require('noice').setup({
    routes = {
        {
            filter = { event = "notify", find = "warning: multiple different client offset_encodings" },
            opts = { skip = true },
        },
    },
})
