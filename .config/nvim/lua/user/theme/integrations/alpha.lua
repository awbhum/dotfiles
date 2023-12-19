local M = {}

function M.set(col16, col30)
    return {
        AlphaHeader =   { fg = col30.grey_fg },
        AlphaButtons =  { fg = col30.light_grey },
    }
end

return M
