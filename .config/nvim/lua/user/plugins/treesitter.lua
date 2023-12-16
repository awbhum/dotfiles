local M = {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
}

function M.config()
    require("nvim-treesitter.configs").setup {
        ensure_installed = {
            "arduino",
            "awk",
            "bash",
            "bibtex",
            "c",
            "commonlisp",
            "cpp",
            "css",
            "diff",
            "dockerfile",
            "fish",
            "git_config",
            "go",
            "hare",
            "haskell",
            "html",
            "ini",
            "java",
            "javascript",
            "json",
            "latex",
            "llvm",
            "lua",
            "luau",
            "make",
            "meson",
            "nix",
            "passwd",
            "perl",
            "php",
            "python",
            "regex",
            "ruby",
            "rust",
            "scss",
            "sql",
            "toml",
            "typescript",
            "v",
            "vim",
            "yaml",
            "zig",
        },
        sync_install = false,
        auto_install = true,

        highlight = {
            enable = true,
            disable = function(lang, buf)
                local max_filesize = 256 * 1024 -- 256 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
            additional_vim_regex_highlighting = false,
        },
    }
end

return M
