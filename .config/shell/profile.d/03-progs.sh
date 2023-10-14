#!/bin/sh

# editor choice
for i in nano vi vim.tiny vim.basic vim nvim; do
    command -v $i >/dev/null 2>/dev/null && export EDITOR="$i"
done

# use the editor as a visual editor
export VISUAL="$EDITOR"

# pager / manpager
for i in more less; do
    command -v $i >/dev/null 2>/dev/null && export PAGER="$i"
done

# render manpages using the normal pager
export MANPAGER="$PAGER"

# video player
for i in mplayer smplayer vlc mpv celluloid; do
    command -v $i >/dev/null 2>/dev/null && export VPLAYER="$i"
done

# open audio files in the video player
export APLAYER="$VPLAYER"
