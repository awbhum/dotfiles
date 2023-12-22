local M = {}

M.type = "dark"

M.base30 = {
    white = "#d9e0ee",
    darker_black = "#272734",
    black = "#292A37",
    black2 = "#2e2f3e",
    one_bg = "#343545",
    one_bg2 = "#3c3e51",
    one_bg3 = "#45475d",
    grey = "#50526b",
    grey_fg = "#555772",
    grey_fg2 = "#606281",
    light_grey = "#67698a",
    red = "#ec6a88",
    baby_pink = "#ff8cbe",
    pink = "#ff7eb6",
    line = "#383747",
    green = "#3FDAA4",
    vibrant_green = "#08bdba",
    nord_blue = "#78a9ff",
    blue = "#78a9ff",
    yellow = "#e1c697",
    sun = "#E8D4B0",
    purple = "#be95ff",
    dark_purple = "#936FDC",
    teal = "#09deda",
    orange = "#efb993",
    cyan = "#6be6e6",
    statusline_bg = "#2e2f3e",
    lightbg = "#3c3e51",
    pmenu_bg = "#6be6e6",
    folder_bg = "#78a9ff",
    -- lavender = "#c7d1ff",
}

M.base16 = {
    color00 = "#292A37",
    color01 = M.base30.one_bg,
    color02 = M.base30.one_bg2,
    color03 = M.base30.one_bg3,
    color04 = M.base30.grey,
    color05 = "#c0cbe3",
    color06 = "#d9e0ee",
    color07 = "#ffffff",
    color08 = "#ec6a88",
    color09 = "#efb993",
    color0A = M.base30.yellow,
    color0B = "#3FDAA4",
    color0C = "#ff7eb6",
    color0D = "#3FC6DE",
    color0E = M.base30.purple,
    color0F = "#8b8da9",
}

M.polishhl = {
    syntax = {
        Conditional = {
            fg = M.base30.nord_blue,
        },

        Tag = {
            fg = M.base30.red,
        },
    },
}

return M
