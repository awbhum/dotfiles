#!/bin/sh

# editor choice
for i in nano micro vi nvi vim.tiny vim.basic vim nvim
    do command -v $i >/dev/null 2>&1 && export EDITOR="$i"
done

# use the editor as a visual editor
export VISUAL="$EDITOR"

# pager / manpager
for i in more less
    do command -v $i >/dev/null 2>&1 && export PAGER="$i"
done

# render manpages using the normal pager
export MANPAGER="$PAGER"

# browser
for i in w3m links lynx amfora elinks
    do command -v $i >/dev/null 2>&1 && export BROWSER="$i"
done

# graphical browser?
[ -n "$DISPLAY" ] && {
    for i in chromium netsurf midori dillo eolie falkon firefox konqueror badwolf librewolf icecat
        do command -v $i >/dev/null 2>&1 && export BROWSER="$i"
    done
}

# video player
for i in mplayer smplayer vlc celluloid mpv
    do command -v $i >/dev/null 2>&1 && export VPLAYER="$i"
done

# open files using open-file
for i in xdg-open open-file
    do command -v $i >/dev/null 2>&1 && export OPENER="$i"
done

# choose the terminal emulator
for i in xterm urxvt aterm terminator kitty konsole gnome-terminal mate-terminal qterminal lxterminal wezterm roxterm alacritty st foot
    do command -v $i >/dev/null 2>&1 && export TERMINAL="$i"
done
