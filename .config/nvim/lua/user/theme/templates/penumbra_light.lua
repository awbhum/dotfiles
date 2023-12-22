local M = {}

M.base30 = {
    white = "#3E4044",
    light_grey = "#b0a89e",
    grey_fg2 = "#bab2a8",
    grey_fg = "#c4bcb2",
    grey = "#cec6bc",
    one_bg3 = "#dad2c8",
    one_bg2 = "#e6ded4",
    black2 = "#f0e8de",
    one_bg = "#F2E6D4",
    black = "#FFF7ED",
    darker_black = "#f5ede3",
    baby_pink = "#CA736C",
    blue = "#6E8DD5",
    cyan = "#00A0BA",
    dark_purple = "#806db8",
    green = "#3ea57b",
    nord_blue = "#5794D0",
    orange = "#BA823A",
    pink = "#CA7081",
    purple = "#ac78bd",
    red = "#ca7081",
    sun = "#A38F2D",
    teal = "#22839b",
    vibrant_green = "#46A473",
    yellow = "#92963a",
    line = "#ebe3d9",
    statusline_bg = "#f5ede3",
    lightbg = "#e6ded4",
    pmenu_bg = "#ac78bd",
    folder_bg = "#717171",
    coal = "#8a8a8a",
}

M.base16 = {
    color00 = "#FFF7ED",
    color01 = "#FFF7ED",
    color02 = "#F2E6D4",
    color03 = "#CECECE",
    color04 = "#9E9E9E",
    color05 = "#636363",
    color06 = "#3E4044",
    color07 = "#24272B",
    color08 = "#ca7081",
    color09 = "#5a79c1",
    color0A = "#BA823A",
    color0B = "#3ea57b",
    color0C = "#22839b",
    color0D = "#4380bc",
    color0E = "#ac78bd",
    color0F = "#ca7081",
}

M.polishhl = {
    treesitter = {
        ["@function.builtin"] = { fg = M.base30.teal },
        ["@field.key"] = { fg = M.base30.red },
        ["@punctuation.bracket"] = { fg = M.base30.coal },
        ["@field"] = { fg = M.base30.coal },
    },

    syntax = {
        Constant = { fg = M.base30.red },
        Include = { fg = M.base30.dark_purple },
    },
}

return M
