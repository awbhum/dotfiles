local M = {}

function M.set(col16, col30)
    return {
        SagaBorder = { bg = col30.darker_black, },
        SagaNormal = { bg = col30.darker_black, },
    }
end

return M
