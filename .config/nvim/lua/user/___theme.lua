-- default color scheme modifications

--[[
    ColorColumn,  Conceal,  Cursor,  lCursor,  CursorIM,  CursorColumn,  CursorLine,  Directory
    DiffAdd,  DiffChange,  DiffDelete,  DiffText,  EndOfBuffer,  TermCursor,  TermCursorNC,  ErrorMsg
    WinSeparator,  Folded,  FoldColumn,  SignColumn,  IncSearch,  Substitute,  LineNr,  LineNrAbove
    LineNrBelow,  CursorLineNr,  CursorLineSign,  CursorLineFold,  MatchParen,  ModeMsg,  MsgArea,  MsgSeparator
    MoreMsg,  NonText,  Normal,  NormalFloat,  NormalNC,  Pmenu,  PmenuSel,  PmenuSbar
    PmenuThumb,  Question,  QuickFixLine,  Search,  SpecialKey,  SpellBad,  SpellCap,  SpellLocal
    SpellRare,  StatusLine,  StatusLineNC,  TabLine,  TabLineFill,  TabLineSel,  Title,  Visual
    VisualNOS,  WarningMsg,  Whitespace,  WildMenu,  Menu,  Scrollbar,  Tooltip, VertSplit
]]--

-- everforest theme config
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
        ui_contrast = "high",                    -- low or high
        dim_inactive_windows = false,           -- true/false, might look weird
        diagnostic_virtual_text = "coloured",   -- `"grey"` or `"coloured"` (default)
        diagnostic_text_highlight = false,      -- whether to inverse/hl the background of diagnostic text
        diagnostic_line_highlight = false,      -- whether to inverse/hl diagnostic lines
        spell_foreground = false,               -- whether to colour the foreground of |spell|
        show_eob = true,                        -- whether to show the EndOfBuffer highlight.
        float_style = "bright",                 -- whether floating windows should have a 'dim' or 'bright' dark mode background
    })
end

-- nord theme config
local ok, nord = pcall(require, "nord")
if ok then
    vim.g.nord_borders = true
    vim.g.nord_contrast = true
    vim.g.nord_disable_background = true
    vim.g.nord_italic = true
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = true
    nord.set()
end

-- set the color scheme specified in theme.conf
vim.cmd([[colorscheme #::vim-colorscheme::#]])

-- the basic color scheme made by `generate-theme` shall only be used
-- if no custom color scheme is used
if not (vim.g.colors_name == 'default') then
    return
end
