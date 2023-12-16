local M = {
    "LunarVim/breadcrumbs.nvim",
    dependencies = {
        "SmiteshP/nvim-navic",
    },
    event = "VeryLazy",
}

function M.config()
    require("breadcrumbs").setup()
end

return M
