vim.g.colors_name = "oceanic_next"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#D8DEE9", -- confirmed
    darker_black = "#15252e",
    black = "#1B2B34", --  nvim bg
    black2 = "#21313a",
    one_bg = "#25353e",
    one_bg2 = "#2e3e47",
    one_bg3 = "#36464f",
    grey = "#43535c",
    grey_fg = "#4d5d66",
    grey_fg2 = "#576770",
    light_grey = "#5f6f78",
    red = "#EC5F67",
    baby_pink = "#ff7d85",
    pink = "#ffafb7",
    line = "#2a3a43", -- for lines like vertsplit
    green = "#99C794",
    vibrant_green = "#b9e75b",
    nord_blue = "#598cbf",
    blue = "#6699CC",
    yellow = "#FAC863",
    sun = "#ffd06b",
    purple = "#C594C5",
    dark_purple = "#ac7bac",
    teal = "#50a4a4",
    orange = "#F99157",
    cyan = "#62B3B2",
    statusline_bg = "#1f2f38",
    lightbg = "#2c3c45",
    pmenu_bg = "#15bf84",
    folder_bg = "#598cbf",
}

-- base16 colors taken from:
local base16 = {
    color00 = "#1B2B34",
    color01 = "#343D46",
    color02 = "#4F5B66",
    color03 = "#65737e",
    color04 = "#A7ADBa",
    color05 = "#C0C5Ce",
    color06 = "#CDD3De",
    color07 = "#D8DEE9",
    color08 = "#6cbdbc",
    color09 = "#FAC863",
    color0A = "#F99157",
    color0B = "#99C794",
    color0C = "#5aaeae",
    color0D = "#6699CC",
    color0E = "#C594C5",
    color0F = "#EC5F67",
}

vim.g.oceanic_next_base30 = base30
vim.g.oceanic_next_base16 = base16

local polishhl = {
    treesitter = {
        ["@parameter"] = { fg = base16.color0A },
    },

    syntax = {
        Constant = { fg = base16.color09 },
    },


for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
