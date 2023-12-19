local scope_status_ok, scope = pcall(require, "scope")
if not scope_status_ok then
    return
end

local opts = {
    hooks = {
        pre_tab_enter = function()
            return
        end,
        post_tab_enter = function()
            return
        end,
        pre_tab_leave = function()
            return
        end,
        post_tab_leave = function()
            return
        end,
        pre_tab_close = function()
            return
        end,
        post_tab_close = function()
            return
        end,
    },
}

scope.setup(opts)
