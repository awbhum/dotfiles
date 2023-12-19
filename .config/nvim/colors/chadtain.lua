vim.g.colors_name = "chadtain"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#b0b0b0",
    darker_black = "#151b21",
    black = "#1a2026", --  nvim bg
    black2 = "#20262c",
    one_bg = "#242a30",
    one_bg2 = "#292f35",
    one_bg3 = "#2e343a",
    grey = "#42484e",
    grey_fg = "#474d53",
    grey_fg2 = "#50565c",
    light_grey = "#565c62",
    red = "#ac8a8c",
    baby_pink = "#de878f",
    pink = "#e89199",
    line = "#2d3339", -- for lines like vertsplit
    green = "#8aac8b",
    vibrant_green = "#9ec49f",
    blue = "#6b8bab",
    nord_blue = "#7797b7",
    yellow = "#c4c19e",
    sun = "#aca98a",
    purple = "#a39ec4",
    dark_purple = "#8f8aac",
    teal = "#7c9cbc",
    orange = "#C9938A",
    cyan = "#9aafe6",
    statusline_bg = "#1e242a",
    lightbg = "#2d3339",
    pmenu_bg = "#8aac8b",
    folder_bg = "#6b8bab",
}

local base16 = {
    color00 = "#1a2026",
    color01 = "#242a30",
    color02 = "#292f35",
    color03 = "#2e343a",
    color04 = "#42484e",
    color05 = "#bebebe",
    color06 = "#bbbbbb",
    color07 = "#b0b0b0",
    color08 = "#ac8a8c",
    color09 = "#C9938A",
    color0A = "#aca98a",
    color0B = "#8aac8b",
    color0C = "#8aabac",
    color0D = "#7797b7",
    color0E = "#948fb1",
    color0F = "#ac8a8c",
}

vim.g.chadtain_base30 = base30
vim.g.chadtain_base16 = base16

local polishhl = {}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
