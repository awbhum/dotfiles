vim.g.colors_name = "poimandres"
vim.cmd.syntax("reset")
vim.opt.background = "light"

local base30 = {
    white = "#E4F0FB",
    ogwhite = "#ffffff",
    black = "#1b1e28",
    darker_black = "#171922",
    black2 = "#222633",
    one_bg = "#2b3040",
    one_bg2 = "#32384a",
    one_bg3 = "#3b4258",
    grey = "#48506a",
    grey_fg = "#515977",
    grey_fg2 = "#5d678a",
    light_grey = "#657096",
    red = "#D0679D",
    baby_pink = "#FAE4FC",
    pink = "#FCC5E9",
    line = "#303340",
    green = "#5FB3A1",
    vibrant_green = "#71bbab",
    nord_blue = "#91B4D5",
    blue = "#89DDFF",
    seablue = "#ADD7FF",
    yellow = "#FFFAC2",
    sun = "#fff691",
    purple = "#A6ACCD",
    dark_purple = "#b6d7f4",
    teal = "#5DE4C7",
    orange = "#91B4D5",
    cyan = "#92e0ff",
    statusline_bg = "#222633",
    lightbg = "#32384a",
    pmenu_bg = "#5FB3A1",
    folder_bg = "#91B4D5",
}

local base16 = {
    color00 = base30.black,
    color01 = base30.one_bg,
    color02 = base30.one_bg2,
    color03 = base30.one_bg3,
    color04 = base30.grey,
    color05 = base30.purple,
    color06 = base30.dark_purple,
    color07 = base30.ogwhite,
    color08 = base30.purple,
    color09 = base30.red,
    color0A = base30.teal,
    color0B = base30.teal,
    color0C = base30.blue,
    color0D = base30.seablue,
    color0E = base30.nord_blue,
    color0F = base30.ogwhite,
}

vim.g.poimandres_base30 = base30
vim.g.poimandres_base16 = base16

local polishhl = {
    treesitter = {
        ["@variable"] = { fg = base30.ogwhite },
        ["@variable.builtin"] = { fg = base30.dark_purple },
        ["@function.call"] = { fg = base30.purple },
        ["@keyword.return"] = { fg = base30.green },
        ["@operator"] = { fg = base30.nord_blue },
        ["@keyword.operator"] = { fg = base30.seablue },
        ["@constant.builtin"] = { fg = base30.seablue },
        ["@constant"] = { fg = base30.white },
        ["@constructor"] = { fg = base30.grey_fg },
        ["@property"] = { fg = base30.seablue },
        ["@punctuation.delimiter"] = { fg = base30.seablue },
        ["@punctuation.special"] = { fg = base30.purple },
        ["@punctuation.bracket"] = { fg = base30.purple },
        ["@type.builtin"] = { link = "Boolean" },
        ["@tag.attribute"] = { fg = base30.purple, italic = true, link = "" },
        ["Label"] = { fg = base30.seablue },
        ["@none"] = { fg = base30.dark_purple },
        ["@constructor.tsx"] = { link = "Tag" },
    },

    telescope = {
        TelescopeMatching = { fg = base30.teal },
    },

    cmp = {
        CmpItemAbbr = { fg = base30.purple },
        CmpItemAbbrMatch = { fg = base30.dark_purple },
        CmpSel = { bg = base30.one_bg2, link = "" },
    },

    syntax = {
        Include = { fg = base30.blue },
        Type = { fg = base30.purple },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
