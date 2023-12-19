vim.g.colors_name = "melange"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#ECE1D7",
    darker_black = "#241f1a",
    black = "#2A2520", -- nvim bg
    black2 = "#342f2a",
    one_bg = "#39342f",
    one_bg2 = "#433e39",
    one_bg3 = "#4d4843",
    grey = "#57524d",
    grey_fg = "#605b56",
    grey_fg2 = "#6b6661",
    light_grey = "#75706b",
    red = "#B65C60",
    baby_pink = "#CE9BCB",
    pink = "#B65C60",
    line = "#39342f", -- for lines like vertsplit
    green = "#86A3A3",
    vibrant_green = "#99D59D",
    nord_blue = "#88B3B2",
    blue = "#9AACCE",
    yellow = "#e3b865",
    sun = "#EBC06D",
    purple = "#c47fd5",
    dark_purple = "#b570c6",
    teal = "#697893",
    orange = "#E49B5D",
    firered = "#F17C64",
    cyan = "#bbcdef",
    statusline_bg = "#312c27",
    lightbg = "#433e39",
    pmenu_bg = "#86A3A3",
    folder_bg = "#697893",
}

local base16 = {
    color00 = "#2A2520",
    color01 = "#39342f",
    color02 = "#433e39",
    color03 = "#4d4843",
    color04 = "#57524d",
    color05 = "#ECE1D7",
    color06 = "#e3d8ce",
    color07 = "#d8cdc3",
    color08 = "#ECE1D7",
    color09 = "#86A3A3",
    color0A = "#99D59D",
    color0B = "#9AACCE",
    color0C = "#EBC06D",
    color0D = "#EBC06D",
    color0E = "#E49B5D",
    color0F = "#8E733F",
}

vim.g.melange_base30 = base30
vim.g.melange_base16 = base16

local polishhl = {
    treesitter = {
        ["@field"] = { fg = base30.white },
        ["@field.key"] = { fg = base30.white },
        ["@function.macro"] = {
            fg = base30.vibrant_green,
        },
    },

    syntax = {
        Include = { fg = base30.vibrant_green },
        Operator = { fg = base30.firered },
        Boolean = { fg = base30.purple },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
