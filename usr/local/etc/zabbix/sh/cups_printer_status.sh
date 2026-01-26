#!/bin/bash
printer_status=$(lpstat -p "$1" | cut -f3,4 -d ' ')
case $printer_status in
    "disabled since") exit 1;;
    *) exit 0;;
esac