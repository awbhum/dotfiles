local M = {}

M.base30 = {
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

M.base16 = {
    color00 = M.base30.black,
    color01 = M.base30.black2,
    color02 = M.base30.one_bg,
    color03 = M.base30.grey,
    color04 = M.base30.grey_fg,
    color05 = M.base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = M.base30.red,
    color09 = M.base30.orange,
    color0A = M.base30.purple,
    color0B = M.base30.green,
    color0C = M.base30.cyan,
    color0D = M.base30.blue,
    color0E = M.base30.yellow,
    color0F = M.base30.teal,
}

M.polishhl = {
    syntax = {
        Keyword = { fg = M.base30.cyan },
        Include = { fg = M.base30.yellow },
        Tag = { fg = M.base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = M.base30.cyan },
        ["@parameter"] = { fg = M.base30.baby_pink },
        ["@tag.attribute"] = { fg = M.base30.orange },
        ["@tag"] = { fg = M.base30.blue },
        ["@string"] = { fg = M.base30.green },
        ["@text.uri"] = { fg = M.base30.green },
        ["@punctuation.bracket"] = { fg = M.base30.yellow },
        ["@constant.lua"] = { fg = M.base30.white },
    },

    telescope = {
        TelescopeMatching = { fg = M.base30.dark_purple, bg = M.base30.one_bg },
    },
}

return M
