local autocmd = vim.api.nvim_create_autocmd

local settings = {
    autoread = true,
    autoindent = true,
    background = "dark",
    backspace = "indent,eol,start",
    backup = false,
    clipboard = "unnamedplus",
    compatible = false,
    completeopt = { "menuone", "noselect" },
    cmdheight = 2,
    cursorline = true,
    conceallevel = 0,
    encoding = "UTF-8",
    errorbells = false,
    expandtab = true,
    fileencoding = "UTF-8",
    fileformat = "unix",
    go = "a",
    incsearch = true,
    hidden = true,
    history = 1024,
    hlsearch = true,
    laststatus = 0,
    lazyredraw = true,
    listchars = "tab:>-,trail:.,extends:>,precedes:<,nbsp:+",
    list = true,
    magic = true,
    mouse = "a",
    number = true,
    numberwidth = 4,
    relativenumber = false,
    pumheight = 10,
    ruler = true,
    scrolloff = 14,
    shell = "/bin/sh",
    shiftround = true,
    shiftwidth = 4,
    showmode = false,
    showtabline = 1,
    sidescrolloff = 4,
    signcolumn = "yes",
    shortmess = "atI",
    smartcase = true,
    smarttab = true,
    softtabstop = 4,
    spelllang = "en_us",
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 200,
    ttimeoutlen = 200,
    undofile = true,
    undolevels = 1024,
    updatetime = 256,
    viminfo = "",
    visualbell = true,
    wildmenu = true,
    wildmode = "longest,list,full",
    wrap = false,
    writebackup = true,
}

-- parse the 'settings' variable as vim options
for k, v in pairs(settings) do
    vim.opt[k] = v
end

-- disable continuation of comments
autocmd("FileType", {
    pattern = "*",
    command = "setlocal formatoptions-=cro",
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