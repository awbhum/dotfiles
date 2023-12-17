-- language servers for lua, awk, bash, c, c++, css, go, html, json, latex, luau, perl, python, rust, sql, toml, typescript, javascript, v, vimscript, yaml

spec "user.plugins.lsp.mason"
require("user.plugins.lsp.handlers").setup()
spec "user.plugins.lsp.null-ls"
