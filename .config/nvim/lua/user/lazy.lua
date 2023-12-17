local install_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- install lazy.nvim if we don't have it
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print("Installing folke/lazy.nvim (plugin manager)... ")
    bootstrapped = vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim",
        install_path,
    })
    print("lazy.nvim successfully installed!")
end

-- add lazy.nvim to the runtime path
vim.opt.rtp:prepend(install_path)

local plugins = {
    { "awbhum/base46",
        event = "VimEnter",
        config = function()
            require "user.plugins.base46"
        end,
    },

    { "goolord/alpha-nvim",
        dependencies = {
            "ahmedkhalf/project.nvim",
        },
        event = "VimEnter",
        config = function()
            require "user.plugins.alpha"
        end,
    },

    { "windwp/nvim-autopairs",
        event = {
            "BufRead",
            "BufNewFile",
        },
        config = function()
            require "user.plugins.autopairs"
        end,
    },

    { "LunarVim/breadcrumbs.nvim",
        dependencies = {
            "SmiteshP/nvim-navic",
        }, event = {
            "BufRead",
            "BufNewFile",
        },
        config = function()
            require "user.plugins.breadcrumbs"
        end,
    },

    { "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-emoji",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        }, event = "InsertEnter",
        config = function()
            require "user.plugins.cmp"
        end,
    },

    { "numToStr/Comment.nvim",
        event = {
            "BufRead",
            "BufNewFile"
        },
        config = function()
            require "user.plugins.comment"
        end,
    },

    "nvim-tree/nvim-web-devicons",

    { "RRethy/vim-illuminate",
        event = {
            "BufRead",
            "BufNewFile",
        },
        config = function()
            require "user.plugins.illuminate"
        end,
    },

    { "lukas-reineke/indent-blankline.nvim",
        event = {
            "BufRead",
            "BufNewFile",
        },
        main = "ibl",
        config = function()
            require "user.plugins.indentline"
        end,
    },

    { "nvim-lualine/lualine.nvim",
        event = {
            "BufRead",
            "BufNewFile",
        },
        config = function()
            require "user.plugins.lualine"
        end,
    },

    --{
    --    "williamboman/mason.nvim",
    --    dependencies = {
    --        "williamboman/mason-lspconfig.nvim",
    --        "neovim/nvim-lspconfig",
    --        "nvimtools/none-ls.nvim",
    --    },
    --    --cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog", "MasonUpdate" },
    --    event = {
    --        "BufRead",
    --        "BufNewFile",
    --    },
    --    build = ":MasonUpdate",
    --    config = function()
    --        require "user.plugins.lsp"
    --    end,
    --},

    { "SmiteshP/nvim-navic",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            require "user.plugins.navic"
        end,
    },

    --{ "neanias/everforest-nvim",
    --    event = "VimEnter",
    --    config = function()
    --        require "user.plugins.everforest"
    --    end,
    --},

    --{ "shaunsingh/nord.nvim",
    --    event = "VimEnter",
    --    config = function()
    --        require "user.plugins.nord"
    --    end,
    --},

    { "nvim-tree/nvim-tree.lua",
        cmd = "NvimTreeToggle",
        config = function()
            require "user.plugins.nvimtree"
        end,
    },

    { "nvim-telescope/telescope.nvim",
        dependencies = {
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
        },
        cmd = "Telescope",
        config = function()
            require "user.plugins.telescope"
        end,
    },

    { "akinsho/toggleterm.nvim",
        cmd = "ToggleTerm",
        config = function()
            require "user.plugins.toggleterm"
        end,
    },

    { "nvim-treesitter/nvim-treesitter",
        event = {
            "BufRead",
            "BufNewFile",
        },
        build = ":TSUpdate",
        config = function()
            require "user.plugins.treesitter"
        end,
    },
}

