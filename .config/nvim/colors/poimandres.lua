vim.cmd.syntax("reset")
vim.opt.background = "light"

Base30 = {
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

Base16 = {
    color00 = Base30.black,
    color01 = Base30.one_bg,
    color02 = Base30.one_bg2,
    color03 = Base30.one_bg3,
    color04 = Base30.grey,
    color05 = Base30.purple,
    color06 = Base30.dark_purple,
    color07 = Base30.ogwhite,
    color08 = Base30.purple,
    color09 = Base30.red,
    color0A = Base30.teal,
    color0B = Base30.teal,
    color0C = Base30.blue,
    color0D = Base30.seablue,
    color0E = Base30.nord_blue,
    color0F = Base30.ogwhite,
}

PolishHL = {
    treesitter = {
        ["@variable"] = { fg = Base30.ogwhite },
        ["@variable.builtin"] = { fg = Base30.dark_purple },
        ["@function.call"] = { fg = Base30.purple },
        ["@keyword.return"] = { fg = Base30.green },
        ["@operator"] = { fg = Base30.nord_blue },
        ["@keyword.operator"] = { fg = Base30.seablue },
        ["@constant.builtin"] = { fg = Base30.seablue },
        ["@constant"] = { fg = Base30.white },
        ["@constructor"] = { fg = Base30.grey_fg },
        ["@property"] = { fg = Base30.seablue },
        ["@punctuation.delimiter"] = { fg = Base30.seablue },
        ["@punctuation.special"] = { fg = Base30.purple },
        ["@punctuation.bracket"] = { fg = Base30.purple },
        ["@type.builtin"] = { link = "Boolean" },
        ["@tag.attribute"] = { fg = Base30.purple, italic = true, link = "" },
        ["Label"] = { fg = Base30.seablue },
        ["@none"] = { fg = Base30.dark_purple },
        ["@constructor.tsx"] = { link = "Tag" },
    },

    telescope = {
        TelescopeMatching = { fg = Base30.teal },
    },

    cmp = {
        CmpItemAbbr = { fg = Base30.purple },
        CmpItemAbbrMatch = { fg = Base30.dark_purple },
        CmpSel = { bg = Base30.one_bg2, link = "" },
    },

    syntax = {
        Include = { fg = Base30.blue },
        Type = { fg = Base30.purple },
    },
}
