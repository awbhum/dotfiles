local autocmd = vim.api.nvim_create_autocmd
local highlight = vim.api.nvim_set_hl

--[[
    TelescopeBorder, TelescopeMatching, TelescopeMultiIcon, TelescopeMultiSelection, TelescopeNormal,
    TelescopePreviewBlock, TelescopePreviewBorder, TelescopePreviewCharDev, TelescopePreviewDate,
    TelescopePreviewDirectory, TelescopePreviewExecute, TelescopePreviewGroup, TelescopePreviewHyphen,
    TelescopePreviewLine, TelescopePreviewLink, TelescopePreviewMatch, TelescopePreviewMessage,
    TelescopePreviewMessageFillchar, TelescopePreviewNormal, TelescopePreviewPipe, TelescopePreviewRead,
    TelescopePreviewSize, TelescopePreviewSocket, TelescopePreviewSticky, TelescopePreviewTitle,
    TelescopePreviewUser, TelescopePreviewWrite, TelescopePromptBorder, TelescopePromptCounter,
    TelescopePromptNormal, TelescopePromptPrefix, TelescopePromptTitle, TelescopeResultsBorder,
    TelescopeResultsClass, TelescopeResultsComment, TelescopeResultsConstant, TelescopeResultsDiffAdd,
    TelescopeResultsDiffChange, TelescopeResultsDiffDelete, TelescopeResultsDiffUntracked,
    TelescopeResultsField, TelescopeResultsFunction, TelescopeResultsIndentifier, TelescopeResultsLineNr,
    TelescopeResultsMethod, TelescopeResultsNormal, TelescopeResultsNumber, TelescopeResultsOperator,
    TelescopeResultsSpecialComment, TelescopeResultsStruct, TelescopeResultsTitle, TelescopeResultsVariable,
    TelescopeSelection, TelescopeSelectionCaret, TelescopeTitle

    fg (or foreground): color name or "#RRGGBB", see note.
    bg (or background): color name or "#RRGGBB", see note.
    sp (or special): color name or "#RRGGBB"
    blend: integer between 0 and 100
    bold: boolean
    standout: boolean
    underline: boolean
    undercurl: boolean
    underdouble: boolean
    underdotted: boolean
    underdashed: boolean
    strikethrough: boolean
    italic: boolean
    reverse: boolean
    nocombine: boolean
    link: name of another highlight group to link to, see |:hi-link|.
    default: Don't override existing definition |:hi-default|
    ctermfg: Sets foreground of cterm color |ctermfg|
    ctermbg: Sets background of cterm color |ctermbg|
    cterm: cterm attribute map, like |highlight-args|. If not set, cterm attributes will match those from the attribute map documented above.

    Folded,  FoldColumn,  Substitute
    CursorLineFold,  MsgArea,  MsgSeparator
    MoreMsg,  Pmenu,  PmenuSel,  PmenuSbar
    PmenuThumb,  Question,  QuickFixLine,  SpecialKey,  SpellBad,  SpellCap,  SpellLocal
    SpellRare,  StatusLine,  StatusLineNC,  Title
    WarningMsg,  WildMenu,  Menu,  Scrollbar,  Tooltip
]]--

-- called everywhere necessary
function customize()
    highlight(0, "Normal",              { fg = "##::foreground2::#", ctermfg = 7, bg = "none", ctermbg = "none" })
    highlight(0, "SignColumn",          { fg = "##::foreground3::#", ctermfg = "none" })
    highlight(0, "NormalFloat",         { bg = "##::background4::#", ctermbg = "none" })
    highlight(0, "NvimTreeNormal",      { bg = "##::background3::#", ctermbg = "none" })
    highlight(0, "TelescopeNormal",     { bg = "##::background4::#", ctermbg = "none" })
    highlight(0, "CursorLine",          { bg = "##::background5::#", ctermbg = 0 })
    highlight(0, "CursorLineSign",      { bg = "##::background5::#", ctermbg = 0 })
    highlight(0, "CursorColumn",        { bg = "##::background5::#", ctermbg = 0 })
    highlight(0, "LineNr",              { fg = "##::background11::#", ctermfg = 8 })
    highlight(0, "ModeMsg",             { fg = "##::background11::#", ctermfg = 8 })
    highlight(0, "LineNrAbove",         { fg = "##::background13::#", ctermfg = 8 })
    highlight(0, "LineNrBelow",         { fg = "##::background13::#", ctermfg = 8 })
    highlight(0, "EndOfBuffer",         { fg = "##::background11::#", ctermfg = 8 })
    highlight(0, "NonText",             { fg = "##::background11::#", ctermfg = 8 })
    highlight(0, "Whitespace",          { fg = "##::background11::#", ctermfg = 8 })
    highlight(0, "CursorLineNr",        { fg = "##::foreground2::#", ctermfg = 7, bg = "##::background5::#", ctermbg = 0, bold = true })
    highlight(0, "TabLine",             { fg = "##::foreground2::#", ctermfg = 7, bg = "##::background5::#", ctermbg = "none" })
    highlight(0, "TabLineSel",          { fg = "##::foreground4::#", ctermfg = 15, bg = "##::background8::#", ctermbg = 8 })
    highlight(0, "TabLineFill",         { fg = "##::foreground2::#", ctermfg = 7, bg = "none", ctermbg = "none" })
    highlight(0, "MatchParen",          { fg = "##::foreground4::#", ctermfg = 15, bg = "##::blue2::#", ctermbg = 4 })
    highlight(0, "Search",              { fg = "##::foreground4::#", ctermfg = 15, bg = "##::green3::#", ctermbg = 10 })
    highlight(0, "Comment",             { fg = "##::background13::#", ctermfg = 7, italic = true })
    highlight(0, "ColorColumn",         { bg = "##::background4::#", ctermbg = 0 })
    highlight(0, "Conceal",             { fg = "##::background11::#", ctermfg = 8, bg = "none", ctermbg = "none" })
    highlight(0, "Cursor",              { fg = "none", ctermfg = "none", bg = "none", ctermbg = "none", reverse = true })
    highlight(0, "IncSrarch",           { fg = "none", ctermfg = "none", bg = "none", ctermbg = "none", reverse = true })
    highlight(0, "TermCursor",          { fg = "none", ctermfg = "none", bg = "none", ctermbg = "none", reverse = true })
    highlight(0, "lCursor",             { fg = "none", ctermfg = "none", bg = "none", ctermbg = "none", reverse = true })
    highlight(0, "VertSplit",           { fg = "##::background13::#", ctermfg = 7, bg = "none", ctermbg = "none" })
    highlight(0, "WinSeparator",        { fg = "##::background13::#", ctermfg = 7, bg = "none", ctermbg = "none" })
    highlight(0, "TelescopeBorder",     { fg = "##::background13::#", ctermfg = 7, bg = "none", ctermbg = "none" })
    highlight(0, "Visual",              { fg = "##::foreground4::#", ctermfg = 15, bg = "##::background13::#", ctermbg = 8 })
    highlight(0, "Directory",           { fg = "##::blue2::#", ctermfg = 4 })
    highlight(0, "Error",               { fg = "##::red2::#", ctermfg = 1, bold = true })
    highlight(0, "ErrorMsg",            { fg = "##::red2::#", ctermfg = 1, bold = true })
    highlight(0, "Identifier",          { fg = "##::green3::#", ctermfg = 2, bg = "none", ctermbg = "none" })
end

-- apply modifications every time the default theme is set
autocmd("ColorScheme", {
    callback = function()
        if vim.g.colors_name == "default" then
            customize()
        end
    end,
})
