local M = {}

function M.set(col16, col30)
    return {
        WhichKey            = { fg = col30.blue },
        WhichKeySeparator   = { fg = col30.light_grey },
        WhichKeyDesc        = { fg = col30.red },
        WhichKeyGroup       = { fg = col30.green },
        WhichKeyValue       = { fg = col30.green },
    }
end

return M
