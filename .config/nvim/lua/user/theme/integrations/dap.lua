local M = {}

function M.set(col16, col30)
    return {
        -- Dap
        DapBreakpoint           = { fg = col30.red },
        DapBreakpointCondition  = { fg = col30.yellow },
        DapLogPoint             = { fg = col30.cyan },
        DapStopped              = { fg = col30.baby_pink },

        -- DapUI
        DAPUIScope          = { fg = col30.cyan },
        DAPUIType           = { fg = col30.dark_purple },
        DAPUIValue          = { fg = col30.cyan },
        DAPUIVariable       = { fg = col30.white },
        DapUIModifiedValue  = { fg = col30.orange },
        DapUIDecoration     = { fg = col30.cyan },
        DapUIThread         = { fg = col30.green },
        DapUIStoppedThread  = { fg = col30.cyan },
        DapUISource         = { fg = col30.lavender },
        DapUILineNumber     = { fg = col30.cyan },
        DapUIFloatBorder    = { fg = col30.cyan },

        DapUIWatchesEmpty = { fg = col30.baby_pink },
        DapUIWatchesValue = { fg = col30.green },
        DapUIWatchesError = { fg = col30.baby_pink },

        DapUIBreakpointsPath            = { fg = col30.cyan },
        DapUIBreakpointsInfo            = { fg = col30.green },
        DapUIBreakPointsCurrentLine     = { fg = col30.green, bold = true },
        DapUIBreakpointsDisabledLine    = { fg = col30.grey_fg2 },

        DapUIStepOver       = { fg = col30.blue },
        DapUIStepOverNC     = { fg = col30.blue },
        DapUIStepInto       = { fg = col30.blue },
        DapUIStepIntoNC     = { fg = col30.blue },
        DapUIStepBack       = { fg = col30.blue },
        DapUIStepBackNC     = { fg = col30.blue },
        DapUIStepOut        = { fg = col30.blue },
        DapUIStepOutNC      = { fg = col30.blue },
        DapUIStop           = { fg = col30.red },
        DapUIStopNC         = { fg = col30.red },
        DapUIPlayPause      = { fg = col30.green },
        DapUIPlayPauseNC    = { fg = col30.green },
        DapUIRestart        = { fg = col30.green },
        DapUIRestartNC      = { fg = col30.green },
        DapUIUnavailable    = { fg = col30.grey_fg },
        DapUIUnavailableNC  = { fg = col30.grey_fg },
    }
end

return M
