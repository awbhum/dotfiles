local M = {}

function M.set(col16, col30)
    return {
        Boolean         = { fg = col16.color09, ctermfg = 4 },
        Character       = { fg = col16.color08, ctermfg = 9 },
        Conditional     = { fg = col16.color0E, ctermfg = 5 },
        Constant        = { fg = col16.color08, ctermfg = 1 },
        Define          = { fg = col16.color0E, ctermfg = 5, sp = "none" },
        Delimiter       = { fg = col16.color0F, ctermfg = 13 },
        Float           = { fg = col16.color09, ctermfg = 12 },
        Variable        = { fg = col16.color05, ctermfg = 7 },
        Function        = { fg = col16.color0D, ctermfg = 4 },
        Identifier      = { fg = col16.color08, ctermfg = 1, sp = "none" },
        Include         = { fg = col16.color0D, ctermfg = 4 },
        Keyword         = { fg = col16.color0E, ctermfg = 5 },
        Label           = { fg = col16.color0A, ctermfg = 3 },
        Number          = { fg = col16.color09, ctermfg = 11 },
        Operator        = { fg = col16.color05, ctermfg = 7, sp = "none" },
        PreProc         = { fg = col16.color0A, ctermfg = 3 },
        Repeat          = { fg = col16.color0A, ctermfg = 3 },
        Special         = { fg = col16.color0C, ctermfg = 6 },
        SpecialChar     = { fg = col16.color0F, ctermfg = 13 },
        Statement       = { fg = col16.color08, ctermfg = 1 },
        StorageClass    = { fg = col16.color0A, ctermfg = 3 },
        String          = { fg = col16.color0B, ctermfg = 2 },
        Structure       = { fg = col16.color0E, ctermfg = 5 },
        Tag             = { fg = col16.color0A, ctermfg = 3 },
        Todo            = { fg = col16.color0A, ctermfg = 3, bg = col16.color01 },
        Type            = { fg = col16.color0A, ctermfg = 11, sp = "none" },
        Typedef         = { fg = col16.color0A, ctermfg = 11 },
    }
end

return M
