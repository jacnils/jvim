--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

require('colorizer').setup({})

vim.api.nvim_create_autocmd('VimEnter', { -- Save session on exit
    pattern = { '*' },
    callback = function()
        vim.cmd('ColorizerAttachToBuffer')
    end,
})
