#!/bin/sh

printf "\n"

# run the deploy script if required
[ -r "${XDG_DATA_HOME:-$HOME/.local/share}/dots/.configured.txt" ] || {
    command -v deploy-dots >/dev/null 2>&1 && deploy-dots
}
