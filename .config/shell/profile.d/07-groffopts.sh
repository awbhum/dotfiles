#!/bin/sh

# options for groff
export GROFF_BIN_PATH="$PATH"
export GROFF_ENCODING="UTF-8"
export GROFF_TMPDIR="${XDG_RUNTIME_DIR:-/run/user/${EUID:-${UID:-$(id -u)}}}"
export GROFF_NO_SGR="1"
