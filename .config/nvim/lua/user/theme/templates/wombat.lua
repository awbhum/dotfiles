local M = {}

M.base30 = {
    white = "#e4e0d7",
    darker_black = "#1b1b1b",
    black = "#222222",
    black2 = "#292929",
    one_bg = "#333333",
    one_bg2 = "#3a3a3a",
    one_bg3 = "#414141",
    grey = "#4b4b4b",
    grey_fg = "#535353",
    grey_fg2 = "#5a5a5a",
    light_grey = "#646464",
    red = "#FF8F7E",
    baby_pink = "#f58eff",
    pink = "#e780f8",
    line = "#353535",
    green = "#AEE474",
    vibrant_green = "#95e454",
    nord_blue = "#8dbdfb",
    blue = "#88B8F6",
    yellow = "#efdeab",
    sun = "#feedba",
    purple = "#dc8cff",
    dark_purple = "#c878f0",
    teal = "#7EB6BC",
    orange = "#FFCC66",
    cyan = "#90fdf8",
    statusline_bg = "#262626",
    lightbg = "#3c3c3c",
    pmenu_bg = "#95e454",
    folder_bg = "#7BB0C9",
}

M.base16 = {
    color00 = "#202020",
    color01 = "#303030",
    color02 = "#373737",
    color03 = "#3e3e3e",
    color04 = "#484848",
    color05 = "#d6d2c9",
    color06 = "#ddd9d0",
    color07 = "#e4e0d7",
    color08 = "#FFCC66",
    color09 = "#dc8cff",
    color0A = "#efdeab",
    color0B = "#AEE474",
    color0C = "#7EB6BC",
    color0D = "#88B8F6",
    color0E = "#FF8F7E",
    color0F = "#dc8c64",
}

M.polishhl = {
    treesitter = {
        ["@punctuation.bracket"] = { fg = M.base30.sun },
    },
}

return M
