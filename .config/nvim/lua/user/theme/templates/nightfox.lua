local M = {}

M.base30 = {
    white = "#cdcecf",
    darker_black = "#121c29",
    black = "#192330",
    black2 = "#202a37",
    one_bg = "#252f3c", -- real bg of onedark
    one_bg2 = "#313b48",
    one_bg3 = "#3d4754",
    grey = "#495360",
    grey_fg = "#535d6a",
    grey_fg2 = "#5c6673",
    light_grey = "#646e7b",
    red = "#c94f6d",
    baby_pink = "#e26886",
    pink = "#d85e7c",
    line = "#2a3441",
    green = "#8ebaa4",
    vibrant_green = "#6ad4d6",
    blue = "#719cd6",
    nord_blue = "#86abdc",
    yellow = "#dbc074",
    sun = "#e0c989",
    purple = "#baa1e2",
    dark_purple = "#9d79d6",
    teal = "#5cc6c8",
    orange = "#fe9373",
    cyan = "#8be5e7",
    statusline_bg = "#202a37",
    lightbg = "#313b48",
    pmenu_bg = "#719cd6",
    folder_bg = "#719cd6",
}

M.base16 = {
    color00 = "#192330",
    color01 = "#252f3c",
    color02 = "#313b48",
    color03 = "#3d4754",
    color04 = "#495360",
    color05 = "#c0c8d5",
    color06 = "#c7cfdc",
    color07 = "#ced6e3",
    color08 = "#e26886",
    color09 = "#fe9373",
    color0A = "#dbc074",
    color0B = "#8ebaa4",
    color0C = "#7ad4d6",
    color0D = "#86abdc",
    color0E = "#9d79d6",
    color0F = "#c0c8d5",
}

M.polishhl = {
    treesitter = {
        ["@field.key"] = { fg = M.base16.color05 },
        ["@operator"] = { fg = M.base30.dark_purple },
        ["@keyword"] = { fg = M.base30.teal },
        ["@parameter"] = { fg = M.base30.teal },
    },
}

return M
