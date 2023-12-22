local M = {}

M.base30 = {
    white = "#F8F8FF",
    white2 = "#DFDFE5",
    tan = "#CFC1B2",
    darker_black = "#0c0c2d",
    black = "#020222", --  nvim bg
    black2 = "#1A1A3A",
    one_bg = "#161636",
    one_bg2 = "#202040",
    one_bg3 = "#2a2a4a",
    grey = "#393959",
    grey_fg = "#434363",
    grey_fg2 = "#4d4d6d",
    light_grey = "#5c5c7c",
    red = "#FF761A",
    baby_pink = "#FF8E78",
    pink = "#ffafb7",
    line = "#202040", -- for lines like vertsplit
    green = "#9BCCBF",
    vibrant_green = "#b9e75b",
    nord_blue = "#a1bce1",
    blue = "#6699cc",
    yellow = "#FFC552",
    sun = "#FFD392",
    purple = "#99A4BC",
    dark_purple = "#635196",
    teal = "#34BFA4",
    orange = "#f99157",
    cyan = "#BFDAFF",
    statusline_bg = "#0b0b2b",
    lightbg = "#2a2a4a",
    pmenu_bg = "#FFB07B",
    folder_bg = "#598cbf",
}

M.base16 = {
    color00 = "#020222",
    color01 = "#0b0b2b",
    color02 = "#161636",
    color03 = "#202040",
    color04 = "#e4e4eb",
    color05 = "#eeeef5",
    color06 = "#f3f3fa",
    color07 = "#F8F8FF",
    color08 = "#BFDAFF",
    color09 = "#B4B4B9",
    color0A = "#FFC552",
    color0B = "#C8D0E3",
    color0C = "#B4B4B9",
    color0D = "#FFC552",
    color0E = "#8BCCBF",
    color0F = "#DFDFE5",
}

M.polishhl = {
    syntax = {
        Statement = { fg = M.base30.purple },
        Type = { fg = M.base30.white2 },
        Include = { fg = M.base30.tan },
        Keyword = { fg = M.base16.color0D },
        Operator = { fg = M.base30.red },
    },

    treesitter = {
        ["@keyword"] = { fg = M.base16.color0D },
    },
}

return M
