vim.cmd.syntax("reset")
vim.opt.background = "light"

Base30 = {
    white = "#2a2929",
    darker_black = "#f7f4e9",
    black = "#FFFCF0", --  nvim bg
    black2 = "#f2efe4",
    one_bg = "#ebe8dd", -- real bg of onedark
    one_bg2 = "#d6d4ca",
    one_bg3 = "#c7c5bb",
    grey = "#b8b5ad",
    grey_fg = "#adaba3",
    grey_fg2 = "#a3a19a",
    light_grey = "#94928b",
    red = "#D14D41",
    baby_pink = "#d574a6",
    pink = "#CE5D97",
    line = "#d6d4ca", -- for lines like vertsplit
    green = "#879A39",
    vibrant_green = "#66800B",
    nord_blue = "#4385BE",
    blue = "#4385BE",
    yellow = "#D0A215",
    sun = "#d2a721",
    purple = "#8B7EC8",
    dark_purple = "#8376bc",
    teal = "#008080",
    orange = "#DA702C",
    cyan = "#3AA99F",
    statusline_bg = "#f7f4e9",
    lightbg = "#ebe8dd",
    pmenu_bg = "#3AA99F",
    folder_bg = "#4385BE",
}

Base16 = {
    color00 = Base30.black,
    color01 = Base30.black2,
    color02 = Base30.one_bg,
    color03 = Base30.grey,
    color04 = Base30.grey_fg,
    color05 = Base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = Base30.red,
    color09 = Base30.orange,
    color0A = Base30.purple,
    color0B = Base30.green,
    color0C = Base30.cyan,
    color0D = Base30.blue,
    color0E = Base30.yellow,
    color0F = Base30.teal,
}

PolishHL = {
    syntax = {
        Keyword = { fg = Base30.cyan },
        Include = { fg = Base30.yellow },
        Tag = { fg = Base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = Base30.cyan },
        ["@parameter"] = { fg = Base30.baby_pink },
        ["@tag.attribute"] = { fg = Base30.orange },
        ["@tag"] = { fg = Base30.blue },
        ["@string"] = { fg = Base30.green },
        ["@text.uri"] = { fg = Base30.green },
        ["@punctuation.bracket"] = { fg = Base30.yellow },
        ["@constant.lua"] = { fg = Base30.white },
    },

    telescope = {
        TelescopeMatching = { fg = Base30.dark_purple, bg = Base30.one_bg },
    },
}
