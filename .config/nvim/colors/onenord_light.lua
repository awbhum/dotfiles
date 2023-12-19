vim.g.colors_name = "onenord_light"
vim.cmd.syntax("reset")
vim.opt.background = "light"

local base30 = {
    white = "#2a303c",
    darker_black = "#ced4df",
    black = "#D8DEE9", --  nvim bg
    black2 = "#c9cfda",
    one_bg = "#c7cdd8", -- real bg of onedark
    one_bg2 = "#bdc3ce",
    one_bg3 = "#b3b9c4",
    grey = "#a9afba",
    grey_fg = "#9fa5b0",
    grey_fg2 = "#959ba6",
    light_grey = "#8b919c",
    red = "#a3454e",
    baby_pink = "#ae5059",
    pink = "#c56770",
    line = "#acb2bd", -- for lines like vertsplit
    green = "#75905e",
    vibrant_green = "#809b69",
    nord_blue = "#5b7b9b",
    blue = "#3f5f7f",
    yellow = "#c18401",
    sun = "#dea95f",
    purple = "#9c87c7",
    dark_purple = "#927dbd",
    teal = "#395979",
    orange = "#b46b54",
    cyan = "#6181a1",
    statusline_bg = "#ced4df",
    lightbg = "#bac0cb",
    pmenu_bg = "#7191b1",
    folder_bg = "#616773",
}

local base16 = {
    color00 = "#D8DEE9",
    color01 = "#f4f4f4",
    color02 = "#e5e5e6",
    color03 = "#dfdfe0",
    color04 = "#d7d7d8",
    color05 = "#3e4450",
    color06 = "#272d39",
    color07 = "#2a303c",
    color08 = "#a3454e",
    color09 = "#b46b54",
    color0A = "#b88339",
    color0B = "#75905e",
    color0C = "#5b7b9b",
    color0D = "#3f5f7f",
    color0E = "#8d6786",
    color0F = "#a3454e",
}

vim.g.onenord_light_base30 = base30
vim.g.onenord_light_base16 = base16

local polishhl = {
    whichkey = {
        WhichKeyDesc = { fg = base30.white },
        WhichKey = { fg = base30.white },
    },

    telescope = {
        TelescopePromptPrefix = { fg = base30.white },
        TelescopeSelection = { bg = base30.one_bg, fg = base30.white },
    },

    treesitter = {
        ["@punctuation.bracket"] = { fg = base30.nord_blue },
    },

    defaults = { FloatBorder = { fg = base16.color05 } },

    statusline = {
        St_pos_text = { fg = base30.white },
    },

    git = {
        DiffAdd = { fg = base16.color05 },
    },
}

for _, file in pairs(vim.g.themeintegrations) do
    local path = "user.theme.integrations." .. file
    for k, v in pairs(require(path).set(base16, base30)) do
        vim.api.nvim_set_hl(0, k, v)
    end
end
