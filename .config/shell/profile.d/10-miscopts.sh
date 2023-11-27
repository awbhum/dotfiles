#!/bin/sh

# use wayland if needed
[ "$XDG_SESSION_TYPE" = "wayland" ] && {
    export MOZ_ENABLE_WAYLAND="1"
}

# rc file locations
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/shell/pythonrc"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export CURL_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/curl"
export GIMP2_DIRECTORY="${XDG_CONFIG_HOME:-$HOME/.config}/gimp"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch/config"

# xinitrc in .config
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"

# move xauthority out of ~, doesn't work with all display managers/desktops
case "$WM_USE" in
    '(placeholder)') export XAUTHORITY="$HOME/.Xauthority" ;;
    *) export XAUTHORITY="${XDG_DATA_HOME:-$HOME/.local/share}/xauthority" ;;
esac

# move private things into ~/.local/share
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/passwords"

# tmux temp dir
export TMUX_TMPDIR="${XDG_RUNTIME_DIR:-/run/user/${EUID:-${UID:-$(id -u)}}}"

# 'watch' update interval
export WATCH_INTERVAL="0.5"

# gpg terminal
[ -n "$(command -v tty)" ] && export GPG_TTY="$(tty)"

# set the GPG signing key
[ -r "${GNUPGHOME:-$HOME/.local/share/gnupg}/key" ] && {
    IFS="asodasidhuasiduh" read -r GPG_SIGNING_KEY <"${GNUPGHOME:-$HOME/.local/share/gnupg}/key"
    export GPG_SIGNING_KEY="$GPG_SIGNING_KEY"
}

# other misc. environment variables
export MOZ_USE_XINPUT2="1"
export QT_QPA_PLATFORMTHEME="gtk3"
export _JAVA_AWT_WM_NONREPARENTING=1
