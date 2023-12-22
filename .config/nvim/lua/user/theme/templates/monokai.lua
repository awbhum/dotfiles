local M = {}

M.type = "dark"

M.base30 = {
    white = "#f5f4f1",
    darker_black = "#22231D",
    black = "#272822", --  nvim bg
    black2 = "#2F302A",
    one_bg = "#363731", -- real bg of onedark
    one_bg2 = "#3E3F39",
    one_bg3 = "#464741",
    grey = "#4D4E48",
    grey_fg = "#555650",
    grey_fg2 = "#5D5E58",
    light_grey = "#64655F",
    red = "#e36d76",
    baby_pink = "#f98385",
    pink = "#f36d76",
    line = "#363942", -- for lines like vertsplit
    green = "#96c367",
    vibrant_green = "#99c366",
    nord_blue = "#81A1C1",
    blue = "#51afef",
    yellow = "#e6c181",
    sun = "#fce668",
    purple = "#c885d7",
    dark_purple = "#b26fc1",
    teal = "#34bfd0",
    orange = "#d39467",
    cyan = "#41afef",
    statusline_bg = "#2F302A",
    lightbg = "#3E3F39",
    pmenu_bg = "#99c366",
    folder_bg = "#61afef",
}

M.base16 = {
    color00 = "#272822",
    color01 = "#383830",
    color02 = "#49483e",
    color03 = "#75715e",
    color04 = "#a59f85",
    color05 = "#f8f8f2",
    color06 = "#f5f4f1",
    color07 = "#f9f8f5",
    color08 = "#fd971f",
    color09 = "#ae81ff",
    color0A = "#f4bf75",
    color0B = "#a6e22e",
    color0C = "#a1efe4",
    color0D = "#66d9ef",
    color0E = "#f92672",
    color0F = "#cc6633",
}

M.polishhl = {
    treesitter = {
        ["parameter"] = { fg = M.base30.blue },
        ["@field.key"] = { fg = M.base30.white },
        ["@string"] = { fg = M.base30.sun },
        ["@boolean"] = { fg = M.base16.color09 },
        ["@punctuation.bracket"] = { fg = M.base30.sun },
        ["@operator"] = { fg = M.base30.red },
    },

    syntax = {
        Operator = { fg = M.base30.red },
    },
}

return M
