#!/bin/sh

# command dependencies
command -v lsblk wc grep awk seq >/dev/null 2>&1 || return 1

# bar size
barlen="$((COLUMNS/5))"

# mountpoints
mountpoints="$(lsblk -no MOUNTPOINT)"

# find disk names from mountpoints
for m in $mountpoints; do
    disks="${disks:+$disks }$(lsblk -no MOUNTPOINT,PATH | grep "^$m " | awk '{print $2}')"
done

# find the longest disk name, set it as the indentation for printf
for d in $disks; do
    # get percentage of fs usage
    perc="$(lsblk -no FSUSE% $d)"
    perc="${perc%%%}"
    perc="${perc##* }"

    # find the longest disk name
    [ "$(printf "$d" | wc -c)" -gt ${disknamelen:-0} ] && disknamelen="$(printf "$d" | wc -c)"

    # find the longest percentage string
    [ "$(printf "$perc" | wc -c)" -gt ${diskperclen:-0} ] && diskperclen="$(printf "$perc" | wc -c)"
done

printf "\n\033[1mMounted devices:\033[22m\n"

# loop over each disk
for d in $disks; do
    # get percentage of fs usage
    perc="$(lsblk -no FSUSE% $d)"
    perc="${perc%%%}"
    perc="${perc##* }"

    # get fs size
    fssize="$(lsblk -no FSSIZE $d)"
    fssize="${fssize##* }"
    fssize="${fssize%% *}"

    # get the amount used
    fsused="$(lsblk -no FSUSED $d)"
    fsused="${fsused##* }"
    fsused="${fsused%% *}"

    # amount of bar cells to allocate to the used section
    barusage="$(((perc*barlen)/100))"

    # print at least one 'used' cell
    [ "$barusage" -le 1 ] && {
        [ "$perc" -gt 0 ] && barusage="1"
    }

    # determine the used cell color
    [ "$perc" -gt 0 ] && usedcol="\033[32m"
    [ "$perc" -gt 66 ] && usedcol="\033[33m"
    [ "$perc" -gt 89 ] && usedcol="\033[31m"

    # beginning label
    printf "%${disknamelen}s: \033[1m%${diskperclen}s%% [$usedcol" "$d" "$perc"

    # print colored (used) cells
    for i in $(seq 1 $barusage); do
        printf "="
    done

    # change the color to the unused dim color
    printf "\033[22;39m\033[2m"

    # increment barusage
    barusage="$((barusage+1))"

    # print dimmed (unused) cells
    for i in $(seq $barusage $barlen); do
        printf "="
    done

    # newline
    printf "\033[22m\033[1;39m] ${usedcol}${fsused}\033[39m of \033[22m\033[2m${fssize}\033[22;39m\033[1m ($(lsblk -no MOUNTPOINT $d))\033[22m\n"
done

unset perc barusage usedcol disknamelen diskperclen barlen mountpoints disks fssize fsused
