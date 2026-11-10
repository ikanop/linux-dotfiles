#!/bin/bash
dir="$HOME/Pictures/Screenshots/region"
mkdir -p "$dir"
f="$dir/screenshot_$(date +%d-%m-%Y_%H-%M-%S).png"

grim -g "$(slurp)" "$f" || exit 1
wl-copy <"$f"

action=$(notify-send -i "$f" -t 6000 -A default=Edit -w \
  "Screenshot copied" "Click to edit in Satty")

if [ "$action" = "default" ]; then
  satty -f "$f" -o "$f" \
    --copy-command wl-copy \
    --actions-on-escape "save-to-clipboard,exit"
fi
