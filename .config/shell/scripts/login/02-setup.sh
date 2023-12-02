#!/bin/sh

# run setup scripts if needed
[ -d "${XDG_CONFIG_HOME:-$HOME/.config}/shell/scripts/deploy.sh" ] && {
    [ -r "${XDG_DATA_HOME:-$HOME/.local/share}/dots/.configured.txt" ] || {
        . ${XDG_CONFIG_HOME:-$HOME/.config}/shell/scripts/deploy.sh
    }
}
