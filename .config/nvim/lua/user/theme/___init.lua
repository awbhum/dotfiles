-- integrations to use
ThemeIntegrations = {

}

-- set the colorscheme
vim.cmd([[
    try
        silent! colorscheme #::vim-colorscheme::#
    catch /^Vim\%((\a\+)\)\=:E185/
        silent! colorscheme fallback
    endtry
]])
