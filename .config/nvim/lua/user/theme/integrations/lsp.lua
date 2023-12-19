local M = {}

function M.set(col16, col30)
    return {
        -- LSP References
        LspReferenceText    = { fg = col30.darker_black, bg = col30.white },
        LspReferenceRead    = { fg = col30.darker_black, bg = col30.white },
        LspReferenceWrite   = { fg = col30.darker_black, bg = col30.white },

        -- Lsp Diagnostics
        DiagnosticHint              = { fg = col30.purple },
        DiagnosticError             = { fg = col30.red },
        DiagnosticWarn              = { fg = col30.yellow },
        DiagnosticInformation       = { fg = col30.green },
        LspSignatureActiveParameter = { fg = col30.black, bg = col30.green },

        RenamerTitle    = { fg = col30.black, bg = col30.red },
        RenamerBorder   = { fg = col30.red },
    }
end

return M
