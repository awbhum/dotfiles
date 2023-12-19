local M = {}

function M.set(col16, col30)
    return {
        TroubleCount            = { fg = col30.pink },
        TroubleCode             = { fg = col30.white },
        TroubleWarning          = { fg = col30.orange },
        TroubleSignWarning      = { link = "DiagnosticWarn" },
        TroubleTextWarning      = { fg = col30.white },
        TroublePreview          = { fg = col30.red },
        TroubleSource           = { fg = col30.cyan },
        TroubleSignHint         = { link = "DiagnosticHint" },
        TroubleTextHint         = { fg = col30.white },
        TroubleHint             = { fg = col30.orange },
        TroubleSignOther        = { link = "DiagnosticNormal" },
        TroubleSignInformation  = { fg = col30.white },
        TroubleTextInformation  = { fg = col30.white },
        TroubleInformation      = { fg = col30.white },
        TroubleError            = { fg = col30.red },
        TroubleTextError        = { fg = col30.white },
        TroubleSignError        = { link = "DiagnosticError" },
        TroubleText             = { fg = col30.white },
        TroubleFile             = { fg = col30.yellow },
        TroubleFoldIcon         = { link = "Folded" },
        TroubleNormal           = { fg = col30.white },
        TroubleLocation         = { fg = col30.red },
        TroubleIndent           = { link = col30.Comment },
    }
end

return M
