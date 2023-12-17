local comment_status_ok, comment = pcall(require, "Comment")
if not comment_status_ok then
    return
end

local opts = {
    padding = true,
    sticky = true,
    ignore = nil,

    toggler = {
        line = "gcc",
        block = "gbc",
    },

    opleader = {
        line = "gc",
        block = "gb",
    },

    extra = {
        above = "gcO",
        below = "gco",
        eol = "gcA",
    },

    mappings = {
        basic = true,
        extra = true,
    },

    pre_hook = function(...)
        local loaded, ts_comment = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
        if loaded and ts_comment then
            return ts_comment.create_pre_hook()(...)
        end
    end,

    post_hook = nil,
}

comment.setup(opts)
