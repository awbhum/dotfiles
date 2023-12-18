vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
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

Base16 = {
    color00 = Base30.black,
    color01 = Base30.black2,
    color02 = Base30.one_bg,
    color03 = Base30.grey,
    color04 = Base30.grey_fg,
    color05 = Base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = Base30.red,
    color09 = Base30.orange,
    color0A = Base30.purple,
    color0B = Base30.green,
    color0C = Base30.cyan,
    color0D = Base30.blue,
    color0E = Base30.yellow,
    color0F = Base30.teal,
}

PolishHL = {
    syntax = {
        Keyword = { fg = Base30.cyan },
        Include = { fg = Base30.yellow },
        Tag = { fg = Base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = Base30.cyan },
        ["@parameter"] = { fg = Base30.baby_pink },
        ["@tag.attribute"] = { fg = Base30.orange },
        ["@tag"] = { fg = Base30.blue },
        ["@string"] = { fg = Base30.green },
        ["@text.uri"] = { fg = Base30.green },
        ["@punctuation.bracket"] = { fg = Base30.yellow },
    },
}
