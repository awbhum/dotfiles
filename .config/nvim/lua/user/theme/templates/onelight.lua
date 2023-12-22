local M = {}

M.base30 = {
    white = "#54555b",
    darker_black = "#efeff0",
    black = "#fafafa", --  nvim bg
    black2 = "#EAEAEB",
    one_bg = "#dadadb", -- real bg of onedark
    one_bg2 = "#d4d4d5",
    one_bg3 = "#cccccd",
    grey = "#b7b7b8",
    grey_fg = "#b0b0b1",
    grey_fg2 = "#a9a9aa",
    light_grey = "#a2a2a3",
    red = "#d84a3d",
    baby_pink = "#F07178",
    pink = "#ff75a0",
    line = "#e2e2e2", -- for lines like vertsplit
    green = "#50a14f",
    vibrant_green = "#7eca9c",
    nord_blue = "#428bab",
    blue = "#4078f2",
    yellow = "#c18401",
    sun = "#dea95f",
    purple = "#a28dcd",
    dark_purple = "#8e79b9",
    teal = "#519ABA",
    orange = "#FF6A00",
    cyan = "#0b8ec6",
    statusline_bg = "#ececec",
    lightbg = "#d3d3d3",
    pmenu_bg = "#5e5f65",
    folder_bg = "#6C6C6C",
}

M.base16 = {
    color00 = "#fafafa",
    color01 = "#f4f4f4",
    color02 = "#e5e5e6",
    color03 = "#dfdfe0",
    color04 = "#d7d7d8",
    color05 = "#383a42",
    color06 = "#202227",
    color07 = "#090a0b",
    color08 = "#d84a3d",
    color09 = "#d75f00",
    color0A = "#c18401",
    color0B = "#50a14f",
    color0C = "#0070a8",
    color0D = "#4078f2",
    color0E = "#a626a4",
    color0F = "#986801",
}

M.polishhl = {
    telescope = {
        TelescopePromptPrefix = { fg = M.base30.white },
        TelescopeSelection = { bg = M.base30.one_bg, fg = M.base30.white },
    },

    treesitter = {
        ["@punctuation.bracket"] = { fg = M.base30.nord_blue },
    },

    defaults = {
        FloatBorder = { fg = M.base16.color05 },
        Pmenu = { bg = M.base30.black2 },
    },

    git = {
        DiffAdd = { fg = M.base16.color05 },
    },

    tbline = {
        TbLineThemeToggleBtn = { bg = M.base30.one_bg3 },
    },

    whichkey = { WhichKeyDesc = { fg = M.base30.white } },
    statusline = { St_pos_text = { fg = M.base30.white } },
}

return M