local opts = {
    -- plugin install dir
    root = vim.fn.stdpath("data") .. "/lazy",
    lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json", -- lockfile generated after running update.

    defaults = {
        lazy = true,
        version = "*",
        cond = nil, --- @type boolean|fun(self:LazyPlugin):boolean|nil
    },

    -- leave nil when passing the spec as the first argument to setup()
    --spec = LAZY_PLUGIN_SPEC, ---@type LazySpec

    git = {
        log = { "-8" },
        timeout = 120,
        url_format = "https://github.com/%s.git",
        filter = true, -- set to false to ease  git >=2.19.0 dependency
    },

    install = {
        missing = true,
        colorscheme = { "default" },
    },

    ui = {
        size = { width = 0.8, height = 0.8 },
        wrap = true,
        border = "rounded",
        title_pos = "center", ---@type "center" | "left" | "right"
        pills = true, ---@type boolean
        icons = {
            cmd = " ",
            config = "",
            event = "",
            ft = " ",
            init = " ",
            import = " ",
            keys = " ",
            lazy = "󰒲 ",
            loaded = "●",
            not_loaded = "○",
            plugin = " ",
            runtime = " ",
            require = "󰢱 ",
            source = " ",
            start = "",
            task = "✔ ",
            list = {
                "●",
                "➜",
                "★",
                "‒",
            },
        },
        throttle = 20, -- how frequently should the ui process render events
    },

    diff = {
        -- diff command <d> can be one of:
        -- * browser: opens the github compare view. Note that this is always mapped to <K> as well,
        --   so you can have a different command for diff <d>
        -- * git: will run git diff and open a buffer with filetype git
        -- * terminal_git: will open a pseudo terminal with git diff
        -- * diffview.nvim: will open Diffview to show the diff
        cmd = "git",
    },

    checker = {
        -- automatically check for plugin updates
        enabled = false,
        concurrency = nil, ---@type number? set to 1 to check for updates very slowly
        notify = true, -- get a notification when new updates are found
        frequency = 3600, -- check for updates every hour
        check_pinned = false, -- check for pinned packages that can't be updated
    },

    change_detection = {
        -- automatically check for config file changes and reload the ui
        enabled = false,
        notify = false, -- get a notification when changes are found
    },

    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true, -- reset the package path to improve startup time
        rtp = {
            reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
            ---@type string[]
            paths = {}, -- add any custom paths here that you want to includes in the rtp
            ---@type string[] list any plugins you want to disable here
            disabled_plugins = {
                "2html_plugin",
                "tohtml",
                "getscript",
                "getscriptPlugin",
                "logipat",
                "netrw",
                "netrw_gitignore",
                "netrwPlugin",
                "netrwSettings",
                "netrwFileHandlers",
                "matchit",
                "tar",
                "tarPlugin",
                "man",
                "rrhelper",
                "spellfile_plugin",
                "vimball",
                "vimballPlugin",
                "zip",
                "zipPlugin",
                "tutor",
                "rplugin",
                "syntax",
                "synmenu",
                "optwin",
                "compiler",
                "bugreport",
                "ftplugin",
            },
        },
    },

    -- lazy can generate helptags from the headings in markdown readme files,
    -- so :help works even for plugins that don't have vim docs.
    -- when the readme opens with :help it will be correctly displayed as markdown
    readme = {
        enabled = true,
        root = vim.fn.stdpath("state") .. "/lazy/readme",
        files = { "README.md", "lua/**/README.md" },
        skip_if_doc_exists = true,
    },

    state = vim.fn.stdpath("state") .. "/lazy/state.json", -- state info for checker and other things

    build = {
        warn_on_override = true,
    },

    profiling = {
        -- Enables extra stats on the debug tab related to the loader cache.
        -- Additionally gathers stats about all package.loaders
        loader = false,
        -- Track each new require in the Lazy profiling tab
        require = false,
    },
}

-- try to require lazy.nvim
local ok, lazy = pcall(require, "lazy")
if not ok then
    return
end

lazy.setup(plugins, opts)
