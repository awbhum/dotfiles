local M = {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    event = "VeryLazy",
}

function M.config()
    -- language servers for lua, awk, bash, c, c++, css, go, html, json, latex, luau, perl, python, rust, sql, toml, typescript, javascript, v, vimscript, yaml
    local servers = {
        "lua_ls",
        "awk_ls",
        "bashls",
        "clangd",
        "cssls",
        "html",
        "jsonls",
        "ltex",
        "luau_lsp",
        "perlnavigator",
        "pylsp",
        "rust_analyzer",
        "sqlls",
        "taplo",
        "tsserver",
        "v_analyzer",
        "vls",
        "vimls",
        "yamlls",
    }

    local settings = {
        ui = {
            border = "none",
            icons = {
                package_installed = "◍",
                package_pending = "◍",
                package_uninstalled = "◍",
            },
        },
        log_level = vim.log.levels.INFO,
        max_concurrent_installers = 4,
    }

    require("mason").setup(settings)

    require("mason-lspconfig").setup({
        ensure_installed = servers,
        automatic_installation = true,
    })

    local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
    if not lspconfig_status_ok then
        return
    end

    local opts = {}

    for _, server in pairs(servers) do
        opts = {
            on_attach = require("user.plugins.lsp.handlers").on_attach,
            capabilities = require("user.plugins.lsp.handlers").capabilities,
        }

        server = vim.split(server, "@")[1]

        local require_ok, conf_opts = pcall(require, "user.plugins.lsp.settings." .. server)
        if require_ok then
            opts = vim.tbl_deep_extend("force", conf_opts, opts)
        end

        lspconfig[server].setup(opts)
    end
end

return M
