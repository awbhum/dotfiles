vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#ebdbb2",
    darker_black = "#232323",
    black = "#282828", --  nvim bg
    black2 = "#2e2e2e",
    one_bg = "#353535",
    one_bg2 = "#3f3f3f",
    one_bg3 = "#444444",
    grey = "#4b4b4b",
    grey_fg = "#4e4e4e",
    grey_fg2 = "#505050",
    light_grey = "#656565",
    red = "#fb4934",
    baby_pink = "#cc241d",
    pink = "#ff75a0",
    line = "#36393a", -- for lines like vertsplit
    green = "#b8bb26",
    vibrant_green = "#a9b665",
    nord_blue = "#83a598",
    blue = "#458588",
    yellow = "#d79921",
    sun = "#fabd2f",
    purple = "#b4bbc8",
    dark_purple = "#d3869b",
    teal = "#749689",
    orange = "#e78a4e",
    cyan = "#82b3a8",
    statusline_bg = "#2c2c2c",
    lightbg = "#3d3d3d",
    pmenu_bg = "#83a598",
    folder_bg = "#749689",
}

Base16 = {
    color00 = "#282828",
    color01 = "#3c3836",
    color02 = "#423e3c",
    color03 = "#484442",
    color04 = "#bdae93",
    color05 = "#d5c4a1",
    color06 = "#ebdbb2",
    color07 = "#fbf1c7",
    color08 = "#fb4934",
    color09 = "#fe8019",
    color0A = "#fabd2f",
    color0B = "#b8bb26",
    color0C = "#8ec07c",
    color0D = "#83a598",
    color0E = "#d3869b",
    color0F = "#d65d0e",
}

PolishHL = {
    syntax = {
        Operator = { fg = Base30.nord_blue },
    },

    treesitter = {
        ["@operator"] = { fg = Base30.nord_blue },
    },
}
