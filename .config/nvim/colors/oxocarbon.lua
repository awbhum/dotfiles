vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#f2f4f8",
    darker_black = "#0f0f0f",
    black = "#161616", --  nvim bg
    black2 = "#202020",
    one_bg = "#2a2a2a", -- real bg of onedark
    one_bg2 = "#343434",
    one_bg3 = "#3c3c3c",
    grey = "#464646",
    grey_fg = "#4c4c4c",
    grey_fg2 = "#555555",
    light_grey = "#5f5f5f",
    red = "#ee5396",
    baby_pink = "#ff7eb6",
    pink = "#be95ff",
    line = "#383747", -- for lines like vertsplit
    green = "#42be65",
    vibrant_green = "#08bdba",
    nord_blue = "#78a9ff",
    blue = "#33b1ff",
    yellow = "#FAE3B0",
    sun = "#ffe9b6",
    purple = "#d0a9e5",
    dark_purple = "#c7a0dc",
    teal = "#B5E8E0",
    orange = "#F8BD96",
    cyan = "#3ddbd9",
    statusline_bg = "#202020",
    lightbg = "#2a2a2a",
    pmenu_bg = "#3ddbd9",
    folder_bg = "#78a9ff",
    lavender = "#c7d1ff",
}

Base16 = {
    color00 = "#161616",
    color01 = "#262626",
    color02 = "#393939",
    color03 = "#525252",
    color04 = "#dde1e6",
    color05 = "#f2f4f8",
    color06 = "#ffffff",
    color07 = "#08bdba",
    color08 = "#3ddbd9",
    color09 = "#78a9ff",
    color0A = "#ee5396",
    color0B = "#33b1ff",
    color0C = "#ff7eb6",
    color0D = "#42be65",
    color0E = "#be95ff",
    color0F = "#82cfff",
}

PolishHL = {
    syntax = {
        Conditional = { fg = Base30.nord_blue },
        Tag = { fg = Base30.white },
    },
}
