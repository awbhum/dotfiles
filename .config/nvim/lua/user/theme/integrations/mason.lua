local M = {}

function M.set(col16, col30)
    return {
        MasonHeader             = { bg = col30.red, fg = col30.black },
        MasonHighlight          = { fg = col30.blue },
        MasonHighlightBlock     = { fg = col30.black, bg = col30.green },
        MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
        MasonHeaderSecondary    = { link = "MasonHighlightBlock" },
        MasonMuted              = { fg = col30.light_grey },
        MasonMutedBlock         = { fg = col30.light_grey, bg = col30.one_bg },
    }
end

return M
