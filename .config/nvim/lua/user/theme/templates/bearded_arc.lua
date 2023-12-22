local M = {}

M.base30 = {
    white = "#ABB7C1",
    darker_black = "#19212e",
    black = "#1c2433", -- nvim bg
    black2 = "#232b3a",
    one_bg = "#262e3d",
    one_bg2 = "#303847",
    one_bg3 = "#3a4251",
    grey = "#444c5b",
    grey_fg = "#4e5665",
    grey_fg2 = "#58606f",
    light_grey = "#626a79",
    red = "#FF738A",
    baby_pink = "#F38CEC",
    pink = "#ee9cdd",
    line = "#303847", -- for lines like vertsplit
    green = "#3CEC85",
    vibrant_green = "#9bdead",
    nord_blue = "#6da4cd",
    blue = "#69C3FF",
    yellow = "#EACD61",
    sun = "#f6d96d",
    purple = "#bd93ff",
    dark_purple = "#B78AFF",
    teal = "#12c7c4",
    orange = "#FF955C",
    cyan = "#22ECDB",
    statusline_bg = "#232b3a",
    lightbg = "#303847",
    pmenu_bg = "#3CEC85",
    folder_bg = "#69C3FF",
}

M.base16 = {
    color00 = "#1c2433",
    color01 = "#262e3d",
    color02 = "#303847",
    color03 = "#444c5b",
    color04 = "#a1adb7",
    color05 = "#c3cfd9",
    color06 = "#ABB7C1",
    color07 = "#08bdba",
    color08 = "#FF738A",
    color09 = "#FF955C",
    color0A = "#EACD61",
    color0B = "#3CEC85",
    color0C = "#77aed7",
    color0D = "#69C3FF",
    color0E = "#22ECDB",
    color0F = "#B78AFF",
}

M.polishhl = {
    treesitter = {
        ["@parameter"] = { fg = M.base30.pink },
        ["@attribute"] = { fg = M.base30.purple },
    },
}

return M
