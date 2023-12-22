local M = {}

M.type = "dark"

M.base30 = {
    white = "#eee8d5",
    darker_black = "#1d1741",
    black = "#201947",
    black2 = "#271e56",
    one_bg = "#2e2466",
    one_bg2 = "#352975",
    one_bg3 = "#3e318a",
    grey = "#423494",
    grey_fg = "#4c3ca9",
    grey_fg2 = "#5442bb",
    light_grey = "#6d5dc6",
    red = "#ff047d",
    baby_pink = "#ff1d8a",
    pink = "#e61d7e",
    line = "#2b215f",
    green = "#859900",
    vibrant_green = "#b2c62d",
    nord_blue = "#197ec5",
    blue = "#268bd2",
    yellow = "#b58900",
    sun = "#c4980f",
    purple = "#7E74CC",
    dark_purple = "#322880",
    teal = "#74c5aa",
    orange = "#c85106",
    cyan = "#37dcf6",
    statusline_bg = "#271e56",
    lightbg = "#352975",
    pmenu_bg = "#268bd2",
    folder_bg = "#268bd2",
}

M.base16 = {
    color00 = M.base30.black,
    color01 = M.base30.black2,
    color02 = M.base30.one_bg,
    color03 = M.base30.one_bg2,
    color04 = M.base30.one_bg3,
    color05 = "#eee8d5",
    color06 = "#efe9d8",
    color07 = "#fdf6e3",
    color08 = M.base30.red,
    color09 = M.base30.orange,
    color0A = "#b58900",
    color0B = "#859900",
    color0C = "#2aa198",
    color0D = "#268bd2",
    color0E = "#6c71c4",
    color0F = M.base30.red,
}

M.polishhl = {
    treesitter = {
        ["@tag.attribute"] = { fg = M.base30.orange },
        ["@tag.delimiter"] = { fg = M.base30.cyan },
    },
}

return M
