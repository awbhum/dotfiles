local scope_status_ok, scope = pcall(require, "scope")
if not scope_status_ok then
    return
end

local opts = {
    hooks = {
        pre_tab_enter = function()
        end,
        post_tab_enter = function()
        end,
        pre_tab_leave = function()
        end,
        post_tab_leave = function()
        end,
        pre_tab_close = function()
        end,
        post_tab_close = function()
        end,
    },
}

scope.setup(opts)
