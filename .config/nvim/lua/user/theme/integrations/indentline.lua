local M = {}

function M.set(col16, col30)
    return {
        IblChar             = { fg = col30.line },
        IblScope            = { fg = col30.grey_fg2 },
        IblScopeChar        = { fg = col30.grey }, -- first indenline in scope only
        IblScopeFirstLine   = { bg = col30.one_bg2 },
    }
end
return M
