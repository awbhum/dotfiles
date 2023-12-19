vim.g.colors_name = "gatekeeper"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#cccdd1",
    darker_black = "#0a0a0a",
    black = "#101010", --  nvim bg
    black2 = "#181818",
    one_bg = "#1e1e1e",
    one_bg2 = "#252525",
    one_bg3 = "#2c2c2c",
    grey = "#363636",
    grey_fg = "#3d3d3d",
    grey_fg2 = "#454545",
    light_grey = "#4d4d4d",
    red = "#ff1a67",
    baby_pink = "#ff86b7",
    pink = "#ff77a8",
    line = "#2c2c2c", -- for lines like vertsplit
    green = "#00e756",
    vibrant_green = "#10f766",
    blue = "#29adff",
    nord_blue = "#5c6ab2",
    yellow = "#fff024",
    sun = "#fff82c",
    purple = "#a79ac0",
    dark_purple = "#998cb2",
    teal = "#0b925c",
    orange = "#ffa300",
    cyan = "#29adff",
    statusline_bg = "#181818",
    lightbg = "#272727",
    pmenu_bg = "#5c6ab2",
    folder_bg = "#29adff",
}

local base16 = {
    color00 = "#101010",
    color01 = "#171717",
    color02 = "#1e1e1e",
    color03 = "#252525",
    color04 = "#2c2c2c",
    color05 = "#d8d9dd",
    color06 = "#d2d3d7",
    color07 = "#cccdd1",
    color08 = "#ffb20f",
    color09 = "#ff004d",
    color0A = "#be620a",
    color0B = "#00e756",
    color0C = "#29adff",
    color0D = "#c54bcf",
    color0E = "#ff4394",
    color0F = "#ffccaa",
}

vim.g.gatekeeper_base30 = base30
vim.g.gatekeeper_base16 = base16

local polishhl = {
    treesitter = {
        ["@variable"] = { fg = base30.orange },
        ["@parameter"] = { fg = base30.white },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
