-- plugin spec
require "user.spec"

-- user config
require "user.options"
require "user.keymaps"
require "user.autocmds"

-- plugin configuration
spec "user.plugin.devicons"
spec "user.plugin.telescope"
spec "user.plugin.theme-everforest"

-- plugin manager (lazy.nvim)
require "user.lazy"

-- color scheme
require "user.theme"
