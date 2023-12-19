vim.g.colors_name = "vscode_dark"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#dee1e6",
    darker_black = "#1a1a1a",
    black = "#1E1E1E", --  nvim bg
    black2 = "#252525",
    one_bg = "#282828",
    one_bg2 = "#313131",
    one_bg3 = "#3a3a3a",
    grey = "#444444",
    grey_fg = "#4e4e4e",
    grey_fg2 = "#585858",
    light_grey = "#626262",
    red = "#D16969",
    baby_pink = "#ea696f",
    pink = "#bb7cb6",
    line = "#2e2e2e", -- for lines like vertsplit
    green = "#B5CEA8",
    green1 = "#4EC994",
    vibrant_green = "#bfd8b2",
    blue = "#569CD6",
    nord_blue = "#60a6e0",
    yellow = "#D7BA7D",
    sun = "#e1c487",
    purple = "#c68aee",
    dark_purple = "#b77bdf",
    teal = "#4294D6",
    orange = "#d3967d",
    cyan = "#9CDCFE",
    statusline_bg = "#242424",
    lightbg = "#303030",
    pmenu_bg = "#60a6e0",
    folder_bg = "#7A8A92",
}

local base16 = {
    --author of this template Tomas Iser, @tomasiser on github,
    color00 = "#1E1E1E",
    color01 = "#262626",
    color02 = "#303030",
    color03 = "#3C3C3C",
    color04 = "#464646",
    color05 = "#D4D4D4",
    color06 = "#E9E9E9",
    color07 = "#FFFFFF",
    color08 = "#D16969",
    color09 = "#B5CEA8",
    color0A = "#D7BA7D",
    color0B = "#BD8D78",
    color0C = "#9CDCFE",
    color0D = "#DCDCAA",
    color0E = "#C586C0",
    color0F = "#E9E9E9",
}

vim.g.vscode_dark_base30 = base30
vim.g.vscode_dark_base16 = base16

local polishhl = {
    treesitter = {
        ["@parameter"] = { fg = base30.blue },
        ["@keyword"] = { fg = base30.blue },
        ["@variable"] = { fg = base30.cyan },
        ["@field.key"] = { fg = base30.green1 },
        ["@keyword.return"] = { fg = base16.color0E },
        ["@keyword.function"] = { fg = base30.teal },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
