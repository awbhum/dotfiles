#!/bin/sh

# standard (but better) console colors
case "$TERM" in
    linux)
        printf "\
\033]P0000000\
\033]P1ce3023\
\033]P22c7032\
\033]P3c68b38\
\033]P42265b9\
\033]P59360a1\
\033]P67daac3\
\033]P7a2a2a2\
\033]P8444444\
\033]P9e43627\
\033]PA40a349\
\033]PBffc068\
\033]PC397cd0\
\033]PDdd91f3\
\033]PE93aee5\
\033]PFffffff\
\033[H\033[2J"
        ;;
esac
