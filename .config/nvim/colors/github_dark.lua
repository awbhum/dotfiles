vim.cmd.syntax("reset")
vim.opt.background = "dark"

Base30 = {
    white = "#d3dbe3",
    darker_black = "#1F2428",
    black = "#24292E", --  nvim bg
    black2 = "#2e3338",
    one_bg = "#33383d",
    one_bg2 = "#383d42", -- StatusBar (filename)
    one_bg3 = "#42474c",
    grey = "#4c5156", -- Line numbers (shouldn't be base01?)
    grey_fg = "#565b60", -- Why this affects comments?
    grey_fg2 = "#60656a",
    light_grey = "#6a6f74",
    red = "#ff7f8d", -- StatusBar (username)
    baby_pink = "#ffa198",
    pink = "#ec6cb9",
    line = "#33383d", -- for lines like vertsplit
    green = "#56d364", -- StatusBar (file percentage)
    vibrant_green = "#85e89d",
    nord_blue = "#58a6ff", -- Mode indicator
    blue = "#79c0ff",
    yellow = "#ffdf5d",
    sun = "#ffea7f",
    purple = "#d2a8ff",
    dark_purple = "#bc8cff",
    teal = "#39c5cf",
    orange = "#ffab70",
    cyan = "#56d4dd",
    statusline_bg = "#2b3035",
    lightbg = "#383d42",
    pmenu_bg = "#58a6ff", -- Command bar suggestions
    folder_bg = "#58a6ff",
}

Base16 = {
    color00 = "#24292E", -- Default bg
    color01 = "#33383d", -- Lighter bg (status bar, line number, folding mks)
    color02 = "#383d42", -- Selection bg
    color03 = "#42474c", -- Comments, invisibles, line hl
    color04 = "#4c5156", -- Dark fg (status bars)
    color05 = "#c9d1d9", -- Default fg (caret, delimiters, Operators)
    color06 = "#d3dbe3", -- Light fg (not often used)
    color07 = "#dde5ed", -- Light bg (not often used)
    color08 = "#B392E9", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    color09 = "#ffab70", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    color0A = "#ffdf5d", -- Classes, Markup Bold, Search Text Background
    color0B = "#a5d6ff", -- Strings, Inherited Class, Markup Code, Diff Inserted
    color0C = "#83caff", -- Support, regex, escape chars
    color0D = "#6AB1F0", -- Function, methods, headings
    color0E = "#ff7f8d", -- Keywords
    color0F = "#85e89d", -- Deprecated, open/close embedded tags
}

PolishHL = {
    treesitter = {
        ["@punctuation.bracket"] = { fg = Base30.orange },
        ["@string"] = { fg = Base30.white },
        ["@field.key"] = { fg = Base30.white },
        ["@constructor"] = { fg = Base30.vibrant_green },
        ["@tag.attribute"] = { link = "@method" },
    },
}
