local M = {}

function M.set(col16, col30)
    return {
        NotifyERRORBorder   = { fg = col30.red },
        NotifyERRORIcon     = { fg = col30.red },
        NotifyERRORTitle    = { fg = col30.red },
        NotifyWARNBorder    = { fg = col30.orange },
        NotifyWARNIcon      = { fg = col30.orange },
        NotifyWARNTitle     = { fg = col30.orange },
        NotifyINFOBorder    = { fg = col30.green },
        NotifyINFOIcon      = { fg = col30.green },
        NotifyINFOTitle     = { fg = col30.green },
        NotifyDEBUGBorder   = { fg = col30.grey },
        NotifyDEBUGIcon     = { fg = col30.grey },
        NotifyDEBUGTitle    = { fg = col30.grey },
        NotifyTRACEBorder   = { fg = col30.purple },
        NotifyTRACEIcon     = { fg = col30.purple },
        NotifyTRACETitle    = { fg = col30.purple },
    }
end

return M
