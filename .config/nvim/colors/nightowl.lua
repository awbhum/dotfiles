vim.g.colors_name = "nightowl"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#d6deeb",
    darker_black = "#010f20",
    black = "#011627",
    black2 = "#091e2f",
    one_bg = "#112637", -- real bg of onedark
    one_bg2 = "#1b3041",
    one_bg3 = "#253a4b",
    grey = "#2c4152",
    grey_fg = "#34495a",
    grey_fg2 = "#3c5162",
    light_grey = "#495e6f",
    red = "#f78c6c",
    baby_pink = "#ff6cca",
    pink = "#fa58b6",
    line = "#182d3e",
    green = "#29E68E",
    vibrant_green = "#22da6e",
    blue = "#82aaff",
    nord_blue = "#78a0f5",
    yellow = "#ffcb8b",
    sun = "#ffe9a9",
    purple = "#c792ea",
    dark_purple = "#a974cc",
    teal = "#96CEB4",
    orange = "#FFAD60",
    cyan = "#aad2ff",
    statusline_bg = "#051a2b",
    lightbg = "#1a2f40",
    pmenu_bg = "#82aaff",
    folder_bg = "#82aaff",
}

local base16 = {
    color00 = "#011627",
    color01 = "#0c2132",
    color02 = "#172c3d",
    color03 = "#223748",
    color04 = "#2c4152",
    color05 = "#ced6e3",
    color06 = "#d6deeb",
    color07 = "#feffff",
    color08 = "#ecc48d",
    color09 = "#f78c6c",
    color0A = "#c792ea",
    color0B = "#29E68E",
    color0C = "#aad2ff",
    color0D = "#82aaff",
    color0E = "#c792ea",
    color0F = "#f78c6c",
}

vim.g.nightowl_base30 = base30
vim.g.nightowl_base16 = base16

local polishhl = {
    treesitter = {
        ["@parameter"] = { fg = base30.orange },
        ["@keyword.return"] = { fg = base30.cyan },
        ["@conditional"] = { fg = base30.cyan },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
