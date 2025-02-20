--[[
            jacob's neovim configuration
    -- https://git.jacob.site/jacob/jacob-nvim --
]]--

local highlight = {
    "CursorColumn",
    "Whitespace",
}
require("ibl").setup {
    indent = { highlight = highlight, char = "▏" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
