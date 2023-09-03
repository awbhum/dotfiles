#!/bin/sh

# function to check for a non-empty hostname variable and export it
sethostname() {
    export HOSTNAME
    [ -n "$HOSTNAME" ] && return 0
}

# check if the hostname variable is already set
sethostname

# set the hostname based on the contents of the hostname file
[ -n /etc/hostname ] && {
    read HOSTNAME </etc/hostname
    sethostname
}

# use uname if possible
[ -n "$(command -v uname)" ] && {
    HOSTNAME="$(uname -n)"
    sethostname
}

# get rid of the sethostname function
unset sethostname
