vim.g.colors_name = "pasteldark"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#b5bcc9",
    darker_black = "#10171e",
    black = "#131a21", --  nvim bg
    black2 = "#1a2128",
    one_bg = "#1e252c",
    one_bg2 = "#2a3138",
    one_bg3 = "#363d44",
    grey = "#363d44",
    grey_fg = "#4e555c",
    grey_fg2 = "#51585f",
    light_grey = "#545b62",
    red = "#ef8891",
    baby_pink = "#fca2aa",
    pink = "#fca2af",
    line = "#272e35", -- for lines like vertsplit
    green = "#9fe8c3",
    vibrant_green = "#9ce5c0",
    blue = "#99aee5",
    nord_blue = "#9aa8cf",
    yellow = "#fbdf90",
    sun = "#fbdf9a",
    purple = "#c2a2e3",
    dark_purple = "#b696d7",
    teal = "#92dbb6",
    orange = "#EDA685",
    cyan = "#b5c3ea",
    statusline_bg = "#181f26",
    lightbg = "#222930",
    pmenu_bg = "#ef8891",
    folder_bg = "#99aee5",
}

local base16 = {
    color0A = "#f5d595",
    color04 = "#4f565d",
    color07 = "#b5bcc9",
    color05 = "#ced4df",
    color0E = "#c2a2e3",
    color0D = "#a3b8ef",
    color0C = "#abb9e0",
    color0B = "#9ce5c0",
    color02 = "#31383f",
    color0F = "#e88e9b",
    color03 = "#40474e",
    color08 = "#ef8891",
    color01 = "#2c333a",
    color00 = "#131a21",
    color09 = "#EDA685",
    color06 = "#d3d9e4",
}

vim.g.pasteldark_base30 = base30
vim.g.pasteldark_base16 = base16

local polishhl = {}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
