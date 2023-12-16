-- plugin spec
require "user.spec"

-- user config
require "user.options"
require "user.keymaps"
require "user.autocmds"
require "user.themedefault"

-- plugin configuration
spec "user.plugins.autopairs"
spec "user.plugins.nvimtree"
spec "user.plugins.devicons"
spec "user.plugins.telescope"
spec "user.plugins.everforest"
spec "user.plugins.nord"
spec "user.plugins.alpha"
spec "user.plugins.lualine"
spec "user.plugins.comment"
spec "user.plugins.project"
spec "user.plugins.indentline"
spec "user.plugins.illuminate"
spec "user.plugins.toggleterm"
require "user.plugins.lsp"
spec "user.plugins.navic"
spec "user.plugins.breadcrumbs"
spec "user.plugins.treesitter"
spec "user.plugins.luasnip"
spec "user.plugins.cmp"

-- plugin manager (lazy.nvim)
require "user.lazy"

-- set the color scheme specified in theme.conf, or the default
require "user.theme"
