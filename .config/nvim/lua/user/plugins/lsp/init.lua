return {
    -- run :Mason to see available servers
    "williamboman/mason.nvim",
    build = ":MasonUpdate",

    -- configuration for breadcrumbs stuff
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "nvimtools/none-ls.nvim",
        { "neovim/nvim-lspconfig",
            dependencies = {
                { "SmiteshP/nvim-navbuddy",
                    dependencies = {
                        { "SmiteshP/nvim-navic",
                            config = function()
                                require "user.plugins.lsp.navic"
                            end,
                        },
                        "MunifTanjim/nui.nvim",
                        { "LunarVim/breadcrumbs.nvim",
                            config = function()
                                require "user.plugins.lsp.breadcrumbs"
                            end,
                        },
                    },
                    opts = { lsp = { auto_attach = true } },
                    config = function()
                        require "user.plugins.lsp.navbuddy"
                    end,
                },
            },
        },
    },

    -- load lsp on buffer reads, writes, and file creations
    event = {
        "BufRead",
        "BufNewFile",
        "BufWrite",
    },

    -- load lsp when mason is opened
    cmd = {
        "Mason",
        "MasonInstall",
        "MasonUninstall",
        "MasonUninstallAll",
        "MasonLog",
        "MasonUpdate",
    },

    -- lsp configuration
    config = function()
        require "user.plugins.lsp.mason"
        require("user.plugins.lsp.handlers").setup()
        require "user.plugins.lsp.null-ls"
    end,
}
