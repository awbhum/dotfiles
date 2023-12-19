local M = {}

function M.set(col16, col30)
    vim.g.terminal_color_0  = col16.color01
    vim.g.terminal_color_1  = col16.color08
    vim.g.terminal_color_2  = col16.color0B
    vim.g.terminal_color_3  = col16.color0A
    vim.g.terminal_color_4  = col16.color0D
    vim.g.terminal_color_5  = col16.color0E
    vim.g.terminal_color_6  = col16.color0C
    vim.g.terminal_color_7  = col16.color05
    vim.g.terminal_color_8  = col16.color03
    vim.g.terminal_color_9  = col16.color08
    vim.g.terminal_color_10 = col16.color0B
    vim.g.terminal_color_11 = col16.color0A
    vim.g.terminal_color_12 = col16.color0D
    vim.g.terminal_color_13 = col16.color0E
    vim.g.terminal_color_14 = col16.color0C
    vim.g.terminal_color_15 = col16.color07
    return {}
end

return M
