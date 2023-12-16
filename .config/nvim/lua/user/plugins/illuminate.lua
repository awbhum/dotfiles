local M = {
    "RRethy/vim-illuminate",
    event = "BufRead",
}

function M.config()
    require("illuminate").configure {
        providers = {
            'lsp',
            'treesitter',
            'regex',
        },

        delay = 100,

        under_cursor = true,
        min_count_to_highlight = 1,
        should_enable = function(bufnr) return true end,
        case_insensitive_regex = false,

        filetypes_denylist = {
            "mason",
            "harpoon",
            "DressingInput",
            "NeogitCommitMessage",
            "qf",
            "dirbuf",
            "dirvish",
            "minifiles",
            "fugitive",
            "alpha",
            "NvimTree",
            "lazy",
            "NeogitStatus",
            "Trouble",
            "netrw",
            "lir",
            "DiffviewFiles",
            "Outline",
            "Jaq",
            "spectre_panel",
            "toggleterm",
            "DressingSelect",
            "TelescopePrompt",
        },
    }
end

return M
