vim.g.colors_name = "nano_light"
vim.cmd.syntax("reset")
vim.opt.background = "light"

local base30 = {
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

local base16 = {
    color00 = base30.black,
    color01 = base30.black2,
    color02 = base30.one_bg,
    color03 = base30.grey,
    color04 = base30.grey_fg,
    color05 = base30.white,
    color06 = base30.folder_bg,
    color07 = base30.deep_black,
    color08 = base30.purple,
    color09 = base30.faded_grey,
    color0A = base30.purple,
    color0B = base30.faded_grey,
    color0C = base30.purple,
    color0D = base30.deep_black,
    color0E = base30.white,
    color0F = base30.faded_grey,
}

vim.g.nano_light_base30 = base30
vim.g.nano_light_base16 = base16

local polishhl = {
    treesitter = {
        ["@function"] = { bold = true },
        ["@function.builtin"] = { bold = true },
        ["@function.call"] = { bold = true },
        ["@constructor"] = { fg = base30.purple },
        ["@parameter"] = { fg = base30.white },
        ["@namespace"] = { fg = base30.deep_black },
        ["@symbol"] = { fg = base30.purple },
        ["@keyword"] = { fg = base30.purple },
        ["@method.call"] = { bold = true },
    },

    telescope = {
        TelescopeMatching = { fg = base30.purple, bg = base30.one_bg2 },
    },

    nvdash = {
        NvDashAscii = { fg = base30.gray_fg, bg = base30.purple },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
