-- nvim 0.7 or later required

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

local autocmd = vim.api.nvim_create_autocmd
local hl = vim.api.nvim_set_hl
local cmd = vim.cmd
local bind = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- general settings

local settings = {
    autoread = true,
    autoindent = true,
    background = "dark",
    backspace = "indent,eol,start",
    backup = false,
    clipboard = "unnamed",
    compatible = false,
    completeopt = { "menuone", "noselect" },
    cursorline = true,
    encoding = "UTF-8",
    errorbells = false,
    expandtab = true,
    fileencoding = "UTF-8",
    fileformat = "unix",
    go = "a",
    incsearch = true,
    hidden = true,
    history = 1024,
    hlsearch = true,
    laststatus = 0,
    lazyredraw = true,
    listchars = "tab:>-,trail:.,extends:>,precedes:<,nbsp:+",
    list = true,
    magic = true,
    mouse = "a",
    number = true,
    relativenumber = false,
    pumheight = 10,
    ruler = true,
    scrolloff = 2048,
    shell = "/bin/sh",
    shiftround = true,
    shiftwidth = 4,
    showmode = false,
    showtabline = 1,
    sidescrolloff = 4,
    -- signcolumn = "yes",
    shortmess = "atI",
    smartcase = true,
    smarttab = true,
    softtabstop = 4,
    spelllang = "en_us",
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 200,
    ttimeoutlen = 200,
    undolevels = 192,
    updatetime = 192,
    viminfo = "",
    visualbell = true,
    wildmenu = true,
    wildmode = "longest,list,full",
    wrap = false,
    writebackup = true,
}

-- parse the 'settings' variable as vim options
for k, v in pairs(settings) do
    vim.opt[k] = v
end

-- disable continuation of comments
autocmd("FileType", {
    pattern = "*",
    command = "setlocal formatoptions-=cro",
})

-- remove trailing whitespaces from the end of lines
--autocmd("BufWritePre", {
--    pattern = "*",
--    command = ":%s/\\s\\+$//e",
--})

-- when Xresources is modified, update it
autocmd("BufWritePost", {
    pattern = { "*Xresources", "*Xdefaults", "*xresources", "*xdefaults", },
    command = "silent! !xrdb %",
})

-- keybindings

-- normal_mode = 'n',
-- insert_mode = 'i',
-- visual_mode = 'v',
-- visual_block_mode = 'x',
-- term_mode = 't',
-- command_mode = 'c',

-- leader is mapped to space
bind("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- don't overwrite the yank buffer when pasting over selected text
bind("v", "p", '"_dp', opts)

-- don't overwrite the yank buffer when substituting text
bind("n", "c", '"_dc', opts)

-- don't overwrite the yank buffer when deleting text
bind("", "x", '"_x', opts)
bind("", "X", '"_X', opts)
bind("", "<Del>", '"_x', opts)

-- better split management
bind("", "<S-Up>", ":resize +2<LF>", opts)
bind("", "<S-Down>", ":resize -2<LF>", opts)
bind("", "<S-Right>", ":vertical resize +2<LF>", opts)
bind("", "<S-Left>", ":vertical resize -2<LF>", opts)

-- navigate buffers/tabs
bind("", "<tab>", ":bnext<LF>", opts)
bind("", "<M-tab>", ":bprevious<LF>", opts)
bind("", "<S-l>", ":tabnext<LF>", opts)
bind("", "<S-h>", ":tabprevious<LF>", opts)

-- easier moving on wrapped lines
bind("", "j", "gj", opts)
bind("", "k", "gk", opts)

-- arrow keys use this behavior
bind("", "<Down>", "gj", opts)
bind("", "<Up>", "gk", opts)

-- use this behavior in insert mode
bind("i", "<Down>", "<C-o>gj", opts)
bind("i", "<Up>", "<C-o>gk", opts)

-- re-select vmode text after indent
bind("v", "<", "<gv", opts)
bind("v", ">", ">gv", opts)

-- move text up and down in visual / vblock
bind("v", "J", ":move '>+1<LF>gv-gv", opts)
bind("v", "K", ":move '<-2<LF>gv-gv", opts)
bind("x", "J", ":move '>+1<LF>gv-gv", opts)
bind("x", "K", ":move '<-2<LF>gv-gv", opts)

-- better multiline insert
bind("v", "i", "<S-i>", opts)
bind("v", "<S-i>", "^<S-i>", opts)
bind("v", "a", "<S-a>", opts)
bind("v", "<S-a>", "$<S-a>", opts)

bind("x", "i", "<S-i>", opts)
bind("x", "<S-i>", "^<S-i>", opts)
bind("x", "a", "<S-a>", opts)
bind("x", "<S-a>", "$<S-a>", opts)

-- redraw screen, just like in bash
bind("n", "<C-l>", ":nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<LF><LF><C-l>", opts)

-- file manager keybinds
bind("n", "<leader>n", ":Lexplore 17<LF>", opts)
bind("n", "<C-n>", ":Lexplore 17<LF>", opts)

-- misc. leader keymaps
bind("n", "<leader>q", ":qa!<LF>", opts)
bind("n", "<leader>w", ":wa!<LF>:qa!<LF>", opts)

-- unmap standard keys if they are annoying
bind("i", "kj", "<ESC><C-l>", opts)
bind("i", "kj", "<ESC><C-l>", opts)
--bind("v", "kj", "<ESC><C-l>", opts)
--bind("x", "kj", "<ESC><C-l>", opts)

-- force the user to use these alternatives
--bind("i", "<ESC>", "<C-o>:echo \"Press \'k\' and \'j\' in quick succession to exit insert mode.\"<LF>", opts)
--bind("v", "<ESC>", ":<C-u>echo \"Press \'k\' and \'j\' in quick succession to exit visual mode.\"<LF>gv", opts)
--bind("x", "<ESC>", ":<C-u>echo \"Press \'k\' and \'j\' in quick succession to exit visual-block mode.\"<LF>gv", opts)
