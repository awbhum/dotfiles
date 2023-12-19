vim.g.colors_name = "monochrome"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#D8DEE9",
    darker_black = "#1a1a1a",
    black = "#101010", --  nvim bg
    black2 = "#202020",
    one_bg = "#242424",
    one_bg2 = "#2e2e2e",
    one_bg3 = "#383838",
    grey = "#424242",
    grey_fg = "#4c4c4c",
    grey_fg2 = "#606060",
    light_grey = "#677777",
    red = "#ec8989",
    baby_pink = "#eca8a8",
    pink = "#da838b",
    line = "#2e2e2e", -- for lines like vertsplit
    green = "#c9d36a",
    vibrant_green = "#eff6ab",
    blue = "#8abae1",
    nord_blue = "#a5c6e1",
    yellow = "#ffe6b5",
    sun = "#eff6ab",
    purple = "#e1bee9",
    dark_purple = "#db9fe9",
    teal = "#6484a4",
    orange = "#efb6a0",
    cyan = "#9aafe6",
    statusline_bg = "#1e1e1e",
    lightbg = "#2e2e2e",
    pmenu_bg = "#859ba2",
    folder_bg = "#7797b7",
}

local base16 = {
    color00 = "#101010",
    color01 = "#1f1f1f",
    color02 = "#2e2e2e",
    color03 = "#383838",
    color04 = "#424242",
    color05 = "#bfc5d0",
    color06 = "#c7cdd8",
    color07 = "#ced4df",
    color08 = "#eee8d5",
    color09 = "#B8B7B1",
    color0A = "#859ba2",
    color0B = "#7b9198",
    color0C = "#DFDFDA",
    color0D = "#ced4df",
    color0E = "#DAD4C3",
    color0F = "#ced4df",
}

vim.g.monochrome_base30 = base30
vim.g.monochrome_base16 = base16

local polishhl = {
    treesitter = {
        ["@punctuation.bracket"] = { fg = base30.red },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
