local M = {}

M.base30 = {
    white = "#CECDC3",
    darker_black = "#171616",
    black = "#100F0F", --  nvim bg
    black2 = "#1c1b1b",
    one_bg = "#292626", -- real bg of onedark
    one_bg2 = "#353232",
    one_bg3 = "#373434",
    grey = "#393636",
    grey_fg = "#555050",
    grey_fg2 = "#5f5959",
    light_grey = "#6a6363",
    red = "#AF3029",
    baby_pink = "#b0347a",
    pink = "#A02F6F",
    line = "#292626", -- for lines like vertsplit
    green = "#66800B",
    vibrant_green = "#7e9f0e",
    nord_blue = "#4385BE",
    blue = "#4385BE",
    yellow = "#AD8301",
    sun = "#e2ab01",
    purple = "#8265c0",
    dark_purple = "#5E409D",
    teal = "#519ABA",
    orange = "#BC5215",
    cyan = "#268b83",
    statusline_bg = "#171616",
    lightbg = "#292626",
    pmenu_bg = "#268b83",
    folder_bg = "#4385BE",
}

M.base16 = {
    color00 = M.base30.black,
    color01 = M.base30.black2,
    color02 = M.base30.one_bg,
    color03 = M.base30.grey,
    color04 = M.base30.grey_fg,
    color05 = M.base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = M.base30.red,
    color09 = M.base30.orange,
    color0A = M.base30.purple,
    color0B = M.base30.green,
    color0C = M.base30.cyan,
    color0D = M.base30.blue,
    color0E = M.base30.yellow,
    color0F = M.base30.teal,
}

M.polishhl = {
    syntax = {
        Keyword = { fg = M.base30.cyan },
        Include = { fg = M.base30.yellow },
        Tag = { fg = M.base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = M.base30.cyan },
        ["@parameter"] = { fg = M.base30.baby_pink },
        ["@tag.attribute"] = { fg = M.base30.orange },
        ["@tag"] = { fg = M.base30.blue },
        ["@string"] = { fg = M.base30.green },
        ["@text.uri"] = { fg = M.base30.green },
        ["@punctuation.bracket"] = { fg = M.base30.yellow },
    },
}

return M
