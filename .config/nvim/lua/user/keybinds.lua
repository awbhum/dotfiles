-- keybindings

-- normal_mode = 'n',
-- insert_mode = 'i',
-- visual_mode = 'v',
-- visual_block_mode = 'x',
-- term_mode = 't',
-- command_mode = 'c',

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local bind = vim.api.nvim_set_keymap

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

-- misc. leader keymaps
bind("n", "<leader>q", ":qa!<LF>", opts)
bind("n", "<leader>w", ":wa!<LF>:qa!<LF>", opts)

-- unmap standard keys if they are annoying
bind("i", "kj", "<ESC><C-l>", opts)
bind("i", "kj", "<ESC><C-l>", opts)
--bind("v", "kj", "<ESC><C-l>", opts)
--bind("x", "kj", "<ESC><C-l>", opts)

-- force the user to use these alternatives
bind("i", "<ESC>", "<C-o>:echo \"Press \'k\' and \'j\' in quick succession to exit insert mode.\"<LF>", opts)
--bind("v", "<ESC>", ":<C-u>echo \"Press \'k\' and \'j\' in quick succession to exit visual mode.\"<LF>gv", opts)
--bind("x", "<ESC>", ":<C-u>echo \"Press \'k\' and \'j\' in quick succession to exit visual-block mode.\"<LF>gv", opts)
