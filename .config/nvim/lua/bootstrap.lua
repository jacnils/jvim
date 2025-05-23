--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local function combineTable(table1,table2)
    for i=1,#table2 do
        table1[#table1+1] = table2[i]
    end
    return table1
end

local lazyOptions = {
    lockfile = lazypath .. '/lazy-lock.json'
}

require('lazy').setup(combineTable(combineTable(Plugins, Themes), lazyOptions))
require('setup')

vim.g.neovide_cursor_animation_length = CursorAnimationLength
vim.g.neovide_scroll_animation_length = ScrollAnimationLength
vim.o.guifont = Font
