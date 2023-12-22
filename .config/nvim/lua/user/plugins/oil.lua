local oil_status_ok, oil = pcall(require, "oil")
if not oil_status_ok then
    return
end

local opts = {
    -- use oil as the default file manager
    default_file_explorer = false,

    -- ID is displayed before, and filename after, these columns
    columns = {
        "icon",
        "permissions",
        --"size",
        --"mtime",
    },

    -- buffer-local options to use for oil buffers
    buf_options = {
        buflisted = false,
        bufhidden = "hide",
    },

    -- window-local options to use for oil buffers
    win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 0,
        concealcursor = "nvic",
    },

    -- send deleted files to the trash instead of permanently deleting them (:help oil-trash)
    delete_to_trash = false,

    -- skip the confirmation popup for simple operations
    skip_confirm_for_simple_edits = true,

    -- selecting a new/moved/renamed file or directory will prompt you to save changes first
    prompt_save_on_select_new_entry = true,

    -- oil will automatically delete hidden buffers after this delay
    cleanup_delay_ms = 2000,

    -- keymaps in oil buffer. can be any value that `vim.keymap.set` accepts or a table of keymap
    -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
    -- additionally, if it is a string that matches "actions.<name>", it will use the mapping at require("oil.actions").<name>
    keymaps = {
        ["g?"]          = false,
        ["<C-s>"]       = false,
        ["<C-h>"]       = false,
        ["<C-p>"]       = false,
        ["g\\"]         = false,
        ["<LF>"]        = "actions.select",
        ["e"]           = "actions.select_tab",
        ["-"]           = "actions.close",
        ["q"]           = "actions.close",
        ["<C-l>"]       = "actions.refresh",
        [".."]          = "actions.parent",
        ["<Backspace>"] = "actions.parent",
        ["_"]           = "actions.open_cwd",
        ["`"]           = "actions.cd",
        ["~"]           = "actions.tcd",
        ["zs"]          = "actions.change_sort",
        ["o"]           = "actions.open_external",
        ["zh"]          = "actions.toggle_hidden",
    },

    -- set to false to disable all of the above keymaps
    use_default_keymaps = true,

    view_options = {
        -- show files and directories that start with "."
        show_hidden = true,

        -- this function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,

        -- this function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, bufnr)
            return false
        end,

        sort = {
            -- sort order can be "asc" or "desc"
            -- see :help oil-columns to see which columns are sortable
            { "type", "asc" },
            { "name", "asc" },
        },
    },

    -- configuration for the floating window in oil.open_float
    float = {
        padding = 2,
        max_width = 0,
        max_height = 0,
        border = "rounded",

        win_options = {
            winblend = 0,
        },

        -- this is the config that will be passed to nvim_open_win. change values here to customize the layout
        override = function(conf)
            return conf
        end,
    },

    -- configuration for the actions floating preview window
    preview = {
        -- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
        max_width = 0.9,

        -- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
        min_width = { 40, 0.4 },

        -- optionally define an integer/float for the exact width of the preview window
        width = nil,

        -- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
        max_height = 0.9,

        -- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
        min_height = { 5, 0.1 },

        -- optionally define an integer/float for the exact height of the preview window
        height = nil,

        border = "rounded",

        win_options = {
            winblend = 0,
        },

        -- Whether the preview window is automatically updated when the cursor is moved
        update_on_cursor_moved = true,
    },

    -- Configuration for the floating progress window
    progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        minimized_border = "none",
        win_options = {
            winblend = 0,
        },
    },
}

oil.setup(opts)
