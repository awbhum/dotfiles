local M = {}

M.base30 = {
    white = "#504945",
    darker_black = "#e8dbb2",
    black = "#F2E5BC", --  nvim bg
    black2 = "#e3d6ad",
    one_bg = "#e5d8af",
    one_bg2 = "#d8cba2",
    one_bg3 = "#cabd94",
    grey = "#c0b38a",
    grey_fg = "#b6a980",
    grey_fg2 = "#ac9f76",
    light_grey = "#a2956c",
    red = "#d65d0e",
    baby_pink = "#af3a03",
    pink = "#9d0006",
    line = "#ded1a8", -- for lines like vertsplit
    green = "#79740e",
    vibrant_green = "#7f7a14",
    nord_blue = "#7b9d90",
    blue = "#458588",
    yellow = "#d79921",
    sun = "#dd9f27",
    purple = "#8f3f71",
    dark_purple = "#853567",
    teal = "#749689",
    orange = "#b57614",
    cyan = "#82b3a8",
    statusline_bg = "#e9dcb3",
    lightbg = "#ddd0a7",
    pmenu_bg = "#739588",
    folder_bg = "#746d69",
}

M.base16 = {
    color00 = "#F2E5BC",
    color01 = "#e3d6ad",
    color02 = "#e5d8af",
    color03 = "#d8cba2",
    color04 = "#cabd94",
    color05 = "#504945",
    color06 = "#3c3836",
    color07 = "#282828",
    color08 = "#9d0006",
    color09 = "#af3a03",
    color0A = "#b57614",
    color0B = "#79740e",
    color0C = "#427b58",
    color0D = "#076678",
    color0E = "#8f3f71",
    color0F = "#d65d0e",
}

M.polishhl = {
    tbline = {
        TbLineThemeToggleBtn = { fg = M.base30.black, bg = M.base30.white },
    },
}

return M
