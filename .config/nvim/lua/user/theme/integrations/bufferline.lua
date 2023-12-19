local M = {}

function M.set(col16, col30)
    return {
        BufferLineBackground                = { fg = col30.light_grey, bg = col30.black2, },

        BufferLineBufferSelected            = { fg = col30.white, bg = col30.black, },
        BufferLineBufferVisible             = { fg = col30.light_grey, bg = col30.black2, },

        BufferLineError                     = { fg = col30.light_grey, bg = col30.black2, },
        BufferLineErrorDiagnostic           = { fg = col30.light_grey, bg = col30.black2, },

        BufferLineCloseButton               = { fg = col30.light_grey, bg = col30.black2, },
        BufferLineCloseButtonVisible        = { fg = col30.light_grey, bg = col30.black2, },
        BufferLineCloseButtonSelected       = { fg = col30.red, bg = col30.black, },

        BufferLineFill                      = { fg = col30.grey_fg, bg = col30.black2, },

        BufferlineIndicatorVisible          = { fg = col30.black2, bg = col30.black2, },
        BufferlineIndicatorSelected         = { fg = col30.black, bg = col30.black, },

        BufferLineModified                  = { fg = col30.red, bg = col30.black2, },
        BufferLineModifiedVisible           = { fg = col30.red, bg = col30.black2, },
        BufferLineModifiedSelected          = { fg = col30.green, bg = col30.black, },

        BufferLineSeparator                 = { fg = col30.black2, bg = col30.black2, },
        BufferLineSeparatorVisible          = { fg = col30.black2, bg = col30.black2, },
        BufferLineSeparatorSelected         = { fg = col30.black2, bg = col30.black2, },

        BufferLineTab                       = { fg = col30.light_grey, bg = col30.one_bg3, },
        BufferLineTabSelected               = { fg = col30.black2, bg = col30.nord_blue, },
        BufferLineTabClose                  = { fg = col30.red, bg = col30.black, },

        BufferLineDevIconDefaultSelected    = { bg = "none", },
        BufferLineDevIconDefaultInactive    = { bg = "none", },

        BufferLineDuplicate                 = { fg = "NONE", bg = col30.black2, },
        BufferLineDuplicateSelected         = { fg = col30.red, bg = col30.black, },
        BufferLineDuplicateVisible          = { fg = col30.blue, bg = col30.black2, },

        BufferLineRightCustomAreaText1      = { fg = col30.white, },
        BufferLineRightCustomAreaText2      = { fg = col30.red, },
    }
end

return M
