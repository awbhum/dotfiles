#!/bin/sh

# grep
export GREP_COLOR="01;31"
export GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"

# ls (both BSD- and GNU-style)
export LSCOLORS="ExGxFxDxCxDxFxCxCxacaD"
export LS_COLORS="di=1;34:fi=0:ln=1;36:pi=1;33:so=1;35:bd=1;33:cd=1;33:or=1;31:mi=1;31:ex=1;32"

# tree copies ls colors
export TREE_COLORS="$LS_COLORS"
