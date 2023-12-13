-- keymap vars
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local bind = vim.api.nvim_set_keymap

-- try to load telescope
local ok, telescope = pcall(require, "telescope")
if not ok then
    return
end

-- telescope loaded, also load its submodules
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local config = require("telescope.config")

-- keybinds
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help Tags"})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = "Find Symbols"})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Find Old Files"})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = "Find Word under Cursor"})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = "Search Git Commits"})
vim.keymap.set('n', '<leader>gb', builtin.git_bcommits, { desc = "Search Git Commits for Buffer"})

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
