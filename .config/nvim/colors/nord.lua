vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#abb2bf",
    darker_black = "#2a303c",
    black = "#2E3440", --  nvim bg
    black2 = "#343a46",
    one_bg = "#373d49",
    one_bg2 = "#464c58",
    one_bg3 = "#494f5b",
    grey = "#4b515d",
    grey_fg = "#565c68",
    grey_fg2 = "#606672",
    light_grey = "#646a76",
    red = "#BF616A",
    baby_pink = "#de878f",
    pink = "#d57780",
    line = "#414753", -- for lines like vertsplit
    green = "#A3BE8C",
    vibrant_green = "#afca98",
    blue = "#7797b7",
    nord_blue = "#81A1C1",
    yellow = "#EBCB8B",
    sun = "#e1c181",
    purple = "#B48EAD",
    dark_purple = "#a983a2",
    teal = "#6484a4",
    orange = "#e39a83",
    cyan = "#9aafe6",
    statusline_bg = "#333945",
    lightbg = "#3f4551",
    pmenu_bg = "#A3BE8C",
    folder_bg = "#7797b7",
}

Base16 = {
    color00 = "#2E3440",
    color01 = "#3B4252",
    color02 = "#434C5E",
    color03 = "#4C566A",
    color04 = "#D8DEE9",
    color05 = "#E5E9F0",
    color06 = "#ECEFF4",
    color07 = "#8FBCBB",
    color08 = "#88C0D0",
    color09 = "#81A1C1",
    color0A = "#88C0D0",
    color0B = "#A3BE8C",
    color0C = "#81A1C1",
    color0D = "#81A1C1",
    color0E = "#81A1C1",
    color0F = "#B48EAD",
}

PolishHL = {
    treesitter = {
        ["@punctuation.bracket"] = { fg = Base30.white },
        ["@punctuation.delimiter"] = { fg = Base30.white },
    },
}
