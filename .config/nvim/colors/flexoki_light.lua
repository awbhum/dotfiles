vim.g.colors_name = "flexoki_light"
vim.cmd.syntax("reset")
vim.opt.background = "light"

local base30 = {
    white = "#2a2929",
    darker_black = "#f7f4e9",
    black = "#FFFCF0", --  nvim bg
    black2 = "#f2efe4",
    one_bg = "#ebe8dd", -- real bg of onedark
    one_bg2 = "#d6d4ca",
    one_bg3 = "#c7c5bb",
    grey = "#b8b5ad",
    grey_fg = "#adaba3",
    grey_fg2 = "#a3a19a",
    light_grey = "#94928b",
    red = "#D14D41",
    baby_pink = "#d574a6",
    pink = "#CE5D97",
    line = "#d6d4ca", -- for lines like vertsplit
    green = "#879A39",
    vibrant_green = "#66800B",
    nord_blue = "#4385BE",
    blue = "#4385BE",
    yellow = "#D0A215",
    sun = "#d2a721",
    purple = "#8B7EC8",
    dark_purple = "#8376bc",
    teal = "#008080",
    orange = "#DA702C",
    cyan = "#3AA99F",
    statusline_bg = "#f7f4e9",
    lightbg = "#ebe8dd",
    pmenu_bg = "#3AA99F",
    folder_bg = "#4385BE",
}

local base16 = {
    color00 = base30.black,
    color01 = base30.black2,
    color02 = base30.one_bg,
    color03 = base30.grey,
    color04 = base30.grey_fg,
    color05 = base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = base30.red,
    color09 = base30.orange,
    color0A = base30.purple,
    color0B = base30.green,
    color0C = base30.cyan,
    color0D = base30.blue,
    color0E = base30.yellow,
    color0F = base30.teal,
}

vim.g.flexoki_light_base30 = base30
vim.g.flexoki_light_base16 = base16

local polishhl = {
    syntax = {
        Keyword = { fg = base30.cyan },
        Include = { fg = base30.yellow },
        Tag = { fg = base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = base30.cyan },
        ["@parameter"] = { fg = base30.baby_pink },
        ["@tag.attribute"] = { fg = base30.orange },
        ["@tag"] = { fg = base30.blue },
        ["@string"] = { fg = base30.green },
        ["@text.uri"] = { fg = base30.green },
        ["@punctuation.bracket"] = { fg = base30.yellow },
        ["@constant.lua"] = { fg = base30.white },
    },

    telescope = {
        TelescopeMatching = { fg = base30.dark_purple, bg = base30.one_bg },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
