local M = {}

M.base30 = {
    white = "#C5C8C2",
    darker_black = "#191b1d",
    black = "#1d1f21", -- nvim bg
    black2 = "#232527",
    one_bg = "#2d2f31",
    one_bg2 = "#353b45",
    one_bg3 = "#30343c",
    grey = "#434547",
    grey_fg = "#545B68",
    grey_fg2 = "#616875",
    light_grey = "#676e7b",
    red = "#cc6666",
    baby_pink = "#FF6E79",
    pink = "#ff9ca3",
    line = "#313335", -- for lines like vertsplit
    green = "#a4b595",
    vibrant_green = "#a3b991",
    nord_blue = "#728da8",
    blue = "#6f8dab",
    yellow = "#d7bd8d",
    sun = "#e4c180",
    purple = "#b4bbc8",
    dark_purple = "#b290ac",
    teal = "#8abdb6",
    orange = "#DE935F",
    cyan = "#70c0b1",
    statusline_bg = "#212326",
    lightbg = "#373B41",
    pmenu_bg = "#a4b595",
    folder_bg = "#6f8dab",
}

M.base16 = {
    color00 = "#1d1f21",
    color01 = "#282a2e",
    color02 = "#373b41",
    color03 = "#969896",
    color04 = "#b4b7b4",
    color05 = "#c5c8c6",
    color06 = "#e0e0e0",
    color07 = "#ffffff",
    color08 = "#cc6666",
    color09 = "#de935f",
    color0A = "#f0c674",
    color0B = "#b5bd68",
    color0C = "#8abeb7",
    color0D = "#81a2be",
    color0E = "#b294bb",
    color0F = "#a3685a",
}

M.polishhl = {
    treesitter = {
        ["@function.builtin"] = { fg = M.base30.yellow },
    },
    -- ["@punctuation.bracket"] = { fg = M.base30.yellow },
}

return M
