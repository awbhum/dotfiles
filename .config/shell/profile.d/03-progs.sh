#!/bin/sh

# editor choice
for i in nano vi vim.tiny vim.basic vim nvim; do
    command -v $i >/dev/null 2>/dev/null && export EDITOR="$i"
done

# use the editor as a visual editor
export VISUAL="$EDITOR"

# pager / manpager
export PAGER="less"
export MANPAGER="less"
