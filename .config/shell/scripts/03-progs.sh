#!/bin/sh

# choose the terminal emulator
for i in xterm urxvt aterm terminator kitty konsole gnome-terminal mate-terminal qterminal lxterminal wezterm roxterm st foot alacritty
    do command -v $i >/dev/null 2>&1 && export TERMINAL="$i"
done

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
export MANPAGER="$PAGER"


# browser
for i in w3m links lynx amfora elinks
    do command -v $i >/dev/null 2>&1 && export BROWSER="xdg-terminal-exec $i"
done
[ -n "$DISPLAY" ] && {
    for i in chromium netsurf midori dillo eolie falkon firefox konqueror badwolf librewolf icecat
        do command -v $i >/dev/null 2>&1 && export BROWSER="$i"
    done
}


# video player/image viewer
for i in timg mpv
    do command -v $i >/dev/null 2>&1 && {
        export VPLAYER="xdg-terminal-exec $i"
    }
done
[ -n "$DISPLAY" ] && {
    for i in rage-player ffplay mplayer smplayer qmplay2 vlc celluloid mpv
        do command -v $i >/dev/null 2>&1 && export VPLAYER="$i"
    done
}


# image viewer
for i in catimg timg fbida mpv fbpdf fbv tiv viu
    do export IMGVIEWER="xdg-terminal-exec $i"
done
[ -n "$DISPLAY" ] && {
    for i in deepin-image-viewer aloadimage gthumb feh ahoviewer eom geeqie gpicview mirage lximage-qt viewnior phototonic swayimg gwenview nomacs qview qimgv feh celluloid mpv qiv vimiv pqiv imv sxiv nsxiv
        do export IMGVIEWER="$i"
    done
}


# pdf reader
for i in lesspdf fbv fbpdf
    do command -v $i >/dev/null 2>&1 && export READER="xdg-terminal-exec $i"
done
[ -n "$DISPLAY" ] && {
    for i in gv sioyek atril xreader qpdfview lumina-pdf xpdf epdfview katarakt mupdf apvlv zathura
        do command -v $i >/dev/null 2>&1 && export READER="$i"
    done
}


# terminal file manager preferred
[ -n "$DISPLAY" ] && {
    for i in nautilus caja rox xfe pcmanfm thunar nemo krusader dolphin qtfm
        do command -v $i >/dev/null 2>&1 && export FILEMGR="$i"
    done
}
for i in fff shfm ranger cfm clifm mc vifm lfm nnn lf
    do command -v $i >/dev/null 2>&1 && export FILEMGR="xdg-terminal-exec $i"
done
