local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- install packer.nvim if we don't have it
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print("Installing wbthomason/packer.nvim for plugin management... ")
    bootstrapped = vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installation finished. Please reopen neovim and run the command \':PackerSync\'.")
end

-- attempt to require packer
-- if this fails, return without loading plugins
local ok, packer = pcall(require, "packer")
if not ok then
    return
end

-- configuration for packer
packer.init {
    snapshot_path = vim.fn.stdpath('cache') .. '/packer.nvim',
    package_root = vim.fn.stdpath('data') .. '/site/pack',
    compile_path = vim.fn.stdpath('data') .. '/site/pack/packer/packer_compiled.lua',
    display = {
        keybindings = {
            toggle_info = '<LF>',
        },
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
    log = {
        -- can be trace, debug, info, warn, error, or fatal
        level = 'warn'
    },
    profile = {
        enable = true,
        -- plugins which load faster than the threshold will be excluded from the profile log
        -- integer (in miliseconds)
        threshold = 1,
    },
}

-- load plugins + packer
return packer.startup(function(use)
    -- misc
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'

    -- completion
    use "hrsh7th/nvim-cmp" -- the completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use 'nvim-telescope/telescope-media-files.nvim'

    if bootstrapped then
        packer.sync()
    end
end)
