vim.g.colors_name = "rxyhn"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#D9D7D6",
    darker_black = "#000a0e",
    black = "#061115", --  nvim bg
    black2 = "#0d181c",
    one_bg = "#131e22",
    one_bg2 = "#1c272b",
    one_bg3 = "#242f33",
    grey = "#313c40",
    grey_fg = "#3b464a",
    grey_fg2 = "#455054",
    light_grey = "#4f5a5e",
    red = "#DF5B61",
    baby_pink = "#EE6A70",
    pink = "#F16269",
    line = "#222d31", -- for lines like vertsplit
    green = "#78B892",
    vibrant_green = "#8CD7AA",
    nord_blue = "#5A84BC",
    blue = "#6791C9",
    yellow = "#ecd28b",
    sun = "#f6dc95",
    purple = "#C488EC",
    dark_purple = "#BC83E3",
    teal = "#7ACFE4",
    orange = "#E89982",
    cyan = "#67AFC1",
    statusline_bg = "#0A1519",
    lightbg = "#1a2529",
    pmenu_bg = "#78B892",
    folder_bg = "#6791C9",
}

local base16 = {
    color00 = "#061115",
    color01 = "#0C171B",
    color02 = "#101B1F",
    color03 = "#192428",
    color04 = "#212C30",
    color05 = "#D9D7D6",
    color06 = "#E3E1E0",
    color07 = "#EDEBEA",
    color08 = "#f26e74",
    color09 = "#ecd28b",
    color0A = "#E9967E",
    color0B = "#82c29c",
    color0C = "#6791C9",
    color0D = "#79AAEB",
    color0E = "#C488EC",
    color0F = "#F16269",
}

vim.g.rxyhn_base30 = base30
vim.g.rxyhn_base16 = base16

local polishhl = {}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
