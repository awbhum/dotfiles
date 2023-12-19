local M = {}

function M.set(col16, col30)
    local defaults = {
        Normal              = { fg = col16.color05, bg = col16.color00, },
        NormalFloat         = { bg = col30.darker_black },

        Cursor              = { fg = col16.color00, bg = col16.color05, },
        CursorColumn        = { bg = col16.color01, sp = "none", },
        SignColumn          = { fg = col16.color03, sp = "NONE", },
        ColorColumn         = { bg = col30.black2, },

        LineNr              = { fg = col30.grey },
        CursorLine          = { bg = col30.black2, },
        CursorLineSign      = { bg = col30.black2, },
        CursorLineNr        = { fg = col30.white, bg = col30.black2 },

        UnderLined          = { underline = true, },
        Bold                = { bold = true, },
        Italic              = { italic = true, },
        Conceal             = { bg = "NONE", },

        TabLine             = { fg = col16.color05, bg = col30.one_bg, },
        TabLineFill         = { fg = col16.color05, bg = col30.darker_black, },
        TabLineSel          = { fg = col16.color05, bg = col30.black, bold = true, },

        Pmenu               = { bg = col30.one_bg },
        PmenuSbar           = { bg = col30.one_bg },
        PmenuSel            = { bg = col30.pmenu_bg, fg = col30.black },
        PmenuThumb          = { bg = col30.grey },
        WildMenu            = { fg = col16.color08, bg = col16.color0A, },

        MatchWord           = { bg = col30.grey, fg = col30.white, },
        MatchParen          = { link = "MatchWord" },

        Comment             = { fg = col30.grey_fg },
        NonText             = { fg = col16.color03, },

        FloatBorder         = { fg = col30.blue },
        WinSeparator        = { fg = col30.line },

        Error               = { fg = col16.color00, bg = col16.color08, },
        ErrorMsg            = { fg = col16.color08, bg = col16.color00, },
        NvimInternalError   = { fg = col30.red },
        WarningMsg          = { fg = col16.color08, },
        Question            = { fg = col16.color0D, },

        SpellBad            = { undercurl = true, sp = col16.color08, },
        SpellLocal          = { undercurl = true, sp = col16.color0C, },
        SpellCap            = { undercurl = true, sp = col16.color0D, },
        SpellRare           = { undercurl = true, sp = col16.color0E, },

        Debug               = { fg = col16.color08, },
        Exception           = { fg = col16.color08, },

        ModeMsg             = { fg = col16.color0B, },
        MoreMsg             = { fg = col16.color0B, },

        IncSearch           = { fg = col16.color01, bg = col16.color09, },
        Search              = { fg = col16.color01, bg = col16.color0A, },

        Visual              = { bg = col16.color02, },
        VisualNOS           = { fg = col16.color08, },

        DevIconDefault      = { fg = col30.red },
        Directory           = { fg = col16.color0D, },

        FoldColumn          = { fg = col16.color0C, bg = col16.color01, },
        Folded              = { fg = col30.light_grey, bg = col30.black2, },

        Macro               = { fg = col16.color08, },
        Substitute          = { fg = col16.color01, bg = col16.color0A, sp = "none", },
        SpecialKey          = { fg = col16.color03, },
        TooLong             = { fg = col16.color08, },
        Title               = { fg = col16.color0D, sp = "none", },
        QuickFixLine        = { bg = col16.color01, sp = "none", },

        healthSuccess       = { bg = col30.green, fg = col30.black, },

        LazyH1              = { bg = col30.green, fg = col30.black, },
        LazyButton          = { bg = col30.one_bg, fg = require("user.colors").change_hex_lightness(col30.light_grey, vim.o.bg == "dark" and 10 or -20), },
        LazyH2              = { fg = col30.red, bold = true, underline = true, },
        LazyReasonPlugin    = { fg = col30.red },
        LazyValue           = { fg = col30.teal },
        LazyDir             = { fg = col16.color05 },
        LazyUrl             = { fg = col16.color05 },
        LazyCommit          = { fg = col30.green },
        LazyNoCond          = { fg = col30.red },
        LazySpecial         = { fg = col30.blue },
        LazyReasonFt        = { fg = col30.purple },
        LazyOperator        = { fg = col30.white },
        LazyReasonKeys      = { fg = col30.teal },
        LazyTaskOutput      = { fg = col30.white },
        LazyCommitIssue     = { fg = col30.pink },
        LazyReasonEvent     = { fg = col30.yellow },
        LazyReasonStart     = { fg = col30.white },
        LazyReasonRuntime   = { fg = col30.nord_blue },
        LazyReasonCmd       = { fg = col30.sun },
        LazyReasonSource    = { fg = col30.cyan },
        LazyReasonImport    = { fg = col30.white },
        LazyProgressDone    = { fg = col30.green },
    }

    return defaults
end

return M
