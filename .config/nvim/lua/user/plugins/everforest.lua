--local M = {
--    "neanias/everforest-nvim",
--    event = "VimEnter",
--}
--
--function M.config()
    local ok, everforest = pcall(require, "everforest")
    if ok then
        everforest.setup({
            on_highlights = function (hl, palette)
                hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
                hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
                hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
                hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
            end,
            background = "hard",
            transparent_background_level = 0,       -- 0-2: how much of the UI should support transparency
            italics = false,
            disable_italic_comments = false,
            sign_column_background = "none",
            ui_contrast = "high",                   -- low or high
            dim_inactive_windows = false,           -- true/false, might look weird
            diagnostic_virtual_text = "coloured",   -- `"grey"` or `"coloured"` (default)
            diagnostic_text_highlight = false,      -- whether to inverse/hl the background of diagnostic text
            diagnostic_line_highlight = false,      -- whether to inverse/hl diagnostic lines
            spell_foreground = false,               -- whether to colour the foreground of |spell|
            show_eob = true,                        -- whether to show the EndOfBuffer highlight.
            float_style = "bright",                 -- whether floating windows should have a 'dim' or 'bright' dark mode background
        })
    end
--end
--
--return M
