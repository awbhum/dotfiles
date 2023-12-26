-- user options/globals
require "user.options"

-- vim/plugin keybinds
require "user.keymaps"

-- autocmds for different events
require "user.autocmds"

-- theme config
require "user.theme"

-- use variable colorscheme
vim.cmd("silent! colorscheme #::vim-colorscheme::#")

-- lazy.nvim package manager
require "user.lazy"
