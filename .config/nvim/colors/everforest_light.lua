vim.cmd.syntax("reset")
vim.opt.background = "light"

Base30 = {
    white = "#272f35",
    darker_black = "#f5efde",
    black = "#fff9e8", --  nvim bg
    black2 = "#F0EAD9",
    one_bg = "#E0DAC9",
    one_bg2 = "#D1CBBA",
    one_bg3 = "#C2BCAB",
    grey = "#B3AD9C",
    grey_fg = "#A39D8C",
    grey_fg2 = "#948E7D",
    light_grey = "#857F6E",
    red = "#c85552",
    baby_pink = "#ce8196",
    pink = "#ef6590",
    line = "#e8e2d1", -- for lines like vertsplit
    green = "#5da111",
    vibrant_green = "#87a060",
    nord_blue = "#656c5f",
    blue = "#3a94c5",
    yellow = "#dfa000",
    sun = "#d1b171",
    purple = "#b67996",
    dark_purple = "#966986",
    teal = "#69a59d",
    orange = "#F7954F",
    cyan = "#89bfdc",
    statusline_bg = "#ede7d6",
    lightbg = "#d3cdbc",
    pmenu_bg = "#5f9b93",
    folder_bg = "#747b6e",
}

Base16 = {
    color00 = "#fff9e8",
    color01 = "#f6f0df",
    color02 = "#ede7d6",
    color03 = "#e5dfce",
    color04 = "#ddd7c6",
    color05 = "#495157",
    color06 = "#3b4349",
    color07 = "#272f35",
    color08 = "#5f9b93",
    color09 = "#b67996",
    color0A = "#8da101",
    color0B = "#d59600",
    color0C = "#ef615e",
    color0D = "#87a060",
    color0E = "#c85552",
    color0F = "#c85552",
}

PolishHL = {
    git = {
        DiffAdd = { fg = Base30.green },
    },

    whichkey = {
        WhichKeyDesc = { fg = Base30.white },
        WhichKey = { fg = Base30.white },
    },

    nvimtree = {
        NvimTreeFolderName = { fg = "#4e565c" },
    },

    tbline = {
        TbLineThemeToggleBtn = { bg = Base30.one_bg },
    },

    defaults = {
        Pmenu = { bg = Base30.black2 },
    },
    -- IndentBlanklineContextStart = { bg = Base30.black2 },

    statusline = {
        St_pos_text = { fg = Base30.white },
    },

    treesitter = {
        ["@tag"] = { fg = Base30.orange },
        ["@field"] = { fg = Base16.color05 },
        ["@include"] = { fg = Base16.color08 },
        ["@constructor"] = { fg = Base30.blue },
    },
}
