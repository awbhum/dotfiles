vim.g.colors_name = "ayu_dark"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#ced4df",
    darker_black = "#05080e",
    black = "#0B0E14", --  nvim bg
    black2 = "#14171d",
    one_bg = "#1c1f25",
    one_bg2 = "#24272d",
    one_bg3 = "#2b2e34",
    grey = "#33363c",
    grey_fg = "#3d4046",
    grey_fg2 = "#46494f",
    light_grey = "#54575d",
    red = "#F07178",
    baby_pink = "#ff949b",
    pink = "#ff8087",
    line = "#24272d", -- for lines like vertsplit
    green = "#AAD84C",
    vibrant_green = "#b9e75b",
    blue = "#36A3D9",
    nord_blue = "#43b0e6",
    yellow = "#E7C547",
    sun = "#f0df8a",
    purple = "#c79bf4",
    dark_purple = "#A37ACC",
    teal = "#74c5aa",
    orange = "#ffa455",
    cyan = "#95E6CB",
    statusline_bg = "#12151b",
    lightbg = "#24272d",
    pmenu_bg = "#ff9445",
    folder_bg = "#98a3af",
}

local base16 = {
    color00 = "#0B0E14",
    color01 = "#1c1f25",
    color02 = "#24272d",
    color03 = "#2b2e34",
    color04 = "#33363c",
    color05 = "#c9c7be",
    color06 = "#E6E1CF",
    color07 = "#D9D7CE",
    color08 = "#c9c7be",
    color09 = "#FFEE99",
    color0A = "#56c3f9",
    color0B = "#AAD84C",
    color0C = "#FFB454",
    color0D = "#F07174",
    color0E = "#FFB454",
    color0F = "#CBA6F7",
}

vim.g.ayu_dark_base30 = base30
vim.g.ayu_dark_base16 = base16

local polishhl = {
    treesitter = {
        luaTSField = { fg = base16.color0D },
        ["@tag.delimiter"] = { fg = base30.cyan },
        ["@function"] = { fg = base30.orange },
        ["@parameter"] = { fg = base16.color0F },
        ["@constructor"] = { fg = base16.color0A },
        ["@tag.attribute"] = { fg = base30.orange },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
