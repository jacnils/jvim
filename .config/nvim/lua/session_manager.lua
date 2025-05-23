--[[
            jacob's neovim configuration
    -- https://github.com/jacnils/jacob-nvim --
]]--

-- Hardcoded because I doubt anyone cares to change this.
SessionFile = vim.fn.stdpath('data') .. '/.session_file.nvim'

if LoadPreviousSessionOnLoad and SessionFile ~= '' then
    vim.api.nvim_create_autocmd('VimEnter', { -- Restore session on load
        pattern = { '*' },
        callback = function()
            local _sessionFile = vim.fn.expand(SessionFile)
            if vim.fn.argc() == 0 then
                if vim.fn.filereadable(_sessionFile) == 1 then
                    vim.cmd('silent source ' .. _sessionFile)
                    vim.cmd("silent filetype detect")
                end
            end
        end,
    })
    vim.api.nvim_create_autocmd('VimLeave', { -- Save session on exit
        pattern = { '*' },
        callback = function()
            local _sessionFile = vim.fn.expand(SessionFile)
            vim.cmd('mksession! ' .. _sessionFile)
        end,
    })
end
