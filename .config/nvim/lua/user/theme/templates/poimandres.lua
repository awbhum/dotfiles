local M = {}

M.type = "dark"

M.base30 = {
    white = "#E4F0FB",
    ogwhite = "#ffffff",
    black = "#1b1e28",
    darker_black = "#171922",
    black2 = "#222633",
    one_bg = "#2b3040",
    one_bg2 = "#32384a",
    one_bg3 = "#3b4258",
    grey = "#48506a",
    grey_fg = "#515977",
    grey_fg2 = "#5d678a",
    light_grey = "#657096",
    red = "#D0679D",
    baby_pink = "#FAE4FC",
    pink = "#FCC5E9",
    line = "#303340",
    green = "#5FB3A1",
    vibrant_green = "#71bbab",
    nord_blue = "#91B4D5",
    blue = "#89DDFF",
    seablue = "#ADD7FF",
    yellow = "#FFFAC2",
    sun = "#fff691",
    purple = "#A6ACCD",
    dark_purple = "#b6d7f4",
    teal = "#5DE4C7",
    orange = "#91B4D5",
    cyan = "#92e0ff",
    statusline_bg = "#222633",
    lightbg = "#32384a",
    pmenu_bg = "#5FB3A1",
    folder_bg = "#91B4D5",
}

M.base16 = {
    color00 = M.base30.black,
    color01 = M.base30.one_bg,
    color02 = M.base30.one_bg2,
    color03 = M.base30.one_bg3,
    color04 = M.base30.grey,
    color05 = M.base30.purple,
    color06 = M.base30.dark_purple,
    color07 = M.base30.ogwhite,
    color08 = M.base30.purple,
    color09 = M.base30.red,
    color0A = M.base30.teal,
    color0B = M.base30.teal,
    color0C = M.base30.blue,
    color0D = M.base30.seablue,
    color0E = M.base30.nord_blue,
    color0F = M.base30.ogwhite,
}

M.polishhl = {
    treesitter = {
        ["@variable"] = { fg = M.base30.ogwhite },
        ["@variable.builtin"] = { fg = M.base30.dark_purple },
        ["@function.call"] = { fg = M.base30.purple },
        ["@keyword.return"] = { fg = M.base30.green },
        ["@operator"] = { fg = M.base30.nord_blue },
        ["@keyword.operator"] = { fg = M.base30.seablue },
        ["@constant.builtin"] = { fg = M.base30.seablue },
        ["@constant"] = { fg = M.base30.white },
        ["@constructor"] = { fg = M.base30.grey_fg },
        ["@property"] = { fg = M.base30.seablue },
        ["@punctuation.delimiter"] = { fg = M.base30.seablue },
        ["@punctuation.special"] = { fg = M.base30.purple },
        ["@punctuation.bracket"] = { fg = M.base30.purple },
        ["@type.builtin"] = { link = "Boolean" },
        ["@tag.attribute"] = { fg = M.base30.purple, italic = true, link = "" },
        ["Label"] = { fg = M.base30.seablue },
        ["@none"] = { fg = M.base30.dark_purple },
        ["@constructor.tsx"] = { link = "Tag" },
    },

    telescope = {
        TelescopeMatching = { fg = M.base30.teal },
    },

    cmp = {
        CmpItemAbbr = { fg = M.base30.purple },
        CmpItemAbbrMatch = { fg = M.base30.dark_purple },
        CmpSel = { bg = M.base30.one_bg2, link = "" },
    },

    syntax = {
        Include = { fg = M.base30.blue },
        Type = { fg = M.base30.purple },
    },
}

return M
