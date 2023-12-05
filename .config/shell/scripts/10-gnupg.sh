#!/bin/sh

# move gnupg dir into ~/.local/share
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"

# move password store ~/.local/share
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"

# gpg terminal
[ -n "$(command -v tty)" ] && export GPG_TTY="$(tty)"

# set the GPG signing key
[ -r "${GNUPGHOME:-$HOME/.local/share/gnupg}/key" ] && {
    IFS="$(head -c4 </dev/urandom)" read -r GPG_SIGNING_KEY <"${GNUPGHOME:-$HOME/.local/share/gnupg}/key"
    export GPG_SIGNING_KEY="$GPG_SIGNING_KEY"
}
