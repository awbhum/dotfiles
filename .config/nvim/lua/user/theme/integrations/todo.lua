local M = {}

function M.set(col16, col30)
    return {
        TodoBgFix       = { fg = col30.black2, bg = col30.red, bold = true },
        TodoBgHack      = { fg = col30.black2, bg = col30.orange, bold = true },
        TodoBgNote      = { fg = col30.black2, bg = col30.white, bold = true },
        TodoBgPerf      = { fg = col30.black2, bg = col30.purple, bold = true },
        TodoBgTest      = { fg = col30.black2, bg = col30.purple, bold = true },
        TodoBgTodo      = { fg = col30.black2, bg = col30.yellow, bold = true },
        TodoBgWarn      = { fg = col30.orange, bold = true },
        TodoFgFix       = { fg = col30.red },
        TodoFgHack      = { fg = col30.orange },
        TodoFgNote      = { fg = col30.white },
        TodoFgPerf      = { fg = col30.purple },
        TodoFgTest      = { fg = col30.purple },
        TodoFgTodo      = { fg = col30.yellow },
        TodoFgWarn      = { fg = col30.orange },
        TodoSignFix     = { link = "TodoFgFix" },
        TodoSignHack    = { link = "TodoFgHack" },
        TodoSignNote    = { link = "TodoFgNote" },
        TodoSignPerf    = { link = "TodoFgPerf" },
        TodoSignTest    = { link = "TodoFgTest" },
        TodoSignTodo    = { link = "TodoFgTodo" },
        TodoSignWarn    = { link = "TodoFgWarn" },
    }
end

return M
