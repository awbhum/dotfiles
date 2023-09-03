#!/bin/sh

# options for groff
export GROFF_BIN_PATH="$PATH"
export GROFF_ENCODING="UTF-8"
export GROFF_TMPDIR="${XDG_CACHE_HOME:-$HOME/.cache}/groff"
export GROFF_NO_SGR="1"
