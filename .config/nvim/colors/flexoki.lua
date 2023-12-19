vim.g.colors_name = "flexoki"
vim.cmd.syntax("reset")
vim.opt.background = "dark"

local base30 = {
    white = "#CECDC3",
    darker_black = "#171616",
    black = "#100F0F", --  nvim bg
    black2 = "#1c1b1b",
    one_bg = "#292626", -- real bg of onedark
    one_bg2 = "#353232",
    one_bg3 = "#373434",
    grey = "#393636",
    grey_fg = "#555050",
    grey_fg2 = "#5f5959",
    light_grey = "#6a6363",
    red = "#AF3029",
    baby_pink = "#b0347a",
    pink = "#A02F6F",
    line = "#292626", -- for lines like vertsplit
    green = "#66800B",
    vibrant_green = "#7e9f0e",
    nord_blue = "#4385BE",
    blue = "#4385BE",
    yellow = "#AD8301",
    sun = "#e2ab01",
    purple = "#8265c0",
    dark_purple = "#5E409D",
    teal = "#519ABA",
    orange = "#BC5215",
    cyan = "#268b83",
    statusline_bg = "#171616",
    lightbg = "#292626",
    pmenu_bg = "#268b83",
    folder_bg = "#4385BE",
}

local base16 = {
    color00 = base30.black,
    color01 = base30.black2,
    color02 = base30.one_bg,
    color03 = base30.grey,
    color04 = base30.grey_fg,
    color05 = base30.white,
    color06 = "#b6bdca",
    color07 = "#c8ccd4",
    color08 = base30.red,
    color09 = base30.orange,
    color0A = base30.purple,
    color0B = base30.green,
    color0C = base30.cyan,
    color0D = base30.blue,
    color0E = base30.yellow,
    color0F = base30.teal,
}

vim.g.flexoki_base30 = base30
vim.g.flexoki_base16 = base16

local polishhl = {
    syntax = {
        Keyword = { fg = base30.cyan },
        Include = { fg = base30.yellow },
        Tag = { fg = base30.blue },
    },
    treesitter = {
        ["@keyword"] = { fg = base30.cyan },
        ["@parameter"] = { fg = base30.baby_pink },
        ["@tag.attribute"] = { fg = base30.orange },
        ["@tag"] = { fg = base30.blue },
        ["@string"] = { fg = base30.green },
        ["@text.uri"] = { fg = base30.green },
        ["@punctuation.bracket"] = { fg = base30.yellow },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
