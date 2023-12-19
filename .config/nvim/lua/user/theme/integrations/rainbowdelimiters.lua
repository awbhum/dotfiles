local M = {}

function M.set(col16, col30)
    return {
        RainbowDelimiterRed     = { fg = col30.red },
        RainbowDelimiterYellow  = { fg = col30.yellow },
        RainbowDelimiterBlue    = { fg = col30.blue },
        RainbowDelimiterOrange  = { fg = col30.orange },
        RainbowDelimiterGreen   = { fg = col30.green },
        RainbowDelimiterViolet  = { fg = col30.purple },
        RainbowDelimiterCyan    = { fg = col30.cyan },
    }
end

return M
