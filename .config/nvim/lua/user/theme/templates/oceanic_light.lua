local M = {}

M.base30 = {
    white = "#26292f",
    darker_black = "#d1d7e2",
    black = "#d8dee9", --  nvim bg
    black2 = "#cbd1dc",
    one_bg = "#cbd1dc",
    one_bg2 = "#c2c8d3", -- Highlight of context
    one_bg3 = "#bac0cb",
    grey = "#adb3be",
    grey_fg = "#a3a9b4",
    grey_fg2 = "#999faa", -- Highlight background
    light_grey = "#9197a2", -- Line numbers
    red = "#b40b11",
    baby_pink = "#ff8282",
    pink = "#ffa5a5",
    line = "#c6ccd7", -- for lines like vertsplit
    green = "#5b9c90",
    vibrant_green = "#9fab4e",
    nord_blue = "#708db1",
    blue = "#526f93",
    yellow = "#fdb830",
    sun = "#ffc038",
    purple = "#896a98",
    dark_purple = "#6b4c7a",
    teal = "#1abc9c",
    orange = "#f99157",
    cyan = "#0b8ec6",
    statusline_bg = "#cfd5e0",
    lightbg = "#c2c8d3",
    pmenu_bg = "#5b9c90",
    folder_bg = "#526f93",
}

M.base16 = {
    color00 = "#d8dee9",
    color01 = "#cdd3de",
    color02 = "#c0c5ce",
    color03 = "#a7adba",
    color04 = "#65737e",
    color05 = "#343d46",
    color06 = "#343d46",
    color07 = "#1b2b34",
    color08 = "#b40b11",
    color09 = "#b4713d",
    color0A = "#a48c32",
    color0B = "#869235",
    color0C = "#5b9c90",
    color0D = "#526f93",
    color0E = "#896a98",
    color0F = "#9a806d",
}

M.polishhl = {
    statusline = {
        St_NTerminalMode = { fg = M.base30.white },
        St_VisualMode = { bg = M.base30.teal },
        St_VisualModeSep = { fg = M.base30.teal },
    },

    treesitter = {
        ["@field"] = { fg = M.base16.color0C },
    },

    syntax = {
        Constant = { fg = M.base16.color09 },
    },
}

return M
