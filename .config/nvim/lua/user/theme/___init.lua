local M = {}

-- set the colorscheme
function M.init()
    vim.cmd([[
        try
            silent! colorscheme #::vim-colorscheme::#
        catch
            silent! colorscheme fallback
        endtry
    ]])
end

return M
