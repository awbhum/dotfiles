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
        }
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
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'

    if bootstrapped then
        packer.sync()
    end
end)
