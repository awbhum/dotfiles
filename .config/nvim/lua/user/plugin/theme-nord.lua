local M = {
    "shaunsingh/nord.nvim",
    lazy = true,
}

function M.config()
    vim.g.nord_borders = true
    vim.g.nord_contrast = true
    vim.g.nord_disable_background = true
    vim.g.nord_italic = true
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = true
end

return M
