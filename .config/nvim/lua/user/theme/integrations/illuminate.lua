local M = {}

function M.set(col16, col30)
    return {
        IlluminatedWordText     = { bold = true, underline = true, reverse = false },
        IlluminatedWordRead     = { bold = true, underline = true, reverse = false },
        IlluminatedWordWrite    = { bold = true, underline = true, reverse = false },
    }
end

return M
