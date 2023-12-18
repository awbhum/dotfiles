vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#D9E0EE",
    darker_black = "#191828",
    black = "#1E1D2D", --  nvim bg
    black2 = "#252434",
    one_bg = "#2d2c3c", -- real bg of onedark
    one_bg2 = "#363545",
    one_bg3 = "#3e3d4d",
    grey = "#474656",
    grey_fg = "#4e4d5d",
    grey_fg2 = "#555464",
    light_grey = "#605f6f",
    red = "#F38BA8",
    baby_pink = "#ffa5c3",
    pink = "#F5C2E7",
    line = "#383747", -- for lines like vertsplit
    green = "#ABE9B3",
    vibrant_green = "#b6f4be",
    nord_blue = "#8bc2f0",
    blue = "#89B4FA",
    yellow = "#FAE3B0",
    sun = "#ffe9b6",
    purple = "#d0a9e5",
    dark_purple = "#c7a0dc",
    teal = "#B5E8E0",
    orange = "#F8BD96",
    cyan = "#89DCEB",
    statusline_bg = "#232232",
    lightbg = "#2f2e3e",
    pmenu_bg = "#ABE9B3",
    folder_bg = "#89B4FA",
    lavender = "#c7d1ff",
}

Base16 = {
    color00 = "#1E1D2D",
    color01 = "#282737",
    color02 = "#2f2e3e",
    color03 = "#383747",
    color04 = "#414050",
    color05 = "#bfc6d4",
    color06 = "#ccd3e1",
    color07 = "#D9E0EE",
    color08 = "#F38BA8",
    color09 = "#F8BD96",
    color0A = "#FAE3B0",
    color0B = "#ABE9B3",
    color0C = "#89DCEB",
    color0D = "#89B4FA",
    color0E = "#CBA6F7",
    color0F = "#F38BA8",
}

PolishHL = {
    treesitter = {
        ["@variable"] = { fg = Base30.lavender },
        ["@property"] = { fg = Base30.teal },
        ["@variable.builtin"] = { fg = Base30.red },
    },
}
