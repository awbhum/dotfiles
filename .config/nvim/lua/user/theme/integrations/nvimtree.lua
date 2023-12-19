local M = {}

function M.set(col16, col30)
    return {
        NvimTreeEmptyFolderName     = { fg = col30.folder_bg },
        NvimTreeEndOfBuffer         = { fg = col30.darker_black },
        NvimTreeFolderIcon          = { fg = col30.folder_bg },
        NvimTreeFolderName          = { fg = col30.folder_bg },
        NvimTreeFolderArrowOpen     = { fg = col30.folder_bg },
        NvimTreeFolderArrowClosed   = { fg = col30.grey_fg },
        NvimTreeGitDirty            = { fg = col30.red },
        NvimTreeIndentMarker        = { fg = (vim.o.background == "dark" and require("user.colors").change_hex_lightness(col30.line, -2) or col30.one_bg2) },
        NvimTreeNormal              = { bg = col30.darker_black },
        NvimTreeNormalNC            = { bg = col30.darker_black },
        NvimTreeOpenedFolderName    = { fg = col30.folder_bg },
        NvimTreeGitIgnored          = { fg = col30.light_grey },
        NvimTreeWinSeparator        = { fg = col30.darker_black, bg = col30.darker_black, },
        NvimTreeWindowPicker        = { fg = col30.red, bg = col30.black2, },
        NvimTreeCursorLine          = { bg = col30.black2, },
        NvimTreeGitNew              = { fg = col30.yellow, },
        NvimTreeGitDeleted          = { fg = col30.red, },
        NvimTreeSpecialFile         = { fg = col30.yellow, bold = true, },
        NvimTreeRootFolder          = { fg = col30.red, bold = true, },
    }
end

return M
