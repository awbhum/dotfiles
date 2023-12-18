vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#d4d4d5",
    darker_black = "#0a0d11",
    black = "#101317", --  nvim bg
    black2 = "#191d22",
    one_bg = "#212428",
    one_bg2 = "#292c30",
    one_bg3 = "#33363a",
    grey = "#3e4145",
    grey_fg = "#45484c",
    grey_fg2 = "#4a4d51",
    light_grey = "#525559",
    red = "#f87070",
    baby_pink = "#ff8e8e",
    pink = "#ffa7a7",
    line = "#30303a", -- for lines like vertsplit
    green = "#37d99e",
    vibrant_green = "#79dcaa",
    blue = "#7ab0df",
    nord_blue = "#87bdec",
    yellow = "#ffe59e",
    sun = "#ffeda6",
    purple = "#c397d8",
    dark_purple = "#b68acb",
    teal = "#63b3ad",
    orange = "#f0a988",
    cyan = "#50cad2",
    statusline_bg = "#15191e",
    lightbg = "#24282d",
    pmenu_bg = "#3bdda2",
    folder_bg = "#5fb0fc",
}

Base16 = {
    color00 = "#101317",
    color01 = "#1a1d21",
    color02 = "#23262a",
    color03 = "#2b2e32",
    color04 = "#323539",
    color05 = "#c5c5c6",
    color06 = "#cbcbcc",
    color07 = "#d4d4d5",
    color08 = "#37d99e",
    color09 = "#f0a988",
    color0A = "#e5d487",
    color0B = "#e87979",
    color0C = "#37d99e",
    color0D = "#5fb0fc",
    color0E = "#c397d8",
    color0F = "#e87979",
}

PolishHL = {
    treesitter = {
        ["@punctuation.bracket"] = { fg = Base16.color07 },
        ["@parenthesis"] = { link = "@punctuation.bracket" },
    },
}
