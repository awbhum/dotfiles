local netrw_status_ok, netrw = pcall(require, "netrw")
if not netrw_status_ok then
    return
end

local opts = {
    icons = {
        symlink = " ",
        directory = " ",
        file = " ",
    },
    use_devicons = true,
    mappings = {},
}

netrw.setup(opts)
