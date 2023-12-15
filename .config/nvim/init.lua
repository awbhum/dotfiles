-- plugin spec
require "user.spec"

-- user config
require "user.options"
require "user.keymaps"
require "user.autocmds"
require "user.themedefault"

-- plugin configuration
spec "user.plugins.devicons"
spec "user.plugins.telescope"
spec "user.plugins.everforest"
spec "user.plugins.nord"

-- plugin manager (lazy.nvim)
require "user.lazy"

-- set the color scheme specified in theme.conf, or the default
require "user.theme"
