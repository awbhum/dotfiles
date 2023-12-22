local M = {}

M.type = "dark"

M.base30 = {
    white = "#F8F8F2",
    darker_black = "#19192c",
    black = "#141423",
    black2 = "#1c1c31",
    one_bg = "#23233d",
    one_bg2 = "#2b2b4c",
    one_bg3 = "#373760",
    grey = "#414171",
    grey_fg = "#4b4b83",
    grey_fg2 = "#555594",
    light_grey = "#6060a4",
    red = "#FF5555",
    baby_pink = "#FF6E6E",
    pink = "#FF6BCB",
    line = "#2D2D4E",
    green = "#50FA7B",
    vibrant_green = "#20E3B2",
    nord_blue = "#05C3FF",
    blue = "#2CCCFF",
    yellow = "#F1FA8C",
    sun = "#F2FA95",
    purple = "#BD93F9",
    dark_purple = "#a166f6",
    teal = "#92A2D4",
    orange = "#FFB86C",
    cyan = "#2CCCFF",
    statusline_bg = "#19192c",
    lightbg = "#2b2b4c",
    pmenu_bg = "#9A86FD",
    folder_bg = "#9A86FD",
    violet = "#9A86FD",
    darkgreen = "#1B312E",
    brownred = "#5D2932",
}

M.base16 = {
    color00 = "#141423",
    color01 = M.base30.one_bg,
    color02 = M.base30.one_bg2,
    color03 = M.base30.one_bg3,
    color04 = M.base30.grey,
    color05 = "#E9E9F4",
    color06 = "#F1F2F8",
    color07 = "#F7F7FB",
    color08 = "#C197FD",
    color09 = "#FFB86C",
    color0A = "#62D6E8",
    color0B = "#E5C697",
    color0C = "#8BE9FD",
    color0D = "#20E3B2",
    color0E = "#FF6BCB",
    color0F = "#7e7eb5",
}

M.polishhl = {
    treesitter = {
        ["@function.builtin"] = { fg = M.base30.cyan },
        ["@number"] = { fg = M.base30.purple },
        ["@namespace"] = { fg = M.base30.white },
        ["@function.call"] = { fg = M.base30.vibrant_green },
        ["@function"] = { fg = M.base30.green },
        ["@repeat"] = { fg = M.base30.green },
    },

    syntax = {
        Include = { fg = M.base30.pink },
        Error = { fg = M.base30.red },
        Identifier = { fg = M.base30.white },
        Function = { fg = M.base30.vibrant_green },
        String = { fg = M.base30.orange },
        Keyword = { fg = M.base30.pink },
        Constant = { fg = M.base30.violet },
        Type = { fg = M.base30.blue },
    },

    git = {
        DiffAdd = { fg = M.base30.darkgreen },
        DiffDelete = { fg = M.base30.brownred },
    },

    nvimtree = {
        NvimTreeFolderName = { fg = M.base30.white },
        NvimTreeOpenedFolderName = { fg = M.base30.white, bold = true },
    },
}

return M
