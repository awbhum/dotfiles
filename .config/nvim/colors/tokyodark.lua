vim.g.colors_name = "tokyodark"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#A0A8CD",
    darker_black = "#0c0d18",
    black = "#11121D", --  nvim bg
    black2 = "#171823",
    one_bg = "#1d1e29",
    one_bg2 = "#252631",
    one_bg3 = "#252631",
    grey = "#474853",
    grey_fg = "#474853",
    grey_fg2 = "#4e4f5a",
    light_grey = "#545560",
    red = "#ee6d85",
    baby_pink = "#fd7c94",
    pink = "#fe6D85",
    line = "#252631",
    green = "#98c379",
    vibrant_green = "#95c561",
    nord_blue = "#648ce1",
    blue = "#7199ee",
    yellow = "#d7a65f",
    sun = "#dfae67",
    purple = "#a485dd",
    dark_purple = "#9071c9",
    teal = "#519aba",
    orange = "#f6955b",
    cyan = "#38a89d",
    statusline_bg = "#161722",
    lightbg = "#2a2b36",
    pmenu_bg = "#ee6d85",
    folder_bg = "#7199ee",
}

local base16 = {
    color00 = "#11121d",
    color01 = "#1b1c27",
    color02 = "#21222d",
    color03 = "#282934",
    color04 = "#30313c",
    color05 = "#abb2bf",
    color06 = "#b2b9c6",
    color07 = "#A0A8CD",
    color08 = "#ee6d85",
    color09 = "#7199ee",
    color0A = "#7199ee",
    color0B = "#dfae67",
    color0C = "#a485dd",
    color0D = "#95c561",
    color0E = "#a485dd",
    color0F = "#f3627a",
}

vim.g.tokyodark_base30 = base30
vim.g.tokyodark_base16 = base16

local polishhl = {}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
