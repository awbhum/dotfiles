local M = {}

M.type = "dark"

M.base30 = {
    white = "#cdc0ad",
    darker_black = "#201d1c",
    black = "#252221", --  nvim bg
    black2 = "#2b2827",
    one_bg = "#2f2c2b",
    one_bg2 = "#393635",
    one_bg3 = "#43403f",
    grey = "#4d4a49",
    grey_fg = "#575453",
    grey_fg2 = "#615e5d",
    light_grey = "#6b6867",
    red = "#c65f5f",
    baby_pink = "#dc7575",
    pink = "#d16a6a",
    line = "#322f2e", -- for lines like vertsplit
    green = "#8ca589",
    vibrant_green = "#95ae92",
    nord_blue = "#728797",
    blue = "#7d92a2",
    yellow = "#d9b27c",
    sun = "#e1ba84",
    purple = "#998396",
    dark_purple = "#917b8e",
    teal = "#749689",
    orange = "#d08b65",
    cyan = "#829e9b",
    statusline_bg = "#292625",
    lightbg = "#353231",
    pmenu_bg = "#859e82",
    folder_bg = "#768b9b",
    beige = "#ab9382",
}

M.base16 = {
    color00 = "#252221",
    color01 = "#2b2827",
    color02 = "#2f2c2b",
    color03 = "#393635",
    color04 = "#43403f",
    color05 = "#c8bAA4",
    color06 = "#beae94",
    color07 = "#cdc0ad",
    color08 = "#c65f5f",
    color09 = "#d08b65",
    color0A = "#d9b27c",
    color0B = "#8ca589",
    color0C = "#998396",
    color0D = "#7d92a2",
    color0E = "#c65f5f",
    color0F = "#ab9382",
}

M.polishhl = {
    syntax = {
        Operator = { fg = M.base30.blue },
    },

    treesitter = {
        ["@field"] = { fg = M.base30.purple },
        ["@variable"] = { fg = M.base16.color06 },
        ["@module"] = { fg = M.base30.beige },
        ["@attribute"] = { fg = M.base30.cyan },
        ["@punctuation.bracket"] = { fg = M.base16.color06 },
        ["@parenthesis"] = { link = "@punctuation.bracket" },
        ["@parameter"] = { fg = M.base30.green },
        ["@function.builtin"] = { fg = M.base30.yellow },
    },
}

return M
