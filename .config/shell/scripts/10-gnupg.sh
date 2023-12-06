#!/bin/sh

# move gnupg dir into ~/.local/share
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"

# move password store ~/.local/share
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"

# gpg terminal
command -v tty >/dev/null 2>&1 && export GPG_TTY="$(tty)"

# create the gnupg home dir
[ -d "${GNUPGHOME:-${XDG_DATA_HOME:-$HOME/.local/share}/gnupg}" ] || mkdir -pv "${GNUPGHOME:-${XDG_DATA_HOME:-$HOME/.local/share}/gnupg}"

# change permissions for gnupg home if necessary
command -v stat chmod >/dev/null 2>&1 && {
    case "$(stat -c '%a' ${GNUPGHOME:-${XDG_DATA_HOME:-$HOME/.local/share}/gnupg})" in
        *00) ;;
        *) chmod -v 700 ${GNUPGHOME:-${XDG_DATA_HOME:-$HOME/.local/share}/gnupg} ;;
    esac
}

# set the GPG signing key
[ -r "${GNUPGHOME:-$HOME/.local/share/gnupg}/key" ] && {
    command -v head >/dev/null 2>&1 && {
        IFS="$(head -c4 </dev/urandom)" read -r GPG_SIGNING_KEY <"${GNUPGHOME:-$HOME/.local/share/gnupg}/key"
        export GPG_SIGNING_KEY="$GPG_SIGNING_KEY"
    }
}
