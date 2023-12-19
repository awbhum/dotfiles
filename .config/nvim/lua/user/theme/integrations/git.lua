local M = {}

function M.set(col16, col30)
    return {
        -- diff
        diffOldFile         = { fg = col30.baby_pink, },
        diffNewFile         = { fg = col30.blue, },
        DiffAdd             = { fg = col30.blue, },
        DiffAdded           = { fg = col30.green, },
        DiffChange          = { fg = col30.light_grey, },
        DiffChangeDelete    = { fg = col30.red, },
        DiffModified        = { fg = col30.orange, },
        DiffDelete          = { fg = col30.red, },
        DiffRemoved         = { fg = col30.red, },
        DiffText            = { fg = col30.white, bg = col30.black2, },

        -- git commits
        gitcommitOverflow       = { fg = col16.color08, },
        gitcommitSummary        = { fg = col16.color0B, },
        gitcommitComment        = { fg = col16.color03, },
        gitcommitUntracked      = { fg = col16.color03, },
        gitcommitDiscarded      = { fg = col16.color03, },
        gitcommitSelected       = { fg = col16.color03, },
        gitcommitHeader         = { fg = col16.color0E, },
        gitcommitSelectedType   = { fg = col16.color0D, },
        gitcommitUnmergedType   = { fg = col16.color0D, },
        gitcommitDiscardedType  = { fg = col16.color0D, },
        gitcommitBranch         = { fg = col16.color09, bold = true, },
        gitcommitUntrackedFile  = { fg = col16.color0A, },
        gitcommitUnmergedFile   = { fg = col16.color08, bold = true, },
        gitcommitDiscardedFile  = { fg = col16.color08, bold = true, },
        gitcommitSelectedFile   = { fg = col16.color0B, bold = true, },
    }
end

return M
