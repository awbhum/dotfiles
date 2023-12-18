vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#D3C6AA",
    darker_black = "#272f35",
    black = "#2b3339", --  nvim bg
    black2 = "#323a40",
    one_bg = "#363e44",
    one_bg2 = "#363e44",
    one_bg3 = "#3a4248",
    grey = "#4e565c",
    grey_fg = "#545c62",
    grey_fg2 = "#626a70",
    light_grey = "#656d73",
    red = "#e67e80",
    baby_pink = "#ce8196",
    pink = "#ff75a0",
    line = "#3a4248", -- for lines like vertsplit
    green = "#83c092",
    vibrant_green = "#a7c080",
    nord_blue = "#78b4ac",
    blue = "#7393b3",
    yellow = "#dbbc7f",
    sun = "#d1b171",
    purple = "#ecafcc",
    dark_purple = "#d699b6",
    teal = "#69a59d",
    orange = "#e69875",
    cyan = "#95d1c9",
    statusline_bg = "#2e363c",
    lightbg = "#3d454b",
    pmenu_bg = "#83c092",
    folder_bg = "#7393b3",
}

Base16 = {
    color00 = "#2b3339",
    color01 = "#323c41",
    color02 = "#3a4248",
    color03 = "#424a50",
    color04 = "#4a5258",
    color05 = "#d3c6aa",
    color06 = "#ddd0b4",
    color07 = "#e7dabe",
    color08 = "#7fbbb3",
    color09 = "#d699b6",
    color0A = "#83c092",
    color0B = "#dbbc7f",
    color0C = "#e69875",
    color0D = "#a7c080",
    color0E = "#e67e80",
    color0F = "#d699b6",
}

PolishHL = {
    treesitter = {
        ["@tag"] = { fg = Base30.orange },
        ["@tag.delimiter"] = { fg = Base30.green },
    },
}
