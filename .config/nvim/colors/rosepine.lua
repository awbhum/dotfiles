vim.g.colors_name = "rosepine"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    black = "#191724", --  nvim bg
    darker_black = "#13111e",
    white = "#e0def4",
    black2 = "#1f1d2a",
    one_bg = "#262431", -- real bg of onedark
    one_bg2 = "#2d2b38",
    one_bg3 = "#353340",
    grey = "#3f3d4a",
    grey_fg = "#474552",
    grey_fg2 = "#514f5c",
    light_grey = "#5d5b68",
    red = "#eb6f92",
    baby_pink = "#f5799c",
    pink = "#ff83a6",
    line = "#2e2c39", -- for lines like vertsplit
    green = "#ABE9B3",
    vibrant_green = "#b5f3bd",
    nord_blue = "#86b9c2",
    blue = "#8bbec7",
    yellow = "#f6c177",
    sun = "#fec97f",
    purple = "#c4a7e7",
    dark_purple = "#bb9ede",
    teal = "#6aadc8",
    orange = "#f6c177",
    cyan = "#a3d6df",
    statusline_bg = "#201e2b",
    lightbg = "#2d2b38",
    pmenu_bg = "#c4a7e7",
    folder_bg = "#6aadc8",
}

local base16 = {
    color00 = "#191724",
    color01 = "#1f1d2e",
    color02 = "#26233a",
    color03 = "#6e6a86",
    color04 = "#908caa",
    color05 = "#e0def4",
    color06 = "#e0def4",
    color07 = "#524f67",
    color08 = "#eb6f92",
    color09 = "#f6c177",
    color0A = "#ebbcba",
    color0B = "#31748f",
    color0C = "#9ccfd8",
    color0D = "#c4a7e7",
    color0E = "#f6c177",
    color0F = "#524f67",
}

vim.g.rosepine_base30 = base30
vim.g.rosepine_base16 = base16

local polishhl = {}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
