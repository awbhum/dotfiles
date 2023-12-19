local M = {}

function M.set(col16, col30)
    return {
        Boolean         = { fg = col16.color09 },
        Character       = { fg = col16.color08 },
        Conditional     = { fg = col16.color0E },
        Constant        = { fg = col16.color08 },
        Define          = { fg = col16.color0E, sp = "none" },
        Delimiter       = { fg = col16.color0F },
        Float           = { fg = col16.color09 },
        Variable        = { fg = col16.color05 },
        Function        = { fg = col16.color0D },
        Identifier      = { fg = col16.color08, sp = "none" },
        Include         = { fg = col16.color0D },
        Keyword         = { fg = col16.color0E },
        Label           = { fg = col16.color0A },
        Number          = { fg = col16.color09 },
        Operator        = { fg = col16.color05, sp = "none" },
        PreProc         = { fg = col16.color0A },
        Repeat          = { fg = col16.color0A },
        Special         = { fg = col16.color0C },
        SpecialChar     = { fg = col16.color0F },
        Statement       = { fg = col16.color08 },
        StorageClass    = { fg = col16.color0A },
        String          = { fg = col16.color0B },
        Structure       = { fg = col16.color0E },
        Tag             = { fg = col16.color0A },
        Todo            = { fg = col16.color0A, bg = col16.color01 },
        Type            = { fg = col16.color0A, sp = "none" },
        Typedef         = { fg = col16.color0A },
    }
end

return M
