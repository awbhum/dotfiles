-- theme
vim.g.base46_theme = "#::vim-colorscheme::#"
vim.g.base46_theme_toggle = { "#::vim-colorscheme::#", "#::vim-colorscheme-alt::#" }
vim.g.base46_changed_themes = {}

-- whether or not to use a transparent background
vim.g.base46_transparency = true

-- highlight group overrides
vim.g.base46_hl_override = {
    Comment = {
        italic = true,
    },
}

-- highlight group additions
vim.g.base46_hl_add = {
    NvimTreeOpenedFolderName = {
        fg = "green",
        bold = true,
    },
}

-- integrations to use
vim.g.base46_integrations = {
    "alpha",
    "blankline",
    "cmp",
    "defaults",
    "devicons",
    "lsp",
    "mason",
    "nvimtree",
    "syntax",
    "telescope",
    "treesitter",
}

-- bordered or borderless
vim.g.base46_telescope_style = "borderless"

-- completion theme settings
vim.g.base46_cmp_ui = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
}

require("base46").load_all_highlights()
