-- everforest theme config
local ok, everforest = pcall(require, "everforest")
if ok then
    require("everforest").setup({
        background = "hard",
        transparent_background_level = 0,       -- 0-2: how much of the UI should support transparency
        italics = true,
        disable_italic_comments = false,
        sign_column_background = "none",
        ui_contrast = "low",                    -- low or high
        dim_inactive_windows = false,           -- true/false, might look weird
        diagnostic_virtual_text = "coloured",   -- `"grey"` or `"coloured"` (default)
        diagnostic_text_highlight = false,      -- whether to inverse/hl the background of diagnostic text
        diagnostic_line_highlight = false,      -- whether to inverse/hl diagnostic lines
        spell_foreground = false,               -- whether to colour the foreground of |spell|
        show_eob = true,                        -- whether to show the EndOfBuffer highlight.
        float_style = "bright",                 -- whether floating windows should have a 'dim' or 'bright' dark mode background
    })
end

-- colorscheme to use
vim.cmd([[colorscheme #::vim-colorscheme::#]])
