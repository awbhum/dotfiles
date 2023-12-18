vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#DCD7BA",
    darker_black = "#191922",
    black = "#1F1F28", --  nvim bg
    black2 = "#25252e",
    one_bg = "#272730",
    one_bg2 = "#2f2f38",
    one_bg3 = "#363646",
    grey = "#43434c",
    grey_fg = "#4c4c55",
    grey_fg2 = "#53535c",
    light_grey = "#5c5c65",
    red = "#d8616b",
    baby_pink = "#D27E99",
    pink = "#c8748f",
    line = "#31313a", -- for lines like vertsplit
    green = "#98BB6C",
    vibrant_green = "#a3c677",
    nord_blue = "#7E9CD8",
    blue = "#7FB4CA",
    yellow = "#FF9E3B",
    sun = "#FFA066",
    purple = "#a48ec7",
    dark_purple = "#9c86bf",
    teal = "#7AA89F",
    orange = "#fa9b61",
    cyan = "#A3D4D5",
    statusline_bg = "#24242d",
    lightbg = "#33333c",
    pmenu_bg = "#a48ec7",
    folder_bg = "#7E9CD8",
}

Base16 = {
    color00 = "#1f1f28",
    color01 = "#2a2a37",
    color02 = "#223249",
    color03 = "#363646",
    color04 = "#4c4c55",
    color05 = "#c8c3a6",
    color06 = "#d2cdb0",
    color07 = "#DCD7BA",
    color08 = "#d8616b",
    color09 = "#ffa066",
    color0A = "#dca561",
    color0B = "#98bb6c",
    color0C = "#7fb4ca",
    color0D = "#7e9cd8",
    color0E = "#9c86bf",
    color0F = "#d8616b",
}

PolishHL = {
    treesitter = {
        ["@include"] = { fg = Base30.purple },
        ["@uri"] = { fg = Base30.blue },
        ["@tag.delimiter"] = { fg = Base30.red },
        ["@field.key"] = { fg = Base30.white },
        ["@punctuation.bracket"] = { fg = Base30.pmenu_bg },
        ["@punctuation.delimiter"] = { fg = Base30.white },
    },

    syntax = {
        Number = { fg = Base30.baby_pink },
    },
}