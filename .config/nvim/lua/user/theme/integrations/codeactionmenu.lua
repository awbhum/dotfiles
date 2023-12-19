local M = {}

function M.set(col16, col30)
    return {
        CodeActionMenuWarningMessageText    = { fg = col30.white },
        CodeActionMenuWarningMessageBorder  = { fg = col30.red },
        CodeActionMenuMenuIndex             = { fg = col30.blue },
        CodeActionMenuMenuKind              = { fg = col30.green },
        CodeActionMenuMenuTitle             = { fg = col30.white },
        CodeActionMenuMenuDisabled          = { link = "Comment" },
        CodeActionMenuMenuSelection         = { fg = col30.blue },
        CodeActionMenuDetailsTitle          = { fg = col30.white },
        CodeActionMenuDetailsLabel          = { fg = col30.yellow },
        CodeActionMenuDetailsPreferred      = { fg = col30.green },
        CodeActionMenuDetailsDisabled       = { link = "Comment" },
        CodeActionMenuDetailsUndefined      = { link = "Comment" },
    }
end

return M
