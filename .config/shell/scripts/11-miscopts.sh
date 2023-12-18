#!/bin/sh

# use wayland if needed
[ "$XDG_SESSION_TYPE" = "wayland" ] && {
    export MOZ_ENABLE_WAYLAND="1"
}

# rm elinks junk file
command -v rm >/dev/null 2>&1 && rm $HOME/.rnd >/dev/null 2>&1

# rc file locations
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/shell/pythonrc"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export CURL_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/curl"
export GIMP2_DIRECTORY="${XDG_CONFIG_HOME:-$HOME/.config}/gimp"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch/config"
export MOST_INITFILE="${XDG_CONFIG_HOME:-$HOME/.config}/most/mostrc"

# elinks configuration directory
export ELINKS_CONFDIR="${XDG_CONFIG_HOME:-$HOME/.config}/elinks"

# fzf config
export FZF_DEFAULT_OPTS="--color=16 --extended"
export FZF_DEFAULT_COMMAND="find ."

# xinitrc in .config
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"

# move xauthority out of ~, doesn't work with all display managers/desktops
case "$WM_USE" in
    '(placeholder)') export XAUTHORITY="$HOME/.Xauthority" ;;
    *) export XAUTHORITY="${XDG_DATA_HOME:-$HOME/.local/share}/xauthority" ;;
esac

# tmux temp dir
export TMUX_TMPDIR="${XDG_RUNTIME_DIR:-/run/user/${EUID:-${UID:-$(id -u)}}}"

# 'watch' update interval
export WATCH_INTERVAL="0.5"

# other misc. environment variables
export MOZ_USE_XINPUT2="2"
export QT_QPA_PLATFORMTHEME="gtk3"
export _JAVA_AWT_WM_NONREPARENTING=1
