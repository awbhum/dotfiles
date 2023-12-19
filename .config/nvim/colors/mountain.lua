vim.g.colors_name = "mountain"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#F0f0f0",
    darker_black = "#090909",
    black = "#0f0f0f", --  nvim bg
    black2 = "#181818",
    one_bg = "#191919",
    one_bg2 = "#222222",
    one_bg3 = "#2a2a2a",
    grey = "#373737",
    grey_fg = "#414141",
    grey_fg2 = "#4b4b4b",
    light_grey = "#535353",
    red = "#ac8a8c",
    baby_pink = "#bb999b",
    pink = "#AC8AAC",
    line = "#242424", -- for lines like vertsplit
    green = "#8aac8b",
    vibrant_green = "#99bb9a",
    blue = "#9691b3",
    nord_blue = "#8F8AAC",
    yellow = "#ACA98A",
    sun = "#b3b091",
    purple = "#C49EC4",
    dark_purple = "#b58fb5",
    teal = "#8fb4b5",
    orange = "#9d9a7b",
    cyan = "#9EC3C4",
    statusline_bg = "#131313",
    lightbg = "#292929",
    pmenu_bg = "#8aac8b",
    folder_bg = "#8F8AAC",
}

local base16 = {
    color00 = "#0f0f0f",
    color01 = "#151515",
    color02 = "#191919",
    color03 = "#222222",
    color04 = "#535353",
    color05 = "#d8d8d8",
    color06 = "#e6e6e6",
    color07 = "#f0f0f0",
    color08 = "#b18f91",
    color09 = "#d8bb92",
    color0A = "#b1ae8f",
    color0B = "#8aac8b",
    color0C = "#91b2b3",
    color0D = "#a5a0c2",
    color0E = "#ac8aac",
    color0F = "#b39193",
}

vim.g.mountain_base30 = base30
vim.g.mountain_base16 = base16

local polishhl = {
    treesitter = {
        ["@variable"] = { fg = base16.color05 },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
