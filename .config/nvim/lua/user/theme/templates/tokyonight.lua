local M = {}

M.type = "dark"

M.base30 = {
    white = "#c0caf5",
    darker_black = "#16161e",
    black = "#1a1b26", --  nvim bg
    black2 = "#1f2336",
    one_bg = "#24283b",
    one_bg2 = "#414868",
    one_bg3 = "#353b45",
    grey = "#40486a",
    grey_fg = "#565f89",
    grey_fg2 = "#4f5779",
    light_grey = "#545c7e",
    red = "#f7768e",
    baby_pink = "#DE8C92",
    pink = "#ff75a0",
    line = "#32333e", -- for lines like vertsplit
    green = "#9ece6a",
    vibrant_green = "#73daca",
    nord_blue = "#80a8fd",
    blue = "#7aa2f7",
    yellow = "#e0af68",
    sun = "#EBCB8B",
    purple = "#bb9af7",
    dark_purple = "#9d7cd8",
    teal = "#1abc9c",
    orange = "#ff9e64",
    cyan = "#7dcfff",
    statusline_bg = "#1d1e29",
    lightbg = "#32333e",
    pmenu_bg = "#7aa2f7",
    folder_bg = "#7aa2f7",
}

M.base16 = {
    color00 = "#1a1b26",
    color01 = "#16161e",
    color02 = "#2f3549",
    color03 = "#444b6a",
    color04 = "#787c99",
    color05 = "#a9b1d6",
    color06 = "#cbccd1",
    color07 = "#d5d6db",
    color08 = "#73daca",
    color09 = "#ff9e64",
    color0A = "#0db9d7",
    color0B = "#9ece6a",
    color0C = "#b4f9f8",
    color0D = "#2ac3de",
    color0E = "#bb9af7",
    color0F = "#f7768e",
}

M.polishhl = {
    treesitter = {
        ["@variable"] = { fg = M.base16.color05 },
        ["@punctuation.bracket"] = { fg = M.base30.purple },
        ["@method.call"] = { fg = M.base30.red },
        ["@function.call"] = { fg = M.base30.blue },
        ["@constant"] = { fg = M.base30.orange },
        ["@parameter"] = { fg = M.base30.orange },
    },
}

return M
