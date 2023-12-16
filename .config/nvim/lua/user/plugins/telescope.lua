local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
        "nvim-lua/plenary.nvim",
        "nvim-lua/popup.nvim",
    },
    cmd = "Telescope",
}

function M.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    local config = require("telescope.config")

    -- misc config
    telescope.setup {
        defaults = {
            color_devicons = true,
            border = true,
            borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            entry_prefix = "  ",
            prompt_prefix = "  ",
            selection_caret = "  ",
            initial_mode = "insert",
            scroll_strategy = "cycle",
            mappings = {
                i = {
                    ["<C-h>"] = "which_key",
                    ["<C-u>"] = false,
                },
                n = {
                    [ "q" ] = actions.close,
                }
            },
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.66,
                    results_width = 0.8,
                },
                vertical = {
                    mirror = false,
                },
                width = 0.75,
                height = 0.8,
                preview_cutoff = 120,
            },
        },
        pickers = {
            -- Default configuration for builtin pickers goes here:
            -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this
            -- builtin picker
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            }
        }
    }

    -- extensions
    telescope.load_extension('fzf')
end

return M
