#!/bin/sh

# login prompt

printf "\n\033[1mWelcome back, \033[34m$(grep "${USER:-${LOGNAME:-${HOME##*/}}}" </etc/passwd | awk -F: '{print $5}')\033[39m!\033[22m\n"
