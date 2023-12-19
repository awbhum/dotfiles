local M = {}

function M.set(col16, col30)
    local telescope_style = vim.g.telescope_style

    local hlgroups = {
        TelescopePromptPrefix       = { fg = col30.red, bg = col30.black2, },
        TelescopeNormal             = { bg = col30.darker_black },
        TelescopePreviewTitle       = { fg = col30.black, bg = col30.green, },
        TelescopePromptTitle        = { fg = col30.black, bg = col30.red, },
        TelescopeSelection          = { bg = col30.black2, fg = col30.white },
        TelescopeResultsDiffAdd     = { fg = col30.green },
        TelescopeResultsDiffChange  = { fg = col30.yellow },
        TelescopeResultsDiffDelete  = { fg = col30.red },
        TelescopeMatching           = { bg = col30.one_bg, fg = col30.blue },
    }

    local styles = {
        borderless = {
            TelescopeBorder         = { fg = col30.darker_black, bg = col30.darker_black },
            TelescopePromptBorder   = { fg = col30.black2, bg = col30.black2 },
            TelescopePromptNormal   = { fg = col30.white, bg = col30.black2 },
            TelescopeResultsTitle   = { fg = col30.darker_black, bg = col30.darker_black },
            TelescopePromptPrefix   = { fg = col30.red, bg = col30.black2 },
        },
        bordered = {
            TelescopeBorder         = { fg = col30.one_bg3 },
            TelescopePromptBorder   = { fg = col30.one_bg3 },
            TelescopeResultsTitle   = { fg = col30.black, bg = col30.green },
            TelescopePreviewTitle   = { fg = col30.black, bg = col30.blue },
            TelescopePromptPrefix   = { fg = col30.red, bg = col30.black },
            TelescopeNormal         = { bg = col30.black },
            TelescopePromptNormal   = { bg = col30.black },
        },
    }

    local result = vim.tbl_deep_extend("force", hlgroups, styles[telescope_style])

    return result
end

return M
