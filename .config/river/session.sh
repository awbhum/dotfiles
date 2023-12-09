#!/bin/sh

# run way-displays for display configuration
command -v way-displays >/dev/null 2>&1 && setsid -f way-displays &
