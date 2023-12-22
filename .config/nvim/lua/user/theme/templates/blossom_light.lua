local M = {}

M.type = "light"

M.base30 = {
    white = "#695d57",
    darker_black = "#dfd8d5",
    black = "#e6dfdc", --  nvim bg
    black2 = "#d9d2cf",
    one_bg = "#d0c9c6",
    one_bg2 = "#c7c0bd",
    one_bg3 = "#c0b9b6",
    grey = "#b9b2af",
    grey_fg = "#b2aba8",
    grey_fg2 = "#aaa3a0",
    light_grey = "#a09996",
    red = "#b28069",
    baby_pink = "#b7856e",
    pink = "#c18f78",
    line = "#d3ccc9", -- for lines like vertsplit
    green = "#6c805c",
    vibrant_green = "#899d79",
    blue = "#5f7d9b",
    nord_blue = "#5e5f65",
    yellow = "#a9a29f",
    sun = "#d38a73",
    purple = "#a685a6",
    dark_purple = "#9c7b9c",
    teal = "#4b6987",
    orange = "#cc836c",
    cyan = "#75998e",
    statusline_bg = "#dcd5d2",
    lightbg = "#cdc6c3",
    pmenu_bg = "#857e7b",
    folder_bg = "#746d6a",
}

M.base16 = {
    color00 = "#e6dfdc",
    color01 = "#ded7d4",
    color02 = "#d7d0cd",
    color03 = "#d1cac7",
    color04 = "#cac3c0",
    color05 = "#746862",
    color06 = "#5e524c",
    color07 = "#695d57",
    color08 = "#8779a8",
    color09 = "#a87678",
    color0A = "#738199",
    color0B = "#6c805c",
    color0C = "#5e908e",
    color0D = "#b3816a",
    color0E = "#7e8e8e",
    color0F = "#976153",
}

M.polishhl = {
    whichkey = {
        WhichKeyDesc = { fg = M.base30.white },
        WhichKey = { fg = M.base30.white },
    },

    tbline = {
        TbLineThemeToggleBtn = {
            fg = M.base30.black,
            bg = M.base30.white,
        },
    },

    -- IndentBlanklineContextStart = { bg = M.base30.black2 },
    statusline = {
        St_pos_text = { fg = M.base30.white },
    },
}

return M
