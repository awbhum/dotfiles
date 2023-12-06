#!/bin/sh

# skip this script if gpg is disabled
case "$DISABLE_GNUPG" in
    [yY]|yes|1) return ;;
    *) ;;
esac

# check if gpg already exists
[ -r "${GNUPGHOME:-$HOME/.gnupg}/pubring.kbx" ] || {
    printf "\n\033[1mNo GnuPG keys found. Run \`\033[22mgpg --full-gen-key\033[1m\` or set DISABLE_GNUPG=y to disable this message.\033[22m\n"
}
