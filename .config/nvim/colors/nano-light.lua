vim.cmd.syntax("reset")
vim.opt.background = "light"

Base30 = {
    deep_black = "#263238",
    white = "#37474F",
    darker_black = "#f7f7f7",
    black = "#FFFfff", --  nvim bg
    black2 = "#ECEFF1",
    one_bg = "#ebebeb", -- real bg of onedark
    one_bg2 = "#e0e0e0",
    one_bg3 = "#d4d4d4",
    grey = "#c4c4c4",
    grey_fg = "#b5b5b5",
    grey_fg2 = "#a3a3a3",
    light_grey = "#848484",
    faded_grey = "#8497a0",
    red = "#EF5350",
    tintred = "#BF616A",
    baby_pink = "#b55dc4",
    pink = "#AB47BC",
    line = "#e0e0e0", -- for lines like vertsplit
    green = "#66BB6A",
    vibrant_green = "#75c279",
    nord_blue = "#42A5F5",
    blue = "#42A5F5",
    yellow = "#d0b22b",
    sun = "#E2C12F",
    purple = "#673AB7",
    dark_purple = "#673AB7",
    teal = "#008080",
    orange = "#FF6F00",
    cream = "#e09680",
    clay = "#D08770",
    cyan = "#26C6DA",
    statusline_bg = "#ECEFF1",
    lightbg = "#e0e0e0",
    pmenu_bg = "#673AB7",
    folder_bg = "#4C566A",
}

Base16 = {
    color00 = Base30.black,
    color01 = Base30.black2,
    color02 = Base30.one_bg,
    color03 = Base30.grey,
    color04 = Base30.grey_fg,
    color05 = Base30.white,
    color06 = Base30.folder_bg,
    color07 = Base30.deep_black,
    color08 = Base30.purple,
    color09 = Base30.faded_grey,
    color0A = Base30.purple,
    color0B = Base30.faded_grey,
    color0C = Base30.purple,
    color0D = Base30.deep_black,
    color0E = Base30.white,
    color0F = Base30.faded_grey,
}

PolishHL = {
    treesitter = {
        ["@function"] = { bold = true },
        ["@function.builtin"] = { bold = true },
        ["@function.call"] = { bold = true },
        ["@constructor"] = { fg = Base30.purple },
        ["@parameter"] = { fg = Base30.white },
        ["@namespace"] = { fg = Base30.deep_black },
        ["@symbol"] = { fg = Base30.purple },
        ["@keyword"] = { fg = Base30.purple },
        ["@method.call"] = { bold = true },
    },

    telescope = {
        TelescopeMatching = { fg = Base30.purple, bg = Base30.one_bg2 },
    },

    nvdash = {
        NvDashAscii = { fg = Base30.gray_fg, bg = Base30.purple },
    },
}
