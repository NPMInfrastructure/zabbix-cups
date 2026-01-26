#!/bin/bash
printer_status=$(lpstat -p "$1" | cut -f3,4 -d ' ')
case $printer_status in
    "disabled since") return 1;;
    *) return 0;;
esac