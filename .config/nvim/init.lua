-- version 0.7 or later required

-- list of vim ui elements:

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

-- load packer
require('user/options')
require('user/keybinds')
require('user/plugins')

-- nord theme settings
vim.g.nord_borders = true
vim.g.nord_contrast = true
vim.g.nord_disable_background = true
vim.g.nord_italic = true
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true

-- apply the settings
require('nord').set()

-- completion
require('user/cmp')
require('user/telescope')
require('user/treesitter')
