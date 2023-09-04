#!/bin/sh

# script to run the 'first-time setup' script if not moved to the silent location

# check whether the first-run script has been copied
[ -r "${XDG_DATA_HOME:-$HOME/.local/share}/.system_configured.txt" ] || {
    [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/shell/first" ] && {
          ${XDG_CONFIG_HOME:-$HOME/.config}/shell/first
    }
}
