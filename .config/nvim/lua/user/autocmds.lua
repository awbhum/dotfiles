local autocmd = vim.api.nvim_create_autocmd
local bind = vim.api.nvim_set_keymap
local buf_opts = { silent = true, noremap = true, buffer = true }

-- disable continuation of comments
autocmd("FileType", {
    pattern = "*",
    command = "setlocal formatoptions-=cro",
})

-- close these windows with 'q'
autocmd({ "FileType" }, {
    pattern = {
        "netrw",
        "Jaq",
        "qf",
        "git",
        "help",
        "man",
        "lspinfo",
        "spectre_panel",
        "lir",
        "DressingSelect",
        "tsplayground",
        "",
    },
    callback = function()
        bind("n", "q", ":close<LF>", buf_opts)
        vim.opt.buflisted = false
    end,
})

-- close cmd windows (they're useless)
autocmd({ "CmdWinEnter" }, {
    callback = function()
        vim.cmd("quit")
    end,
})

-- highlight delay
autocmd({ "TextYankPost" }, {
    callback = function()
        vim.highlight.on_yank { higroup = "Visual", timeout = 40 }
    end,
})

-- keys that can wrap to the next line
autocmd("FileType", {
    pattern = "*",
    command = "set whichwrap+=<,>,[,],h,l",
})

-- is keyword
autocmd("FileType", {
    pattern = "*",
    command = "set iskeyword+=-",
})

-- splits stay equal
autocmd({ "VimResized" }, {
    callback = function()
        vim.cmd "tabdo wincmd ="
    end,
})

-- remove trailing whitespaces from the end of lines
--autocmd("BufWritePre", {
--    pattern = "*",
--    command = ":%s/\\s\\+$//e",
--})

-- when Xresources is modified, update it
autocmd("BufWritePost", {
    pattern = { "*Xresources", "*Xdefaults", "*xresources", "*xdefaults", },
    command = "silent! !xrdb %",
})
