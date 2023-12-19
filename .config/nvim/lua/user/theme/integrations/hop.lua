local M = {}

function M.set(col16, col30)
    return {
        HopNextKey  = { fg = col30.red, bold = true },
        HopNextKey1 = { fg = col30.cyan, bold = true },
        HopNextKey2 = { fg = col30.blue, bold = true },
    }
end

return M
