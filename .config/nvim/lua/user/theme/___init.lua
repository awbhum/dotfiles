-- set the colorscheme
vim.cmd([[
    try
        silent! colorscheme #::vim-colorscheme::#
    catch
        silent! colorscheme fallback
    endtry
]])
