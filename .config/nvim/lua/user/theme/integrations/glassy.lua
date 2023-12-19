local M = {}

function M.set(col16, col30)
    local hl = {
        NvimTreeWinSeparator = {
            fg = col30.one_bg2,
            bg = "NONE",
        },

        TelescopeResultsTitle = {
            fg = col30.black,
            bg = col30.blue,
        },
    }

    -- for hl groups which need bg = "NONE" only!
    local hl_groups = {
        "NormalFloat",
        "Normal",
        "Folded",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "NvimTreeCursorLine",
        "TelescopeNormal",
        "TelescopePrompt",
        "TelescopeResults",
        "TelescopePromptNormal",
        "TelescopePromptPrefix",
        "CursorLine",
        "Pmenu",
        "CmpPmenu",
    }

    for _, groups in ipairs(hl_groups) do
        M[groups] = {
            bg = "NONE",
        }
    end

    hl.TelescopeBorder = {
        fg = col30.grey,
        bg = "NONE",
    }

    hl.TelescopePromptBorder = {
        fg = col30.grey,
        bg = "NONE",
    }

    hl.CmpDocBorder = {
        bg = "none",
        fg = col30.grey,
    }

    return hl
end

return M
