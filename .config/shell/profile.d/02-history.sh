#!/bin/sh

# history file
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/${SHNAME}_history"

# 4096 entries of command history
export HISTSIZE="4096"
export HISTFILESIZE="4096"
export SAVEHIST="4096"

# history time format
export HISTTIMEFORMAT="(%F %R) "

# ignore space-prepended commands and duplicates
export HISTCONTROL="ignoredups:ignorespace"

# sqlite history file
export SQLITE_HISTORY="${XDG_DATA_HOME:-$HOME/.local/share}/sqlite_history"

# less history file
export LESSHISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/less_history"

# python history file
export PYTHON_HISTORY_FILE="${XDG_DATA_HOME:-$HOME/.local/share}/python_history"
